package adstatic;

import heros.solver.Pair;
import soot.G;
import soot.PackManager;
import soot.Scene;
import soot.jimple.infoflow.android.InfoflowAndroidConfiguration;
import soot.jimple.infoflow.android.SetupApplication;
import soot.jimple.infoflow.results.InfoflowResults;
import soot.jimple.infoflow.results.ResultSinkInfo;
import soot.jimple.infoflow.results.ResultSourceInfo;
import soot.jimple.infoflow.taintWrappers.EasyTaintWrapper;
import soot.jimple.infoflow.taintWrappers.ITaintPropagationWrapper;
import soot.options.Options;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Base64;
import java.util.Iterator;
import java.util.LinkedList;

import static soot.SootClass.BODIES;

public class PrivacyLeakCheck {

    public static String doPrivacyLeakCheck(String fullFilePath) throws Exception {

        String androidJar = "./platforms";
        String taintWrapperPath = "./EasyTaintWrapperSource.txt";
        String sourceSinkFile = "./SourcesAndSinks.txt";

        SetupApplication app = new SetupApplication(androidJar, fullFilePath);

        //向app传递配置
        InfoflowAndroidConfiguration config = new InfoflowAndroidConfiguration();
        config.setUseExistingSootInstance(true);
        app.setConfig(config);
        //config.setMaxThreadNum(5);
        //config.setMaxAnalysisCallbackDepth(5);
        config.setMaxCallbacksPerComponent(5);

        //向app传递污点包装函数
        EasyTaintWrapper easyTaintWrapper;
        File twSourceFile = new File(taintWrapperPath);
        easyTaintWrapper = new EasyTaintWrapper(twSourceFile);
        easyTaintWrapper.setAggressiveMode(false);
        ITaintPropagationWrapper taintWrapper = easyTaintWrapper;
        app.setTaintWrapper(taintWrapper);

        //向app传递结果处理类
        //app.addResultsAvailableHandler(new MyResultsAvailableHandler());

        //app开始运行
        InfoflowResults results = app.runInfoflow(sourceSinkFile);

        //记录污点传播路径到文件中
        LinkedList<String> privacyLeakCheckRetu = new LinkedList<>();
        Pair<ResultSinkInfo, ResultSourceInfo> temp = null;
        Iterator<Pair<ResultSinkInfo, ResultSourceInfo>> it = results.getResults().iterator();
        while(it.hasNext()){
            temp = it.next();
            privacyLeakCheckRetu.add(temp.getO2().getSource().toString()+"-->"+temp.getO1().getSink().toString());
        }

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(baos);
        oos.writeObject(privacyLeakCheckRetu);

        return Base64.getEncoder().encodeToString(baos.toByteArray());
    }

    public static void main(String[] args) throws Exception{

        String fullFilePath = "F:/apk/sample.apk";

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);
        Options.v().set_whole_program(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        doPrivacyLeakCheck(fullFilePath);
    }
}
