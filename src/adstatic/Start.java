package adstatic;

import adstatic.tools.MyTools;
import adstatic.vulnCheckPlugin.SystemAlertCheck;
import org.json.JSONObject;
import org.json.JSONString;
import soot.G;
import soot.PackManager;
import soot.Scene;
import soot.options.Options;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class Start {

    public static String startCheck(String fullFilePath) throws Exception {

        G.reset();

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);
        Options.v().set_whole_program(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        Map<String ,String> retuMap = new HashMap<String, String>();

        String classifyRetu = Classify.doClassify(fullFilePath);
        String vulnRetu = VulnCheck.doVulnCheck(fullFilePath);
        String privacyRetu = PrivacyLeakCheck.doPrivacyLeakCheck(fullFilePath);

        retuMap.put("classify", classifyRetu);
        retuMap.put("vuln", vulnRetu);
        retuMap.put("privacy", privacyRetu);

        JSONObject retuJSON = new JSONObject(retuMap);
//        System.out.println(retuJSON.toString());

//        System.out.println("============");
//        System.out.println(classifyRetu);
//        System.out.println("============");
//        System.out.println(vulnRetu);
//        System.out.println("============");
//        System.out.println(privacyRetu);

        G.reset();
        System.gc();

        return retuJSON.toString();

    }

    public static void main(String[] args) throws Exception {

        Start.startCheck("E:/VirusShare_0a2c6966ff87a6f1f313b3ec620b8097.apk");
    }
}
