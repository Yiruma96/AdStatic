package adstatic.test;

import adstatic.tools.MyTools;
import soot.PackManager;
import soot.Scene;
import soot.SootClass;
import soot.options.Options;

import java.util.Arrays;

public class twoSceneTest {

    public static void main(String[] args) {

        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(60000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }

                String fullFilePath = "E:/jboh.apk";

                Options.v().set_src_prec(Options.src_prec_apk);
                Options.v().set_output_format(Options.output_format_jimple);
                Options.v().set_android_jars("./platforms");
                Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
                Options.v().set_process_dir(Arrays.asList(fullFilePath));
                Options.v().set_allow_phantom_refs(true);

                Scene.v().loadNecessaryClasses();
                PackManager.v().runPacks();

                for (SootClass sc : Scene.v().getApplicationClasses()) {
                    if (MyTools.isNeedAnalysis(sc.toString(), MyTools.getPackageWhiteList())) {
                        System.out.println(sc.toString());
                    }

                }

            }
        }).start();

        new Thread(new Runnable() {
            @Override
            public void run() {
                String fullFilePath = "E:/MIUIThemeCreator1.3.10.apk";

                Options.v().set_src_prec(Options.src_prec_apk);
                Options.v().set_output_format(Options.output_format_jimple);
                Options.v().set_android_jars("./platforms");
                Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
                Options.v().set_process_dir(Arrays.asList(fullFilePath));
                Options.v().set_allow_phantom_refs(true);

                Scene.v().loadNecessaryClasses();
                PackManager.v().runPacks();

//                for (SootClass sc : Scene.v().getApplicationClasses()) {
//                    if (MyTools.isNeedAnalysis(sc.toString(), MyTools.getPackageWhiteList())) {
//                        System.out.println(sc.toString());
//                    }
//                }
            }
        }).start();



    }
}
