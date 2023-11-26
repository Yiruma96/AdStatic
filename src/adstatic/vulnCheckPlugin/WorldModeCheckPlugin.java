package adstatic.vulnCheckPlugin;

import adstatic.tools.MyTools;
import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;
import soot.*;
import soot.jimple.Constant;
import soot.jimple.InvokeExpr;
import soot.jimple.Stmt;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class WorldModeCheckPlugin implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception {

        List<String> worldModeCheckFunList = new LinkedList<String>();
        worldModeCheckFunList.add("<android.content.ContextWrapper: android.content.SharedPreferences getSharedPreferences(java.lang.String,int)>");
        worldModeCheckFunList.add("<android.content.ContextWrapper: java.io.FileOutputStream openFileOutput(java.lang.String,int)>");

        List<SootMethod> sms;
        SootMethod sm;
        Body body;
        Stmt stmt;
        InvokeExpr invokeExpr;
        Value arg;
        LinkedList<StmtInfo> stmtInfoList = new LinkedList<StmtInfo>();

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
                            //System.out.println(invokeExpr.getMethod().getSignature());
                            if(worldModeCheckFunList.contains(invokeExpr.getMethod().getSignature())){
                                if(invokeExpr.getMethod().getSignature().equals("<android.content.ContextWrapper: android.content.SharedPreferences getSharedPreferences(java.lang.String,int)>")){
                                    arg = invokeExpr.getArg(1);
                                    //对参数值为1,2,3的参数值判定为全局读写模式
                                    if(arg instanceof Constant){
                                        if(arg.toString().equals("1") || arg.toString().equals("2") || arg.toString().equals("3")){
                                            stmtInfoList.add(new StmtInfo(sootClass.toString(), sm.toString(), stmt.toString()));
                                            //System.out.println("find");
                                        }
                                    }
                                }else if(invokeExpr.getMethod().getSignature().equals("<android.content.ContextWrapper: java.io.FileOutputStream openFileOutput(java.lang.String,int)>")){
                                    arg = invokeExpr.getArg(1);
                                    //对参数值为1，2, 3的参数值判定为全局读写模式
                                    if(arg instanceof Constant){
                                        if(arg.toString().equals("1") || arg.toString().equals("2") || arg.toString().equals("3")){
                                            stmtInfoList.add(new StmtInfo(sootClass.toString(), sm.toString(), stmt.toString()));
                                            //System.out.println("find");
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

        if(stmtInfoList.size() != 0){
            vulnRetuList.add(new VulnRetu("文件读写使用全局模式，可能造成隐私数据泄露", stmtInfoList));
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
