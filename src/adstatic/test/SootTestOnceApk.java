package adstatic.test;

import adstatic.tools.LocalInfo;
import adstatic.tools.MyTools;
import heros.solver.Pair;
import soot.*;
import soot.jimple.*;
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

public class SootTestOnceApk {

    public String apkSrc = "F:/apk/";
    public String resultSrc = "./analysisResult/";

    private static final class MyResultsAvailableHandler implements ResultsAvailableHandler{

        public void onResultsAvailable(IInfoflowCFG cfg, InfoflowResults results) {
            try {
                PrintWriter pw = new PrintWriter(new FileOutputStream("./analysisResult/flowdroid/result.txt",true));
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
                System.out.println(e.toString());
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
        String fullFilePath = apkSrc+srcFile;
        String androidJar = "./platforms";

        SetupApplication app = new SetupApplication(androidJar, fullFilePath);

        //向app传递配置
        InfoflowAndroidConfiguration config = new InfoflowAndroidConfiguration();
        app.setConfig(config);
        //config.setMaxThreadNum(5);
        //config.setMaxAnalysisCallbackDepth(5);
        config.setMaxCallbacksPerComponent(5);

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
        String fullFilePath = apkSrc+srcFile;

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        //Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();

        for (SootClass sc : Scene.v().getApplicationClasses()) {
            System.out.println(sc.toString());
        }

        System.gc();
//        PrintWriter pw = new PrintWriter(new FileOutputStream("E:/SootClass.txt",true));
//        for (SootClass sc : Scene.v().getApplicationClasses()) {
//            pw.write(sc.toString()+"\r");
//        }
//        pw.flush();
//        pw.close();
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

        HashMap<String, String> count = new HashMap<String, String>();
        int size = (int)(new File(fullFilePath).length()/1000);
        for (Map.Entry<String, Integer> entry : apiCount.entrySet()) {
            String api = String.format("%.2f", entry.getValue()*10000/(float)size);
            count.put(entry.getKey(), api);
        }

        pw.write(MyTools.stringMapToJSON(count));
        pw.flush();
        pw.close();

        System.gc();
    }

    public void checkSystemAlert(String srcFile) throws Exception{
        G.reset();

        String fullFilePath = apkSrc+srcFile;

        //首先从权限中检测
        try {
            ProcessManifest processManifest = new ProcessManifest(fullFilePath);
            if(processManifest.getPermissions().contains("android.permission.SYSTEM_ALERT_WINDOW")){
                System.out.println("存在");
            }
        }catch(Exception e){
            System.out.println("基于权限的检测出现异常");
            System.out.println(e);
        }

        //开始基于语义的检测
        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        //Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        try {
            Scene.v().loadNecessaryClasses();
            PackManager.v().runPacks();
            InvokeExpr setTypeExpr;
            Value leftValue;
            Value rightValue;
            List<HashMap<Local, LocalInfo>> localMapList = null;
            boolean tag;
            for (SootClass sc : Scene.v().getApplicationClasses()) {
                if (!sc.toString().startsWith("android")){
                    List<SootMethod> sms = sc.getMethods();
                    int i = 0;
                    while(i < sms.size()){
                        SootMethod sm = sc.getMethods().get(i);
                        Body body = sm.getActiveBody();
                        System.out.println(body);
                        for (Unit unit : body.getUnits()) {
                            Stmt stmt = (Stmt)unit;

                            //*****检查语句virtualinvoke $r10.<android.view.Window: void setType(int)>(2005)*****
                            if(stmt.containsInvokeExpr()){
                                setTypeExpr = stmt.getInvokeExpr();
                                tag = false;
                                //检查函数调用是否为指定类型
                                if(setTypeExpr.getMethod().getSignature().equals("<android.view.Window: void setType(int)>")) {
                                    tag = true;
                                }
                                //检查函数调用的参数是否为2005
                                if(tag){
                                    tag = false;
                                    if(setTypeExpr.getArgCount() == 1){
                                        Value arg = setTypeExpr.getArg(0);
                                        if(arg instanceof Constant){
                                            if(arg.toString().equals("2005")){
                                                tag = true;
                                            }
                                        }else if(arg instanceof Local) {
                                            if(localMapList == null)
                                                localMapList = MyTools.getLocalMapList(body);
                                            Set<Constant> constantsList = MyTools.localToConstant((Local)arg, localMapList);
                                            for (Constant constant : constantsList) {
                                                if(constant.toString().equals("\"2005\"") || constant.toString().equals("2005")){
                                                    tag = true;
                                                }
                                            }
                                        }
                                    }
                                }
                                //处理分析结果
                                if(tag){
                                    System.out.println("find it");
                                    System.out.println(stmt);
                                }
                            }

                            //*****检查语句$r3.<android.view.WindowManager$LayoutParams: int type> = 2005*****
                            if(stmt instanceof DefinitionStmt){
                                leftValue = ((DefinitionStmt) stmt).getLeftOp();
                                rightValue = ((DefinitionStmt) stmt).getRightOp();
                                //检查右操作数是否为2005
                                tag = false;
                                if(rightValue instanceof Constant) {
                                    if (((Constant) rightValue).toString().equals("2005")) {
                                        tag = true;
                                    }
                                }else if(rightValue instanceof Local){
                                    if(localMapList == null)
                                        localMapList = MyTools.getLocalMapList(body);
                                    Set<Constant> constantsList = MyTools.localToConstant((Local)rightValue, localMapList);
                                    for (Constant constant : constantsList) {
                                        if(constant.toString().equals("\"2005\"") || constant.toString().equals("2005")){
                                            tag = true;
                                        }
                                    }
                                }
                                //检查左操作数的$r3类型是否为指定类型
                                if(tag){
                                    tag = false;
                                    if(leftValue.getUseBoxes().size() == 1) {
                                        Value value = leftValue.getUseBoxes().get(0).getValue();
                                        if (value instanceof Local) {
                                            if (((Local) value).getType().toString().equals("android.view.WindowManager$LayoutParams")) {
                                                tag = true;
                                            }
                                        }
                                    }
                                }
                                //检查指定类型后面有没有field，有的话其类型为何
                                if(tag){
                                    tag = false;
                                    if(stmt.containsFieldRef()){
                                        if(stmt.getFieldRef().getField().toString().equals("<android.view.WindowManager$LayoutParams: int type>")){
                                            tag = true;
                                        }
                                    }
                                }
                                //分析结果
                                if(tag){
                                    System.out.println("find it");
                                    System.out.println(stmt);
                                }
                            }
                        }
                        //保证一个函数内，流程分析只调用一次
                        localMapList = null;
                        i += 1;
                    }
                }
            }
        }catch(Exception e){
            System.out.println("基于语义的检测出现异常");
            System.out.println(e);
        }

        //尝试对Layout布局文件进行检测，目前还没有实现


        System.gc();
    }

    public void checkClassLoad(String srcFile) throws Exception{

        G.reset();

        String fullFilePath = apkSrc+srcFile;

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp","dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList("F:/apk/daoyoudao.apk"));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        boolean hasforName = false;
        boolean hasloadClass = false;
        boolean hasgetMethod = false;
        boolean hasinvoke = false;
        SootMethod method;

        for (SootClass sc : Scene.v().getApplicationClasses()) {
            if (!sc.toString().startsWith("android")) {
                List<SootMethod> sms = sc.getMethods();
                int i = 0;
                while(i < sms.size()){
                    SootMethod sm = sc.getMethods().get(i);
                    Body body = sm.getActiveBody();
                    for (Unit unit : body.getUnits()) {
                        Stmt stmt = (Stmt) unit;
                        if(stmt.containsInvokeExpr()){

                            method = stmt.getInvokeExpr().getMethod();
                            if(method.getSignature().equals("<java.lang.Class: java.lang.reflect.Method getMethod(java.lang.String,java.lang.Class[])>")){
                                hasgetMethod = true;
                            }
                            if(method.getSignature().equals("<java.lang.reflect.Method: java.lang.Object invoke(java.lang.Object,java.lang.Object[])>")){
                                hasinvoke = true;
                            }
                            if(method.getSignature().equals("<java.lang.Class: java.lang.Class forName(java.lang.String)>")) {
                                hasforName = true;
                            }
                            if(method.getSignature().equals("<java.lang.ClassLoader: java.lang.Class loadClass(java.lang.String)>")){
                                hasloadClass = true;
                            }
                        }
                    }
                    i += 1;
                }
            }
        }

        System.out.println(hasforName);
        System.out.println(hasgetMethod);
        System.out.println(hasinvoke);
        System.out.println(hasloadClass);

        System.gc();

    }

    public void checkJBOH(String srcFile) throws Exception {

        G.reset();

        String fullFilePath = apkSrc+srcFile;

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        System.out.println(Scene.v().getAndroidAPIVersion());

        int apkAPIVersion = Scene.v().getAndroidAPIVersion();
        //只有在APIVersion小于17也就是android版本在4.2之下时，没有提供js注解机制
        if(apkAPIVersion < 17){
            boolean findsetJavaScriptEnabled = false;
            boolean argsetJavaScriptEnabled = false;
            boolean findremoveJavascriptInterface = false;
            boolean argremoveJavascriptInterface = false;
            boolean findaddJavascriptInterface = false;
            InvokeExpr invokeExpr;
            Value arg;
            List<HashMap<Local, LocalInfo>> localMapList = null;
            for (SootClass sc : Scene.v().getApplicationClasses()) {
                if (!sc.toString().startsWith("android")) {
                    List<SootMethod> sms = sc.getMethods();
                    int i = 0;
                    while(i < sms.size()){
                        SootMethod sm = sc.getMethods().get(i);
                        Body body = sm.getActiveBody();
                        for (Unit unit : body.getUnits()) {
                            Stmt stmt = (Stmt) unit;
                            if(stmt.containsInvokeExpr()){
                                invokeExpr = stmt.getInvokeExpr();

                                //****检测setJavaScriptEnabled(true)
                                if(invokeExpr.getMethod().getSignature().equals("<android.webkit.WebSettings: void setJavaScriptEnabled(boolean)>")){
                                    if(invokeExpr.getArgs().size() == 1){
                                        findsetJavaScriptEnabled = true;
                                        arg = invokeExpr.getArg(0);
                                        if(arg instanceof Constant){
                                            if(arg.toString().equals("1")){
                                                argsetJavaScriptEnabled = true;
                                            }else if(arg.toString().equals("0")){
                                                argsetJavaScriptEnabled = false;
                                            }
                                        }else if(arg instanceof Local){
                                            if(localMapList == null)
                                                localMapList = MyTools.getLocalMapList(body);
                                            Set<Constant> constantsList = MyTools.localToConstant((Local)arg, localMapList);
                                            for (Constant constant : constantsList) {
                                                if(constant.toString().equals("1")){
                                                    argsetJavaScriptEnabled = true;
                                                }else if(arg.toString().equals("0")){
                                                    argsetJavaScriptEnabled = false;
                                                }
                                            }
                                        }
                                    }
                                }

                                //****检测removeJavascriptInterface
                                if(invokeExpr.getMethod().getSignature().equals("<android.webkit.WebView: void removeJavascriptInterface(java.lang.String)>")){
                                    if(invokeExpr.getArgs().size() == 1){
                                        arg = invokeExpr.getArg(0);
                                        findremoveJavascriptInterface = true;
                                        if(arg instanceof Constant){
                                            if(arg.toString().equals("searchBoxJavaBridge_")){
                                                argremoveJavascriptInterface = true;
                                            }
                                        }else if(arg instanceof Local){
                                            if(localMapList == null)
                                                localMapList = MyTools.getLocalMapList(body);
                                            Set<Constant> constantsList = MyTools.localToConstant((Local)arg, localMapList);
                                            for (Constant constant : constantsList) {
                                                if(constant.toString().equals("searchBoxJavaBridge_")){
                                                    argremoveJavascriptInterface = true;
                                                }
                                            }
                                        }
                                    }
                                }

                                //****检测addJavascriptInterface
                                if(invokeExpr.getMethod().getSignature().equals("<android.webkit.WebView: void addJavascriptInterface(java.lang.Object,java.lang.String)>")){
                                    findaddJavascriptInterface = true;
                                }
                            }
                        }
                        //保证一个函数内，流程分析只调用一次
                        localMapList = null;
                        i += 1;
                    }

                }


            }

            //开始结果处理
            if(findsetJavaScriptEnabled && argsetJavaScriptEnabled){
                if(findremoveJavascriptInterface && argremoveJavascriptInterface){
                    if(findaddJavascriptInterface){
                        //unsafe 开启jsEnable，移除了默认接口，又添加了新的接口，不安全
                    }else{
                        //safe 开始jsEnable，移除了默认接口，并没有添加新的接口，安全
                    }
                }else{
                    //unsafe 在开启jsEnable的情况下没有remove默认的接口，不安全
                }
            }else{
                //safe  没有开启jsEnable或者没有调用setJavascriptEnable函数，安全
            }

        }

        //在APIVersion>17也就是android4.2版本之上，就不需要考虑添加接口后不安全的问题了，开始着重分析@JavascriptInterface注解函数的问题
        else{
            Value arg;
            InvokeExpr invokeExpr;
            for (SootClass sc : Scene.v().getApplicationClasses()) {
                if (!sc.toString().startsWith("android")) {
                    List<SootMethod> sms = sc.getMethods();
                    int i = 0;
                    while (i < sms.size()) {
                        SootMethod sm = sc.getMethods().get(i);
                        Body body = sm.getActiveBody();
                        for (Unit unit : body.getUnits()) {
                            Stmt stmt = (Stmt) unit;
                            if(stmt.containsInvokeExpr()){
                                invokeExpr = stmt.getInvokeExpr();
                                if(invokeExpr.getMethod().toString().equals("<android.webkit.WebView: void addJavascriptInterface(java.lang.Object,java.lang.String)>")){
                                    if(invokeExpr.getArgCount() == 2){
                                        if(invokeExpr.getArg(0) instanceof Local){
                                            String object = invokeExpr.getArg(0).getType().toString();

                                            //拿到了对应的类，去遍历收集这个类里面作为JavascriptInterface的方法吧
                                            SootClass sootClass = Scene.v().getSootClass(object);
                                            Set<SootMethod> setJavascriptInterface = new HashSet<SootMethod>();
                                            for (SootMethod sootMethod : sootClass.getMethods()) {
                                                if(MyTools.checkJavascriptInterface(sootMethod)){
                                                    setJavascriptInterface.add(sootMethod);
                                                }
                                            }

                                            //现在收集到了所有的js接口，开始进行遍历处理
                                            Set<String> highRiskAPI = MyTools.getHighRiskAPI();
                                            for (SootMethod sootMethod : setJavascriptInterface) {
                                                //首先检查有没有getClass方法，如果将getClass函数提供给接口的话就是不安全的
                                                if(sootMethod.getSubSignature().toString().equals("java.lang.Class getClass()")){
                                                    //unsafe
                                                }
                                                //对于普通方法，进行恶意API的检测
                                                else{
                                                    if(sootMethod.hasActiveBody()){
                                                        for (Unit _unit : sootMethod.getActiveBody().getUnits()) {
                                                            Stmt _stmt = (Stmt) _unit;
                                                            if(_stmt.containsInvokeExpr()){
                                                                if(highRiskAPI.contains(_stmt.getInvokeExpr().getMethod().getSignature())){
                                                                    //unsafe
                                                                    //注意，还没有跳出循环
                                                                }
                                                            }
                                                        }
                                                    }
                                                }

                                            }

                                        }
                                    }
                                }
                            }
                        }
                        i += 1;
                    }
                }
            }
        }

        System.gc();


    }

    public static void main(String[] args) throws Exception{

        Set<String> highRiskAPI = MyTools.getHighRiskAPI();
        Set<String> packageWhiteList = MyTools.getPackageWhiteList();

        SootTestOnceApk sootTestOnceApk = new SootTestOnceApk();
        try{
            sootTestOnceApk.getHighRiskAPI("zhifubao.apk", highRiskAPI, packageWhiteList);
            //sootTestOnceApk.manifestAnalysis("sample.apk");
        }
        catch(StackOverflowError e){
            System.out.println("haha");
        }
        System.out.println("hehe");
        //System.out.println(sootTestOnceApk.calAPKSHA1("test5.apk"));


    }
}




