package adstatic.test;

import soot.*;
import soot.jimple.InvokeExpr;
import soot.jimple.Stmt;

import java.util.List;

public class frequencyCode {
    public static void main(String[] args) {
        List<SootMethod> sms;
        SootMethod sm;
        Body body;
        Stmt stmt;
        InvokeExpr invokeExpr;
        for (SootClass sootClass : Scene.v().getApplicationClasses()) {
            sms = sootClass.getMethods();

            int i = 0;
            while(i < sms.size()){
                sm = sms.get(i);
                if(sm.hasActiveBody()){
                    body = sm.getActiveBody();
                    for (Unit unit : body.getUnits()) {
                        stmt = (Stmt) unit;


                    }
                }

                i += 1;
            }//method循环
        }




//        vulnRetuHub.add(new APKConfigure().check(Scene.v(), fullFilePath));
//        System.out.println("APKConfigure finish");
//        vulnRetuHub.add(new DynamicLoadingCheck().check(Scene.v(), fullFilePath));
//        System.out.println("DynamicLoadingCheck finish");
//        vulnRetuHub.add(new HTTPSSecurityCheck().check(Scene.v(), fullFilePath));
//        System.out.println("HTTPSSecurityCheck finish");
//        vulnRetuHub.add(new IntentSchemeURLCheck().check(Scene.v(), fullFilePath));
//        System.out.println("IntentSchemeURLCheck finish");
//        vulnRetuHub.add(new JBOHCheck().check(Scene.v(), fullFilePath));
//        System.out.println("JBOHCheck finish");
//        vulnRetuHub.add(new PlainKeyCheck().check(Scene.v(), fullFilePath));
//        System.out.println("PlainKeyCheck finish");
//        vulnRetuHub.add(new SSLErrorHandlerCheck().check(Scene.v(), fullFilePath));
//        System.out.println("SSLErrorHandlerCheck finish");
//        vulnRetuHub.add(new SystemAlertCheck().check(Scene.v(), fullFilePath));
//        System.out.println("SystemAlertCheck finish");
//        vulnRetuHub.add(new WebViewFileCheck().check(Scene.v(), fullFilePath));
//        System.out.println("WebViewFileCheck finish");
//        vulnRetuHub.add(new WebViewSavePasswordCheck().check(Scene.v(), fullFilePath));
//        System.out.println("WebViewSavePasswordCheck finish");
//        vulnRetuHub.add(new WorldModeCheckPlugin().check(Scene.v(), fullFilePath));
//        System.out.println("WorldModeCheckPlugin finish");
    }

}
