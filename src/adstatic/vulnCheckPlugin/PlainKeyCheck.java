package adstatic.vulnCheckPlugin;

import soot.*;
import soot.jimple.Constant;
import soot.jimple.InvokeExpr;
import soot.jimple.Stmt;

import adstatic.tools.LocalInfo;
import adstatic.tools.MyTools;
import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class PlainKeyCheck implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception {

        List<SootMethod> sms;
        SootMethod sm;
        Body body;
        Stmt stmt;
        InvokeExpr invokeExpr;
        Value arg;
        List<HashMap<Local, LocalInfo>> localMapList = null;
        for (SootClass sootClass : Scene.v().getApplicationClasses()) {

            if (!MyTools.isNeedAnalysis(sootClass.toString(), packageWhiteSet)) {
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
                            if(invokeExpr.getMethod().getSignature().equals("<javax.crypto.spec.SecretKeySpec: void <init>(byte[],int,int,java.lang.String)>")){
                                //开始对参数进行常量追溯
                                arg = invokeExpr.getArg(0);
                                if(arg instanceof Local){
                                    if(localMapList == null){
                                        localMapList = MyTools.getLocalMapList(body);
                                    }
                                    StringBuilder stringBuilder = new StringBuilder();
                                    for(Constant constant : MyTools.localToConstant((Local) arg, localMapList)){
                                        stringBuilder.append(constant.toString());
                                        stringBuilder.append(" | ");
                                        //System.out.println(constant);
                                    }
                                    if(!stringBuilder.toString().equals(""))
                                        vulnRetuList.add(new VulnRetu("应用程序加解密时密钥使用硬编码，攻击者通过反编译拿到密钥即可解密APP通信数据", new StmtInfo(sootClass.toString(), sm.toString(), stmt.toString()+"|"+stringBuilder.toString())));
                                }

                            }

                            if(invokeExpr.getMethod().getSignature().equals("<javax.crypto.spec.SecretKeySpec: void <init>(byte[],java.lang.String)>")){
                                arg = invokeExpr.getArg(0);
                                if(arg instanceof Local){
                                    if(localMapList == null){
                                        localMapList = MyTools.getLocalMapList(body);
                                    }
                                    StringBuilder stringBuilder = new StringBuilder();
                                    for(Constant constant : MyTools.localToConstant((Local) arg, localMapList)){
                                        stringBuilder.append(constant.toString());
                                        stringBuilder.append(" | ");
                                        //System.out.println(constant);
                                    }
                                    if(!stringBuilder.toString().equals(""))
                                        vulnRetuList.add(new VulnRetu("应用程序加解密时密钥使用硬编码，攻击者通过反编译拿到密钥即可解密APP通信数据", new StmtInfo(sootClass.toString(), sm.toString(), stmt.toString()+"|"+stringBuilder.toString())));
                                }

                            }
                        }

                    }
                }

                localMapList = null;
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
