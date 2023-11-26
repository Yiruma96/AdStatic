package adstatic.test;

import adstatic.Classify;
import adstatic.PrivacyLeakCheck;
import adstatic.VulnCheck;
import adstatic.tools.MyTools;
import adstatic.tools.VulnRetu;
import adstatic.tools.VulnRetuHub;
import adstatic.vulnCheckPlugin.*;
import heros.solver.Pair;
import soot.*;
import soot.jimple.Stmt;
import soot.jimple.infoflow.android.InfoflowAndroidConfiguration;
import soot.jimple.infoflow.android.SetupApplication;
import soot.jimple.infoflow.android.manifest.ProcessManifest;
import soot.jimple.infoflow.handlers.ResultsAvailableHandler;
import soot.jimple.infoflow.results.InfoflowResults;
import soot.jimple.infoflow.results.ResultSinkInfo;
import soot.jimple.infoflow.results.ResultSourceInfo;
import soot.jimple.infoflow.solver.cfg.IInfoflowCFG;
import soot.jimple.infoflow.taintWrappers.EasyTaintWrapper;
import soot.jimple.infoflow.taintWrappers.ITaintPropagationWrapper;
import soot.options.Options;

import javax.xml.bind.annotation.adapters.HexBinaryAdapter;
import java.io.*;
import java.security.DigestInputStream;
import java.security.MessageDigest;
import java.util.*;

public class SootTestAllApk {

    public String apkSrc = "F:/apk/test/";
    public String resultSrc = "./analysisResult/";

    private static final class MyResultsAvailableHandler implements ResultsAvailableHandler{

        public void onResultsAvailable(IInfoflowCFG cfg, InfoflowResults results) {
            try {
                PrintWriter pw = new PrintWriter(new FileOutputStream("E:/result.txt",true));
                Pair<ResultSinkInfo, ResultSourceInfo> temp = null;
                Iterator<Pair<ResultSinkInfo, ResultSourceInfo>> it = results.getResults().iterator();
                while(it.hasNext()){
                    temp = it.next();
                    pw.write(temp.getO2().getSource().toString());
                    pw.write("-->");
                    pw.write(temp.getO1().getSink().toString());
                    pw.write("\r");
                }

                pw.flush();
                pw.close();
            } catch (FileNotFoundException e) {
                ;
            }
        }
    }

    public String calAPKSHA1(String srcFile) throws Exception{

        //文件输入流与md吸收流的建立
        FileInputStream fis = new FileInputStream(apkSrc + srcFile);
        MessageDigest md = MessageDigest.getInstance("SHA1");
        //整合为数据流Filter
        DigestInputStream dis = new DigestInputStream(fis, md);

        //进行过滤
        byte[] buffer = new byte[4096];
        while(dis.read(buffer) != -1);

        byte[] digest = md.digest();

        //关闭流
        dis.close();

        return new HexBinaryAdapter().marshal(digest);
    }

    public void manifestAnalysis(String srcFile) throws Exception {

        ProcessManifest processManifest = new ProcessManifest(apkSrc+srcFile);
        FileOutputStream fileOutputStream = new FileOutputStream(resultSrc+"permission/"+srcFile+".txt");
        FileOutputStream fileOutputStream1 = new FileOutputStream(resultSrc+"xml/"+srcFile+".txt");


        for (String perName : processManifest.getPermissions()) {
            fileOutputStream.write((perName+"\n").getBytes());
        }
        fileOutputStream1.write(processManifest.getAXml().toString().getBytes());

        fileOutputStream.close();
        fileOutputStream1.close();

        G.reset();
    }

    public void flowDorid(String srcFile) throws Exception {

        File file = new File(resultSrc + "flowdroid/" + srcFile + ".txt");
        if(file.exists()){
            System.out.println(srcFile + " has analysiced");
            return;
        }

        String fullFilePath = apkSrc+srcFile;
        String androidJar = "./platforms";

        SetupApplication app = new SetupApplication(androidJar, fullFilePath);

        //向app传递配置
        InfoflowAndroidConfiguration config = new InfoflowAndroidConfiguration();
        app.setConfig(config);

        //向app传递污点包装函数
        EasyTaintWrapper easyTaintWrapper;
        File twSourceFile = new File("./EasyTaintWrapperSource.txt");
        easyTaintWrapper = new EasyTaintWrapper(twSourceFile);
        easyTaintWrapper.setAggressiveMode(false);
        ITaintPropagationWrapper taintWrapper = easyTaintWrapper;
        app.setTaintWrapper(taintWrapper);

        //向app传递结果处理类
        //app.addResultsAvailableHandler(new MyResultsAvailableHandler());

        //app开始运行
        InfoflowResults results = app.runInfoflow("./SourcesAndSinks.txt");

        //记录污点传播路径到文件中
        PrintWriter pw = new PrintWriter(new FileOutputStream(resultSrc+"flowdroid/"+srcFile+".txt" /*,true*/));
        Pair<ResultSinkInfo, ResultSourceInfo> temp = null;
        Iterator<Pair<ResultSinkInfo, ResultSourceInfo>> it = results.getResults().iterator();
        while(it.hasNext()){
            temp = it.next();
            pw.write(temp.getO2().getSource().toString());
            pw.write("-->");
            pw.write(temp.getO1().getSink().toString());
            pw.write("\r");
        }

        pw.flush();
        pw.close();

    }

    public void getADClass(String srcFile) throws Exception{

        //确保每次的分析都创建一个新的Soot实例
        G.reset();

        String fullFilePath = apkSrc+srcFile;

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        //Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();

        PrintWriter pw = new PrintWriter(new FileOutputStream("./SootClass.txt",true));
        for (SootClass sc : Scene.v().getApplicationClasses()) {
            pw.write(sc.toString()+"\n");
        }
        pw.flush();
        pw.close();

        System.gc();
    }

    public void VulnCheck(String srcFile, Set<String> packageWhiteList) throws Exception {

        //确保每次的分析都创建一个新的Soot实例
        G.reset();

        String fullFilePath = apkSrc+srcFile;

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        //Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        PrintWriter pw = new PrintWriter(new FileOutputStream(resultSrc+"VulnCheck/"+srcFile+".txt"));
        PrintWriter pwCount = new PrintWriter(new FileOutputStream(resultSrc+"VulnCheckCount/"+srcFile+".txt"));

        VulnRetuHub vulnRetuHub = new VulnRetuHub();
        vulnRetuHub.add(new APKConfigure().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new DynamicLoadingCheck().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new HTTPSSecurityCheck().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new IntentSchemeURLCheck().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new JBOHCheck().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new PlainKeyCheck().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new SSLErrorHandlerCheck().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new SystemAlertCheck().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new WebViewFileCheck().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new WebViewSavePasswordCheck().check(fullFilePath, packageWhiteList));
        vulnRetuHub.add(new WorldModeCheckPlugin().check(fullFilePath, packageWhiteList));



        System.gc();
    }

    public void getHighRiskAPI(String srcFile, Set<String> highRiskAPI, Set<String> packageWhiteList) throws Exception{

        G.reset();

        String fullFilePath = apkSrc+srcFile;

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        //Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        //之前只是从dex文件中提取出来类的相关信息添加到Scene里面，并没有将class代码翻译为Jimple，所以我们需要运行wjtp包，即"whole Jimple transformation pack",
        //但是之前记得先运行cg包生成调用图，才能基于call graph生成Jimple文件
        //存在问题，使用runPacks()来做
        PackManager.v().runPacks();

        PrintWriter pw = new PrintWriter(new FileOutputStream(resultSrc+"HighRiskAPI/"+srcFile+".txt"));

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

        pw.write(MyTools.mapToJSON(apiCount));
        pw.flush();
        pw.close();

        System.gc();
    }

    public static void main(String[] args) throws Exception{

        SootTestAllApk middleAnalysisOneApk = new SootTestAllApk();
        File file = new File(middleAnalysisOneApk.apkSrc);

        Set<String> highRiskAPI = MyTools.getHighRiskAPI();
        Set<String> packageWhiteList = MyTools.getPackageWhiteList();

        int exceptionNumber = 0;
        int count = 0;

        PrintWriter pw = new PrintWriter(new FileOutputStream("E:/time.txt"));

        File[] files = file.listFiles();
        for (File xie : files) {
            String fileName = xie.getName();
            if (xie.isFile()){
                if (fileName.substring(fileName.length()-3).equals("apk")){

                    try {
                        System.out.println(fileName+" is Running");
                        //System.out.println(middleAnalysisOneApk.calAPKSHA1(fileName));
//                        middleAnalysisOneApk.getHighRiskAPI(fileName, highRiskAPI, packageWhiteList);

                        Long time1 = new Date().getTime();
                        String fullFilePath = middleAnalysisOneApk.apkSrc+fileName;

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

                        VulnCheck.doVulnCheck(fullFilePath);
                        Long time2 = new Date().getTime();
                        PrivacyLeakCheck.doPrivacyLeakCheck(fullFilePath);
                        Long time3 = new Date().getTime();

                        pw.write(fileName+" ");
                        pw.write(Integer.toString((int)new File(fullFilePath).length()) + " ");
                        pw.write(Integer.toString((int)(time2-time1)/1000) + " ");
                        pw.write(Integer.toString((int)(time3-time2)/1000) + "\n");
                        pw.flush();

                        count += 1;
                        System.out.println(fileName+" analysis over");
                        G.reset();
                        System.gc();
                    }
                    catch (Exception e){
                        System.out.println(e);
                        System.out.println(fileName+" has a exception");
                        count += 1;
                        exceptionNumber += 1;
                    }catch (StackOverflowError e){
                        System.out.println("java.lang.StackOverflowError ");
                        System.out.println(fileName+" has a exception");
                        count += 1;
                        exceptionNumber += 1;
                    }
                }
            }
        }

        pw.close();
        System.out.println((count - exceptionNumber)+"/"+count);



    }
}




