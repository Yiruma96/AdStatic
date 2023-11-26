package adstatic.test;

import soot.*;
import soot.jimple.infoflow.IInfoflow;
import soot.jimple.infoflow.android.SetupApplication;
import soot.jimple.infoflow.handlers.ResultsAvailableHandler;
import soot.jimple.infoflow.ipc.IIPCManager;
import soot.jimple.infoflow.results.InfoflowResults;
import soot.jimple.infoflow.results.ResultSinkInfo;
import soot.jimple.infoflow.results.ResultSourceInfo;
import soot.jimple.infoflow.solver.cfg.IInfoflowCFG;
import soot.jimple.infoflow.solver.cfg.InfoflowCFG;
import soot.jimple.infoflow.taintWrappers.EasyTaintWrapper;
import soot.jimple.infoflow.taintWrappers.ITaintPropagationWrapper;
import soot.jimple.toolkits.callgraph.CallGraph;
import soot.jimple.toolkits.callgraph.ReachableMethods;
import soot.options.Options;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.annotation.adapters.HexBinaryAdapter;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.Security;
import java.util.Arrays;
import java.util.Base64;
import java.util.Collections;
import java.util.Iterator;

public class SootClass8 {


    //一种结果处理类
    private static final class MyResultsAvailableHandler implements ResultsAvailableHandler {
        private final BufferedWriter wr;

        private MyResultsAvailableHandler() {
            this.wr = null;
        }

        private MyResultsAvailableHandler(BufferedWriter wr) {
            this.wr = wr;
        }

        public void onResultsAvailable(
                IInfoflowCFG cfg, InfoflowResults results) {
            // Dump the results
            if (results == null) {
                print("No results found.");
            }
            else {
                // 首先从InfoflowResults里面拿出来MultiMap类型然后遍历列表里面的数据
                for (ResultSinkInfo sink : results.getResults().keySet()) {
                    //遍历层次里首先输出sink点的信息，直接输出sink，用了toString方法
                    print("Found a flow to sink " + sink + ", from the following sources:");


                    //之后遍历输出sink点对应的source列表，，使用MultiMap.getResults().get(键)获得MiltiMap类型里键值后面对应的列表
                    for (ResultSourceInfo source : results.getResults().get(sink)) {
                        print("\t- " + source.getSource() + " (in "
                                + cfg.getMethodOf(source.getSource()).getSignature()  + ")");
                    }
                }

            }

        }

        private void print(String string) {
            try {
                System.out.println(string);
                if (wr != null)
                    wr.write(string + "\n");
            }
            catch (IOException ex) {
                // ignore
            }
        }
    }

    public static void main(String[] args) throws Exception {


        String cfgDir = "G:\\FlowDroid\\JAADAS-master\\config";
        String sourceAndSink = cfgDir + File.separator + "SourcesAndSinks.txt";
        String sourceSinkDataFlowOut = cfgDir + File.separator + "sourcesinks-dataout.txt";
        String reachabilityFile = cfgDir + File.separator + "direct.txt";
        String taintwrapperFile = cfgDir + File.separator + "EasyTaintWrapperSource.txt";
        String constantRuleFile = cfgDir + File.separator + "ConstantRules.groovy";

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("G:/FlowDroid/platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
        //F:/apk/test4.apk
        //G:/FlowDroid/re1.apk
        Options.v().set_process_dir(Arrays.asList("G:/FlowDroid/re1.apk"));
        Options.v().set_allow_phantom_refs(true);
        Options.v().set_whole_program(true);

        Scene.v().loadNecessaryClasses();

        SetupApplication app = new SetupApplication("G:/FlowDroid/platforms", "G:/FlowDroid/re1.apk");

        final ITaintPropagationWrapper taintWrapper;
        final EasyTaintWrapper easyTaintWrapper = new EasyTaintWrapper(taintwrapperFile);
        taintWrapper = easyTaintWrapper;
        app.setTaintWrapper(taintWrapper);
//        app.setEnableCallbacks(false);
//        app.calculateSourcesSinksEntrypoints(sourceAndSink);
//
//        final InfoflowResults res = app.runInfoflow(new MyResultsAvailableHandler());


//        PackManager.v().runPacks();
//        CallGraph cg = Scene.v().getCallGraph();

//Options.v().setPhaseOption("cg.spark", "on");
        //SootMethod entryPoint = app.getEntryPointCreator().createDummyMain();
//        System.out.println(entryPoint.getSignature());
//        Options.v().set_main_class(entryPoint.getSignature());
//
//        Scene.v().setEntryPoints(Collections.singletonList(entryPoint));
//
//        System.out.println(entryPoint.getActiveBody());


//        app.generateInfoflowCFG();
//
//        System.out.println(Scene.v().getEntryPoints().get(0).getActiveBody());
//        System.out.println(app.getEntrypointClasses());



//        System.out.println("============");
//        System.out.println(Scene.v().getEntryPoints());
//        Iterator it = Scene.v().getReachableMethods().listener();
//        System.out.println("============");
//        while(it.hasNext()){
//            System.out.println(it.next());
//        }



        //<com.Security.Update.SecurityUpdateService: void onCreate()>
        //System.out.println(Scene.v().getReachableMethods());


//        for (SootClass sc : Scene.v().getApplicationClasses()) {
//            System.out.println(sc.toString());
//            for (SootMethod sm : sc.getMethods()) {
//
//            }
//        }
    }

}
