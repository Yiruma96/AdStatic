package adstatic.vulnCheckPlugin;

import adstatic.tools.LocalInfo;
import adstatic.tools.MyTools;
import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;
import soot.*;
import soot.jimple.*;
import soot.toolkits.graph.BriefUnitGraph;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class HTTPSSecurityCheck implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception {

        FastHierarchy fastHierarchy = Scene.v().getOrMakeFastHierarchy();
        List<SootMethod> sms;
        SootMethod sm;
        InvokeExpr invokeExpr;
        Body body;
        Stmt stmt;

        //不安全的X509证书校验
        //首先通过FastHierarchy对象找到应用中所有实现了X509TrustManager接口的类
        SootClass x509Class = Scene.v().getSootClass("javax.net.ssl.X509TrustManager");
        //之后寻找类里面的checkServerTrusted()方法，检查是否里面没有实现代码
        for (SootClass x509SubClass : fastHierarchy.getAllImplementersOfInterface(x509Class)) {
            sms = x509SubClass.getMethods();

            int i = 0;
            while(i < sms.size()){
                sm = x509SubClass.getMethods().get(i);
                if(sm.getSubSignature().equals("void checkServerTrusted(java.security.cert.X509Certificate[],java.lang.String)")){
                    if(sm.hasActiveBody()){
                        if(sm.getActiveBody().getUnits().size() == 4){
                            vulnRetuList.add(new VulnRetu("自实现的校验证书的X509TrustManager接口的checkServerTrusted()方法实现为空，未检查服务器是否可信，可能受到中间人劫持攻击", new StmtInfo(x509Class.toString(), sm.toString(), null)));
                            //System.out.println("find");
                        }
                    }
                }
                i += 1;
            }//method循环
        }


        //不安全的证书域名校验
        SootClass hostnameVerifierClass = Scene.v().getSootClass("javax.net.ssl.HostnameVerifier");
        for (SootClass hostnameVerifierSubClass : fastHierarchy.getAllImplementersOfInterface(hostnameVerifierClass)) {
            sms = hostnameVerifierSubClass.getMethods();

            int i = 0;
            while(i < sms.size()){
                sm = sms.get(i);
                //开始检查Verify函数的实现
                if(sm.getSubSignature().equals("boolean verify(java.lang.String,javax.net.ssl.SSLSession)")){
                    if(sm.hasActiveBody()){
//                        System.out.println("**********"+sm.getActiveBody());
                        BriefUnitGraph unitGraph = new BriefUnitGraph(sm.getActiveBody());
                        boolean isEffectiveVerify = false;
                        for (Unit unit : unitGraph.getTails()) {

                            //返回语句有两种可能，return 0 / return 1 / return local
                            //判断标准是，检测return的类型，如果是的话为true， local的话，即设置为true
                            stmt = (Stmt) unit;
                            if(stmt instanceof ReturnStmt){
                                ReturnStmt returnStmt = (ReturnStmt) stmt;
                                if(returnStmt.getOp() instanceof IntConstant){
                                    if(returnStmt.getOp().toString().equals("0")){
                                        isEffectiveVerify = true;
                                    }
                                }else if (returnStmt.getOp() instanceof Local){
                                    isEffectiveVerify = true;
                                }
                            }
                        }

                        if(!isEffectiveVerify){
                            vulnRetuList.add(new VulnRetu("自实现的HostnameVerifier返回值恒为true，非有效校验，可能受到中间人劫持攻击", new StmtInfo(hostnameVerifierSubClass.toString(), sm.toString(), "return 1")));
                        }
                    }

                }

                i += 1;
            }//method循环
        }


        //两个涉及到ssl的包中，host证书上设置的接受任意域名的校验
        Value arg;
        List<HashMap<Local, LocalInfo>> localMapList = null;
        for (SootClass sootClass : Scene.v().getApplicationClasses()) {
            if(!MyTools.isNeedAnalysis(sootClass.toString(), packageWhiteSet)){
                break;
            }

            sms = sootClass.getMethods();

            int i = 0;
            while(i < sms.size()){
                sm = sms.get(i);
                if(sm.hasActiveBody()){
                    body = sm.getActiveBody();
                    for (Unit unit : body.getUnits()) {
                        stmt = (Stmt) unit;

                        if(stmt.containsInvokeExpr()){
                            invokeExpr = stmt.getInvokeExpr();
                            //检查setDefaultHostnameVerifier()的参数
                            if(invokeExpr.getMethod().toString().equals("<javax.net.ssl.HttpsURLConnection: void setDefaultHostnameVerifier(javax.net.ssl.HostnameVerifier)>")){
                                arg = invokeExpr.getArg(0);
                                if(arg instanceof Local){

                                    if(localMapList == null)
                                        localMapList = MyTools.getLocalMapList(body);
                                    //在hashMap中寻找函数参数的定义，检测其是否为指定类型
                                    for (HashMap<Local, LocalInfo> hashMap : localMapList) {
                                        if(hashMap.containsKey(arg)){
                                            if(hashMap.get(arg).rootObject.toString().equals("<org.apache.http.conn.ssl.SSLSocketFactory: org.apache.http.conn.ssl.X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER>")){
                                                vulnRetuList.add(new VulnRetu("证书校验中接受任意域名，可能受到中间人劫持攻击", new StmtInfo(sootClass.toString(), sm.toString(), stmt.toString()), new StmtInfo(sootClass.toString(), sm.toString(), hashMap.get(arg).rootObject.toString())));
                                                //System.out.println("find1");
                                            }
                                        }
                                    }
                                }
                            }
                            //检查setHostnameVerifier()的参数
                            if(invokeExpr.getMethod().toString().equals("<org.apache.http.conn.ssl.SSLSocketFactory: void setHostnameVerifier(org.apache.http.conn.ssl.X509HostnameVerifier)>")){
                                arg = invokeExpr.getArg(0);

                                if(arg instanceof Local){

                                    if(localMapList == null)
                                        localMapList = MyTools.getLocalMapList(body);
                                    //在hashMap中寻找函数参数的定义，检测其是否为指定类型
                                    for (HashMap<Local, LocalInfo> hashMap : localMapList) {
                                        if(hashMap.containsKey(arg)){
                                            if(hashMap.get(arg).rootObject.toString().equals("<org.apache.http.conn.ssl.SSLSocketFactory: org.apache.http.conn.ssl.X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER>")){
                                                vulnRetuList.add(new VulnRetu("证书校验中接受任意域名，可能受到中间人劫持攻击", new StmtInfo(sootClass.toString(), sm.toString(), stmt.toString()), new StmtInfo(sootClass.toString(), sm.toString(), hashMap.get(arg).rootObject.toString())));
                                                //System.out.println("find2");
                                            }
                                        }
                                    }
                                }
                            }
                        }

                    }
                }

                localMapList = null; //保证每个method都未进行过数据流分析
                i += 1;
            }//method循环
        }

        return vulnRetuList;
    }

    public LinkedList<VulnRetu> getResult() {
        return vulnRetuList;
    }

    public void printVulnCheckResult(){
        for (VulnRetu vulnRetu : vulnRetuList) {
            System.out.println(vulnRetu.getDesc());
            System.out.println(vulnRetu.getStmtInfos());
        }
    }
}
