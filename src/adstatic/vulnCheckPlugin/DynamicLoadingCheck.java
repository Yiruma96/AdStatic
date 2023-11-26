package adstatic.vulnCheckPlugin;

import adstatic.tools.MyTools;
import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;
import soot.*;
import soot.jimple.Stmt;

import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class DynamicLoadingCheck implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception{

        boolean hasforName = false;
        boolean hasloadClass = false;
        boolean hasgetMethod = false;
        boolean hasinvoke = false;
        //LinkedList<StmtInfo> stmtInfos = new LinkedList<StmtInfo>();
        SootMethod method;
        SootMethod sm;
        Body body;
        List<SootMethod> sms;
        Stmt stmt;
        for (SootClass sc : Scene.v().getApplicationClasses()) {
            if (!MyTools.isNeedAnalysis(sc.toString(), packageWhiteSet)) {
                continue;
            }

            sms = sc.getMethods();

            int i = 0;
            while(i < sms.size()){
                LinkedList<StmtInfo> stmtInfos = new LinkedList<StmtInfo>();
                sm = sc.getMethods().get(i);

                if(sm.hasActiveBody()) {
                    body = sm.getActiveBody();
                    for (Unit unit : body.getUnits()) {
                        stmt = (Stmt) unit;
                        if (stmt.containsInvokeExpr()) {
                            method = stmt.getInvokeExpr().getMethod();
                            if (method.getSignature().equals("<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>")) {
                                stmtInfos.add(new StmtInfo(sc.toString(), sm.toString(), stmt.toString()));
                                hasgetMethod = true;
                            }
                            if (method.getSignature().equals("<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>")) {
                                stmtInfos.add(new StmtInfo(sc.toString(), sm.toString(), stmt.toString()));
                                hasinvoke = true;
                            }
                            if (method.getSignature().equals("<java.lang.Class: java.lang.Class forName(java.lang.String)>")) {
                                stmtInfos.add(new StmtInfo(sc.toString(), sm.toString(), stmt.toString()));
                                hasforName = true;
                            }
                            if (method.getSignature().equals("<java.lang.ClassLoader: java.lang.Class loadClass(java.lang.String)>")) {
                                stmtInfos.add(new StmtInfo(sc.toString(), sm.toString(), stmt.toString()));
                                hasloadClass = true;
                            }
                        }
                    }
                }
                i += 1;
                //每个函数内，作为一个整体进行统计
                if(stmtInfos.size() != 0){
                    vulnRetuList.add(new VulnRetu("检测到应用存在代码动态加载的行为，应用可能隐藏有未检查到的恶意功能 | 另一方面，被动态加载的文件如果存放在明文目录，或是在加载中没有做完整性校验，则可能会被恶意代码注入并执行", stmtInfos));
                }
            } //method结束
        } //sootClass结束

//        System.out.println(hasforName);
//        System.out.println(hasgetMethod);
//        System.out.println(hasinvoke);
//        System.out.println(hasloadClass);

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
