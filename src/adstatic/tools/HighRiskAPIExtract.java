package adstatic.tools;

import soot.Scene;
import soot.SootClass;
import soot.SootMethod;
import soot.Unit;
import soot.jimple.Stmt;

import java.util.HashMap;
import java.util.List;
import java.util.Set;

public class HighRiskAPIExtract {

    public static HashMap<String, Integer> getHighRiskAPI(Scene scene, Set<String> highRiskAPISet, Set<String> packageWhiteSet){

        HashMap<String, Integer> apiCount= new HashMap<String, Integer>();
        for (String api : highRiskAPISet) {
            apiCount.put(api, 0);
        }

        String[] temp;
        String packageName;
        Stmt stmt;
        String methodSignature;
        List<SootMethod> sms;
        for (SootClass sc : Scene.v().getApplicationClasses()) {

            //循环内首先过滤白名单类，不对白名单中的类进行危险API分析
            temp = sc.toString().split("\\.");
            if (temp.length >= 2) {
                packageName = temp[0] + "." + temp[1];
                if (packageWhiteSet.contains(packageName)) {
                    //System.out.println("检测到类名为"+sc.toString()+"停止分析此类");
                    continue;
                }
            }

            sms = sc.getMethods();
            int i = 0;
            while (i < sms.size()) {
                SootMethod sm = sc.getMethods().get(i);
                if (sm.hasActiveBody()) {
                    for (Unit unit : sm.getActiveBody().getUnits()) {
                        stmt = (Stmt) unit;
                        if (stmt.containsInvokeExpr()) {
                            methodSignature = stmt.getInvokeExpr().getMethod().getSignature();
                            if (highRiskAPISet.contains(methodSignature)) {
                                apiCount.put(methodSignature, apiCount.get(methodSignature) + 1);
                                //System.out.println(stmt.getInvokeExpr().getMethod().getSignature());
                            }
                        }
                    }
                }
                i += 1;
            } //method循环结束
        } //sootClass循环结束

        return apiCount;

    }
}
