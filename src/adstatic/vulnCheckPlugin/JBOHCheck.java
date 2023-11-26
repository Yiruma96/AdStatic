package adstatic.vulnCheckPlugin;

import soot.*;
import soot.jimple.Constant;
import soot.jimple.InvokeExpr;
import soot.jimple.Stmt;

import adstatic.tools.LocalInfo;
import adstatic.tools.MyTools;
import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;

import java.util.*;

public class JBOHCheck implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception{
//        System.out.println(Scene.v().getAndroidAPIVersion());

        int apkAPIVersion = Scene.v().getAndroidAPIVersion();
        //只有在APIVersion小于17也就是android版本在4.2之下时，没有提供js注解机制
        if(apkAPIVersion < 17) {
            boolean findsetJavaScriptEnabled = false;
            boolean argsetJavaScriptEnabled = false;
            StmtInfo setJavaScriptEnabled = null;
            boolean findremoveJavascriptInterface = false;
            boolean argremoveJavascriptInterface = false;
            StmtInfo removeJavascriptInterface = null;
            boolean findaddJavascriptInterface = false;
            StmtInfo addJavascriptInterface = null;
            InvokeExpr invokeExpr;
            Value arg;
            List<HashMap<Local, LocalInfo>> localMapList = null;
            for (SootClass sc : Scene.v().getApplicationClasses()) {
                if (!MyTools.isNeedAnalysis(sc.toString(), packageWhiteSet)) {
                    continue;
                }

                List<SootMethod> sms = sc.getMethods();

                int i = 0;
                while (i < sms.size()) {
                    SootMethod sm = sc.getMethods().get(i);
                    if (sm.hasActiveBody()) {
                        Body body = sm.getActiveBody();
                        for (Unit unit : body.getUnits()) {
                            Stmt stmt = (Stmt) unit;
                            if (stmt.containsInvokeExpr()) {
                                invokeExpr = stmt.getInvokeExpr();

                                //****检测setJavaScriptEnabled(true)
                                if (invokeExpr.getMethod().getSignature().equals("<android.webkit.WebSettings: void setJavaScriptEnabled(boolean)>")) {
                                    if (invokeExpr.getArgs().size() == 1) {
                                        findsetJavaScriptEnabled = true;
                                        setJavaScriptEnabled = new StmtInfo(sc.toString(), sm.toString(), stmt.toString());
                                        arg = invokeExpr.getArg(0);
                                        if (arg instanceof Constant) {
                                            if (arg.toString().equals("1")) {
                                                argsetJavaScriptEnabled = true;
                                            } else if (arg.toString().equals("0")) {
                                                argsetJavaScriptEnabled = false;
                                            }
                                        } else if (arg instanceof Local) {
                                            if (localMapList == null)
                                                localMapList = MyTools.getLocalMapList(body);
                                            Set<Constant> constantsList = MyTools.localToConstant((Local) arg, localMapList);
                                            for (Constant constant : constantsList) {
                                                if (constant.toString().equals("1")) {
                                                    argsetJavaScriptEnabled = true;
                                                } else if (arg.toString().equals("0")) {
                                                    argsetJavaScriptEnabled = false;
                                                }
                                            }
                                        }
                                    }
                                }

                                //****检测removeJavascriptInterface
                                if (invokeExpr.getMethod().getSignature().equals("<android.webkit.WebView: void removeJavascriptInterface(java.lang.String)>")) {
                                    if (invokeExpr.getArgs().size() == 1) {
                                        arg = invokeExpr.getArg(0);
                                        findremoveJavascriptInterface = true;
                                        removeJavascriptInterface = new StmtInfo(sc.toString(), sm.toString(), stmt.toString());
                                        if (arg instanceof Constant) {
                                            if (arg.toString().equals("searchBoxJavaBridge_")) {
                                                argremoveJavascriptInterface = true;
                                            }
                                        } else if (arg instanceof Local) {
                                            if (localMapList == null)
                                                localMapList = MyTools.getLocalMapList(body);
                                            Set<Constant> constantsList = MyTools.localToConstant((Local) arg, localMapList);
                                            for (Constant constant : constantsList) {
                                                if (constant.toString().equals("searchBoxJavaBridge_")) {
                                                    argremoveJavascriptInterface = true;
                                                }
                                            }
                                        }
                                    }
                                }

                                //****检测addJavascriptInterface
                                if (invokeExpr.getMethod().getSignature().equals("<android.webkit.WebView: void addJavascriptInterface(java.lang.Object,java.lang.String)>")) {
                                    findaddJavascriptInterface = true;
                                    addJavascriptInterface = new StmtInfo(sc.toString(), sm.toString(), stmt.toString());
                                }
                            }
                        }

                    }
                    //保证一个函数内，流程分析只调用一次
                    localMapList = null;
                    i += 1;

                } //sootmethod结束

            } //sootClass结束


            //开始API<17时的结果处理
            if (findsetJavaScriptEnabled && argsetJavaScriptEnabled) {
                if (findremoveJavascriptInterface && argremoveJavascriptInterface) {
                    if (findaddJavascriptInterface) {
                        vulnRetuList.add(new VulnRetu("WebView开启了Javascript，并向其中添加了新的接口，在API<17时可能导致Web组件远程代码执行漏洞", setJavaScriptEnabled, removeJavascriptInterface, addJavascriptInterface));
                        //unsafe 开启jsEnable，移除了默认接口，又添加了新的接口，不安全
                    } else {
                        //safe 开始jsEnable，移除了默认接口，并没有添加新的接口，安全
                    }
                } else {
                    vulnRetuList.add(new VulnRetu("WebView开启了Javascript，并没有移除默认接口，在API<17时可能导致Web组件远程代码执行漏洞", setJavaScriptEnabled));
                    //unsafe 在开启jsEnable的情况下没有remove默认的接口，不安全
                }
            } else {
                //safe  没有开启jsEnable或者没有调用setJavascriptEnable函数，安全
            }
        }

        //在APIVersion>17也就是android4.2版本之上，就不需要考虑添加接口后不安全的问题了，开始着重分析@JavascriptInterface注解函数的问题
        else {
            LinkedList<StmtInfo> stmtInfoList = new LinkedList<StmtInfo>();
            Value arg;
            InvokeExpr invokeExpr;
            for (SootClass sc : Scene.v().getApplicationClasses()) {
                if (MyTools.isNeedAnalysis(sc.toString(), packageWhiteSet)) {
                    List<SootMethod> sms = sc.getMethods();
                    int i = 0;
                    while (i < sms.size()) {
                        SootMethod sm = sc.getMethods().get(i);
                        if (sm.hasActiveBody()) {
                            Body body = sm.getActiveBody();
                            for (Unit unit : body.getUnits()) {
                                Stmt stmt = (Stmt) unit;

                                if (stmt.containsInvokeExpr()) {
                                    invokeExpr = stmt.getInvokeExpr();
                                    if (invokeExpr.getMethod().toString().equals("<android.webkit.WebView: void addJavascriptInterface(java.lang.Object,java.lang.String)>")) {
                                        if (invokeExpr.getArg(0) instanceof Local) {
                                            String object = invokeExpr.getArg(0).getType().toString();
                                            //System.out.println(object);

                                            //拿到了对应的类，去遍历收集这个类里面作为JavascriptInterface的方法吧
                                            SootClass sootClass = Scene.v().getSootClass(object);
                                            Set<SootMethod> setJavascriptInterface = new HashSet<SootMethod>();
                                            for (SootMethod sootMethod : sootClass.getMethods()) {
                                                if (MyTools.checkJavascriptInterface(sootMethod)) {
                                                    //System.out.println(sootMethod);
                                                    setJavascriptInterface.add(sootMethod);
                                                }
                                            }

                                            //现在收集到了所有的js接口，开始进行遍历处理
                                            Set<String> highRiskAPI = MyTools.getHighRiskAPI();
                                            for (SootMethod sootMethod : setJavascriptInterface) {
                                                //首先检查有没有getClass方法，如果将getClass函数提供给接口的话就是不安全的
                                                if (sootMethod.getSubSignature().toString().equals("java.lang.Class getClass()")) {
                                                    stmtInfoList.add(new StmtInfo(sootClass.toString(), sootMethod.toString(), null));
                                                    //unsafe
                                                }
                                                //对于普通方法，进行恶意API的检测
                                                else {
                                                    if (sootMethod.hasActiveBody()) {
                                                        for (Unit _unit : sootMethod.getActiveBody().getUnits()) {
                                                            Stmt _stmt = (Stmt) _unit;
                                                            if (_stmt.containsInvokeExpr()) {
                                                                if (highRiskAPI.contains(_stmt.getInvokeExpr().getMethod().getSignature())) {
                                                                    stmtInfoList.add(new StmtInfo(sootClass.toString(), sootMethod.toString(), _stmt.toString()));
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


            //开始API>17时的结果处理
            if(stmtInfoList.size() != 0){
                vulnRetuList.add(new VulnRetu("API>17时，javascript注解机制所提供的接口中检测到含有危险API", stmtInfoList));
            }

        }

        return vulnRetuList;
    }

    public LinkedList<VulnRetu> getResult() {
        return vulnRetuList;
    }

    public void printVulnCheckResult(){
        for (VulnRetu vulnRetu : vulnRetuList) {
            System.out.println(vulnRetu.getDesc());
            System.out.println(vulnRetu.getStmtInfos());
        }
    }
}
