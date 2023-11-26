package adstatic.vulnCheckPlugin;

import adstatic.tools.MyTools;
import soot.*;
import soot.jimple.Constant;
import soot.jimple.InvokeExpr;
import soot.jimple.Stmt;

import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class IntentSchemeURLCheck implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception {

        String intentParseUriSig = "<android.content.Intent: android.content.Intent parseUri(java.lang.String,int)>";

        List<SootMethod> sms;
        SootMethod sm;
        Body body;
        Stmt stmt;
        InvokeExpr invokeExpr;
        Value arg;
        for (SootClass sootClass : Scene.v().getApplicationClasses()) {

            if(!MyTools.isNeedAnalysis(sootClass.toString(), packageWhiteSet)){
                continue;
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
                            if(invokeExpr.getMethod().getSignature().equals("<android.content.Intent: android.content.Intent parseUri(java.lang.String,int)>")){
                                arg = invokeExpr.getArg(1);

                                //参数值为4的模式即为Intent.URI_ALLOW_UNSAFE，可能存在Intent协议解析越权漏洞
                                if(arg instanceof Constant){
                                    if(arg.toString().equals("4")){
                                        vulnRetuList.add(new VulnRetu("参数设置为URI_ALLOW_UNSAFE，存在Intent协议解析越权漏洞，Intent Scheme URLs攻击通过浏览器或浏览器组件发送的Intent消息，绕过Android的权限控制，非法调用到APP的私有接口，进而可能导致远程拒绝服务（闪退）或隐私信息泄漏;", new StmtInfo(sootClass.toString(), sm.toString(), stmt.toString())));
                                        //System.out.println("find");
                                    }
                                }
                            }
                        }


                    }
                }

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
