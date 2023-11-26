package adstatic.vulnCheckPlugin;

import soot.*;
import soot.jimple.Constant;
import soot.jimple.DefinitionStmt;
import soot.jimple.InvokeExpr;
import soot.jimple.Stmt;
import soot.jimple.infoflow.android.manifest.ProcessManifest;

import adstatic.tools.LocalInfo;
import adstatic.tools.MyTools;
import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;

import java.util.*;

public class SystemAlertCheck implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception{
        //首先从权限中检测
        try {
            ProcessManifest processManifest = new ProcessManifest(fullFilePath);
            if(processManifest.getPermissions().contains("android.permission.SYSTEM_ALERT_WINDOW")){
                vulnRetuList.add(new VulnRetu("检测到存在SYSTEM_ALERT_WINDOW(系统弹窗)权限，该应用可能在应用外弹窗", new StmtInfo("android.permission.SYSTEM_ALERT_WINDOW", null, null)));
                //System.out.println("存在");
            }
        }catch(Exception e){
            System.out.println("基于权限的检测出现异常");
            System.out.println(e);
        }

        try {
            InvokeExpr setTypeExpr;
            Value leftValue;
            Value rightValue;
            List<HashMap<Local, LocalInfo>> localMapList = null;
            boolean tag;
            for (SootClass sc : Scene.v().getApplicationClasses()) {
                if (MyTools.isNeedAnalysis(sc.toString(), packageWhiteSet)) {
                    List<SootMethod> sms = sc.getMethods();
                    int i = 0;
                    while (i < sms.size()) {
                        SootMethod sm = sc.getMethods().get(i);
                        if (sm.hasActiveBody()) {
                            Body body = sm.getActiveBody();
                            for (Unit unit : body.getUnits()) {
                                Stmt stmt = (Stmt) unit;

                                //*****检查语句virtualinvoke $r10.<android.view.Window: void setType(int)>(2005)*****
                                if (stmt.containsInvokeExpr()) {
                                    setTypeExpr = stmt.getInvokeExpr();
                                    tag = false;
                                    //检查函数调用是否为指定类型
                                    if (setTypeExpr.getMethod().getSignature().equals("<android.view.Window: void setType(int)>")) {
                                        tag = true;
                                    }
                                    //检查函数调用的参数是否为2005
                                    if (tag) {
                                        tag = false;
                                        if (setTypeExpr.getArgCount() == 1) {
                                            Value arg = setTypeExpr.getArg(0);
                                            if (arg instanceof Constant) {
                                                if (arg.toString().equals("2005")) {
                                                    tag = true;
                                                }
                                            } else if (arg instanceof Local) {
                                                if (localMapList == null)
                                                    localMapList = MyTools.getLocalMapList(body);
                                                Set<Constant> constantsList = MyTools.localToConstant((Local) arg, localMapList);
                                                for (Constant constant : constantsList) {
                                                    if (constant.toString().equals("\"2005\"") || constant.toString().equals("2005")) {
                                                        tag = true;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    //处理分析结果
                                    if (tag) {
                                        vulnRetuList.add(new VulnRetu("应用可能尝试使用toast实现全局弹窗，此项全局弹窗并不需要权限声明", new StmtInfo(sc.toString(), sm.toString(), stmt.toString())));
//                                        System.out.println("find it");
//                                        System.out.println(stmt);
                                    }
                                }

                                //*****检查语句$r3.<android.view.WindowManager$LayoutParams: int type> = 2005*****
                                if (stmt instanceof DefinitionStmt) {
                                    leftValue = ((DefinitionStmt) stmt).getLeftOp();
                                    rightValue = ((DefinitionStmt) stmt).getRightOp();

                                    tag = false;
                                    //检查左操作数的$r3类型是否为指定类型
                                    if (leftValue.getUseBoxes().size() == 1) {
                                        Value value = leftValue.getUseBoxes().get(0).getValue();
                                        if (value instanceof Local) {
                                            if (((Local) value).getType().toString().equals("android.view.WindowManager$LayoutParams")) {
                                                tag = true;
                                            }
                                        }
                                    }
                                    //检查指定类型后面有没有field，有的话其类型为何
                                    if (tag) {
                                        tag = false;
                                        if (stmt.containsFieldRef()) {
                                            if (stmt.getFieldRef().getField().toString().equals("<android.view.WindowManager$LayoutParams: int type>")) {
                                                tag = true;
                                            }
                                        }
                                    }
                                    //检查右操作数是否为2005
                                    if(tag) {
                                        tag = false;
                                        if (rightValue instanceof Constant) {
                                            if (((Constant) rightValue).toString().equals("2005")) {
                                                tag = true;
                                            }
                                        } else if (rightValue instanceof Local) {
                                            if (localMapList == null)
                                                localMapList = MyTools.getLocalMapList(body);
                                            Set<Constant> constantsList = MyTools.localToConstant((Local) rightValue, localMapList);
                                            for (Constant constant : constantsList) {
                                                if (constant.toString().equals("\"2005\"") || constant.toString().equals("2005")) {
                                                    tag = true;
                                                }
                                            }
                                        }
                                    }
                                    //分析结果
                                    if (tag) {
                                        vulnRetuList.add(new VulnRetu("应用可能尝试使用toast实现全局弹窗，此项全局弹窗并不需要权限声明", new StmtInfo(sc.toString(), sm.toString(), stmt.toString())));
//                                        System.out.println("find it");
//                                        System.out.println(stmt);
                                    }
                                }
                            }
                        } // method hasActiveBody 结束
                        //保证一个函数内，流程分析只调用一次
                        localMapList = null;
                        i += 1;
                    } // sootmethod循环
                }
            }
        }catch(Exception e){
            e.printStackTrace();
            System.out.println("基于语义的检测出现异常");
            System.out.println(e);
        }

        //尝试对Layout布局文件进行检测，目前还没有实现


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
