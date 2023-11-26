package adstatic.test;

import soot.*;
import soot.Pack;
import soot.PackManager;
import soot.Scene;
import soot.jimple.IdentityStmt;
import soot.jimple.Stmt;
import soot.jimple.infoflow.android.axml.AXmlNode;
import soot.jimple.infoflow.android.manifest.ProcessManifest;
import soot.options.Options;

import java.util.Arrays;
import java.util.Set;

public class SootTest4 {

    public static void main(String[] args) throws Exception{
        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList("F:/apk/game.apk"));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

//        String apkPath = "F:/apk/app-release.apk";
//        ProcessManifest processManifest = new ProcessManifest(apkPath);

        //System.out.println(processManifest.getEntryPointClasses());

//        processManifest.getPermissions();
//        System.out.println(processManifest.getAXml());
        //System.out.println(processManifest.getAccessibleComponents());

//        if(processManifest.targetSdkVersion() < 17){
//            System.out.println(processManifest.getExportedComponents());
//            System.out.println(processManifest.getAccessibleComponents());
//            for(String exportedComp : processManifest.getExportedComponents())
//            {
//                if(FragmentInjectionDetector.checkComponent(exportedComp))
//                {
//                    System.out.println(exportedComp + " FragmentInjection exist! (before API 17)");
//                }
//            }
//        }

//        System.out.println("============");
//        System.out.println(Integer.toString(processManifest.targetSdkVersion()));
//        System.out.println("============");
//        for (String string : processManifest.getAccessibleComponents()) {
//            System.out.println(string);
//        }
//        Set<String> components = processManifest.getAccessibleComponents();
//        System.out.println("============");
//        for (AXmlNode aXmlNode: processManifest.getActivities()) {
//            System.out.println(aXmlNode.toString());
//        }
//        System.out.println("============");

        for(SootClass sootClass : Scene.v().getApplicationClasses()) {
            //System.out.println(sootClass.toString());
            for (SootMethod sm : sootClass.getMethods()) {
                //System.out.println(sm.getSignature());
                if(sm.hasActiveBody()){
                    Body body = sm.getActiveBody();
                    for (Unit unit: body.getUnits()) {
                        Stmt stmt = (Stmt) unit;
                        if(stmt instanceof IdentityStmt){
                            System.out.println(stmt);
                        }
                    }
                }
            }
        }

    }
}
