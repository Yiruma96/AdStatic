package adstatic.vulnCheckPlugin;

import adstatic.tools.MyTools;
import soot.*;
import soot.jimple.InvokeExpr;
import soot.jimple.Stmt;

import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class SSLErrorHandlerCheck implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public SSLErrorHandlerCheck(){
        vulnRetuList = new LinkedList<VulnRetu>();
    }

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception {

        List<SootMethod> sms;
        SootMethod sm;
        Body body;
        Stmt stmt;
        InvokeExpr invokeExpr;
        for (SootClass sootClass : Scene.v().getApplicationClasses()) {

            if(!MyTools.isNeedAnalysis(sootClass.toString(), packageWhiteSet)){
                continue;
            }

            //System.out.println(sootClass);
            sms = sootClass.getMethods();

            int i = 0;
            while(i < sms.size()){
                sm = sms.get(i);
                if(sm.hasActiveBody()){
                    body = sm.getActiveBody();
//                    System.out.println(sm.toString());
//                    System.out.println(body);
//                    System.out.println();
//                    System.out.println();
                    for(Unit unit : body.getUnits()) {
                        stmt = (Stmt) unit;

                        if(stmt.containsInvokeExpr()){
                            invokeExpr = stmt.getInvokeExpr();
                            if(invokeExpr.getMethod().getSignature().equals("<android.webkit.WebView: void setWebViewClient(android.webkit.WebViewClient)>")){

                                //从setWebViewClient的参数中获得传入的WebViewClient类
                                SootClass webViewClient = Scene.v().getSootClass(invokeExpr.getArg(0).getType().toString());
                                for (SootMethod webViewClientMethod : webViewClient.getMethods()) {
                                    //从类中定位到里面的onReceivedSslError方法
                                    if(webViewClientMethod.getSubSignature().equals("void onReceivedSslError(android.webkit.WebView,android.webkit.SslErrorHandler,android.net.http.SslError)")){

                                        //在实现的方法中定位到handler.proceed(;语句
                                        if(webViewClientMethod.hasActiveBody()){
                                            for (Unit _unit : webViewClientMethod.getActiveBody().getUnits()) {
                                                Stmt _stmt = (Stmt) _unit;
                                                if(_stmt.containsInvokeExpr()){
                                                    if(_stmt.getInvokeExpr().getMethod().getSignature().equals("<android.webkit.SslErrorHandler: void proceed()>")){
                                                        vulnRetuList.add(new VulnRetu("WebView忽略SSL证书错误检测，可能导致中间人攻击的威胁，可能导致隐私泄露", new StmtInfo(sootClass.toString(), sm.toString(), _stmt.toString())));
                                                        //System.out.println("find");
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                i += 1;
            }//method循环
        }

        //定位方法<android.webkit.WebView: void setWebViewClient(android.webkit.WebViewClient)>

        //定位所使用的Local，其类型应该是？？？，应该是检测是否是WebViewClient的接口

        //定位此实现中的方法body

        //检测是否存在handler.proceed()语句

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
