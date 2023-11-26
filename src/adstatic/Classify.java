package adstatic;

import adstatic.tools.MyTools;
import soot.*;
import soot.jimple.Stmt;
import soot.options.Options;

import java.io.*;
import java.util.*;

public class Classify {

    // Exp: doClassify("./classify/base.apk.txt");
    public static String doClassify(String fullFilePath) throws Exception {

        //默认使用的python路径
        String pythonPath = "python3";
        //读取配置文件
        try {
            pythonPath = MyTools.getConfig("PYTHON").get("PYTHON-PATH");
        }catch (Exception e){
            System.out.println("python路径在配置文件中不存在，默认使用python3");
        }

        return doClassify(pythonPath, "./classify/classify.py", fullFilePath);
    }

    // Exp: doClassify("python364", "./classify/classify.py", "F:/apk/illusion.apk");
    public static String doClassify(String pythonVersion, String pyPath, String fullFilePath) throws Exception {

        String APIFilePath = getAPI(fullFilePath);

        String[] arguments = new String[] {pythonVersion, pyPath, APIFilePath};
        String line = null;
        StringBuilder retu = new StringBuilder();

        Process process = Runtime.getRuntime().exec(arguments);

        BufferedReader in = new BufferedReader(new InputStreamReader(process.getInputStream()));
        while ((line = in.readLine()) != null) {
            retu.append(line);
        }
        in.close();
        process.waitFor();

        return retu.toString();

    }

    // 从源码中分析获得所有的API
    private static String getAPI(String fullFilePath) throws Exception {

        File apk = new File(fullFilePath);
        String APIFilePath = "./classify/" + apk.getName() + ".txt";
        Set<String> highRiskAPI = MyTools.getHighRiskAPI();
        Set<String> packageWhiteList = MyTools.getPackageWhiteList();

        PrintWriter pw = new PrintWriter(new FileOutputStream(APIFilePath));

        Map<String, Integer> apiCount= new HashMap<String, Integer>();
        for (String api : highRiskAPI) {
            apiCount.put(api, 0);
        }
        String[] temp;
        String packageName;
        Stmt stmt;
        String methodSignature;
        for (SootClass sc : Scene.v().getApplicationClasses()) {
            temp = sc.toString().split("\\.");
            if(temp.length >=2){
                packageName = temp[0]+"."+temp[1];
                if(packageWhiteList.contains(packageName)){
                    //System.out.println("检测到类名为"+sc.toString()+"停止分析此类");
                    continue;
                }
            }

            //发现在for(SootMethod sm : sc.getMethods())的时候，循环内会有sc里面的methods增加导致迭代器异常，因此改用这种形式防止错误
            List<SootMethod> sms = sc.getMethods();
            int i = 0;
            while(i < sms.size()){
                SootMethod sm = sc.getMethods().get(i);
                if(sm.hasActiveBody()){
                    for (Unit unit : sm.getActiveBody().getUnits()) {
                        stmt = (Stmt) unit;
                        if(stmt.containsInvokeExpr()){
                            methodSignature = stmt.getInvokeExpr().getMethod().getSignature();
                            if(highRiskAPI.contains(methodSignature)){
                                apiCount.put(methodSignature, apiCount.get(methodSignature)+1);
                                //System.out.println(stmt.getInvokeExpr().getMethod().getSignature());
                            }
                        }
                    }
                }
                i += 1;

            }
        }

        HashMap<String, String> count = new HashMap<String, String>();
        int size = (int)(apk.length()/1000);
        for (Map.Entry<String, Integer> entry : apiCount.entrySet()) {
            String api = String.format("%.2f", entry.getValue()*10000/(float)size);
            count.put(entry.getKey(), api);
        }

        pw.write(MyTools.stringMapToJSON(count));
        pw.flush();
        pw.close();

        return APIFilePath;

    }

    public static void main(String[] args) throws Exception {

        String fullFilePath = "F:/apk/illusion.apk";

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();
        //System.out.println(Classify.doClassify("python364", "./classify/classify.py", "./classify/base.apk.txt"));
        System.out.println(Classify.doClassify(fullFilePath));
    }


}
