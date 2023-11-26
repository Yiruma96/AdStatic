package adstatic.vulnCheckPlugin;

import adstatic.tools.LocalInfo;
import soot.*;
import soot.jimple.Constant;
import soot.jimple.InvokeExpr;
import soot.jimple.Stmt;

import adstatic.tools.MyTools;
import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class WebViewFileCheck implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception {

        List<String> fileFuncList = new LinkedList<String>();
        fileFuncList.add("<android.webkit.WebSettings: void setAllowFileAccess(boolean)>");
        fileFuncList.add("<android.webkit.WebSettings: void setAllowFileAccessFromFileURLs(boolean)>");
        fileFuncList.add("<android.webkit.WebSettings: void setAllowUniversalAccessFromFileURLs(boolean)>");

        List<SootMethod> sms;
        SootMethod sm;
        Body body;
        Stmt stmt;
        InvokeExpr invokeExpr;
        List<HashMap<Local, LocalInfo>> localMapList = null;
        LinkedList<StmtInfo> stmtInfoList = new LinkedList<StmtInfo>();
        Value arg;
        for (SootClass sootClass : Scene.v().getApplicationClasses()) {

            if(!MyTools.isNeedAnalysis(sootClass.toString(), packageWhiteSet)){
                continue;
            }

            sms = sootClass.getMethods();

            int i = 0;
            while(i < sms.size()){
                sm = sms.get(i);

                if(sm.hasActiveBody()){
                    body = sm.getActiveBody();
                    for (Local webViewSettings : body.getLocals()) {

                        //如果函数内存在WebViewSetting类型的Local，对其进行函数调用检查
                        if(webViewSettings.getType().toString().equals("android.webkit.WebSettings")){

                            if(localMapList == null){
                                localMapList = MyTools.getLocalMapList(body);

                                //逐一对每个localMap进行分析
                                for (HashMap<Local, LocalInfo> localMap : localMapList) {
                                    if(localMap.containsKey(webViewSettings)){
                                        for (Value value : localMap.get(webViewSettings).invokeInfo) {
//                                            System.out.println(value);
                                            if(value instanceof InvokeExpr){
                                                if(fileFuncList.contains(((InvokeExpr) value).getMethod().getSignature())){

                                                    //检查函数setAllowFileAccess
                                                    if(((InvokeExpr) value).getMethod().getSignature().equals("<android.webkit.WebSettings: void setAllowFileAccess(boolean)>")){
                                                        arg = ((InvokeExpr) value).getArg(0);
                                                        if(arg instanceof Constant){
                                                            if(arg.toString().equals("1")){
                                                                stmtInfoList.add(new StmtInfo(sootClass.toString(), sm.toString(), value.toString()));
                                                                //System.out.println("find");
                                                            }
                                                        }
                                                    }
                                                    //检查函数setAllowFileAccessFromFileURLs
                                                    else if(((InvokeExpr) value).getMethod().getSignature().equals("<android.webkit.WebSettings: void setAllowFileAccessFromFileURLs(boolean)>")){
                                                        arg = ((InvokeExpr) value).getArg(0);
                                                        if(arg instanceof Constant){
                                                            if(arg.toString().equals("1")){
                                                                stmtInfoList.add(new StmtInfo(sootClass.toString(), sm.toString(), value.toString()));
                                                                //System.out.println("find");
                                                            }
                                                        }
                                                    }
                                                    //检查函数setAllowUniversalAccessFromFileURLs
                                                    else if(((InvokeExpr) value).getMethod().getSignature().equals("<android.webkit.WebSettings: void setAllowUniversalAccessFromFileURLs(boolean)>")){
                                                        arg = ((InvokeExpr) value).getArg(0);
                                                        if(arg instanceof Constant){
                                                            if(arg.toString().equals("1")){
                                                                stmtInfoList.add(new StmtInfo(sootClass.toString(), sm.toString(), value.toString()));
                                                                //System.out.println("find");
                                                            }
                                                        }
                                                    }

                                                }
                                            }

                                        }
                                    }
                                }
                            }

                        } // 单个webViewSetting的检测结束


                    } //method内所有Local的遍历
                }

                localMapList = null;
                i += 1;
            }//method循环
        }


        if(stmtInfoList.size() != 0){
            vulnRetuList.add(new VulnRetu("应用使用WebView，同时支持File协议，在特定情况下可能利用File协议获得应用的敏感数据", stmtInfoList));
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
