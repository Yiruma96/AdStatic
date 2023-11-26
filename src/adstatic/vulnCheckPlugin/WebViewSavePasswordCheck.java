package adstatic.vulnCheckPlugin;

import adstatic.tools.LocalInfo;
import adstatic.tools.MyTools;
import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;
import soot.*;
import soot.jimple.Constant;
import soot.jimple.InvokeExpr;
import soot.jimple.Stmt;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

public class WebViewSavePasswordCheck implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    /**
     * Fix it
     android代码：
     WebView webView = (WebView) findViewById(R.id.parent);
     webView.getSettings()

     WebView webView1 = (WebView) findViewById(R.id.parent);
     webView1.getSettings()
     从jimple中可以看到，这里面的webViewSetting其实是指向了一个对象，所以检测可能产生两个webViewSetting但只报一个的现象
     */

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception {

        //漏洞只在API小于17的时候存在，17之后取消了这个函数
        if(Scene.v().getAndroidAPIVersion() >= 17){
            return vulnRetuList;
        }

        //String getWebSettingFuncSig = "<android.webkit.WebView: android.webkit.WebSettings getSettings()>";
        String webViewSavePwFuncSig = "<android.webkit.WebSettings: void setSavePassword(boolean)>";

        List<SootMethod> sms;
        SootMethod sm;
        Body body;
        Stmt stmt;
        InvokeExpr invokeExpr;
        List<HashMap<Local, LocalInfo>> localMapList = null;
        Value arg;
        boolean savePasswordFalseTag = false;
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
                            savePasswordFalseTag = false;  //在每一个webViewSetting循环中将禁用保存密码的语句标志设置为false，最后结果分析由此判断

                            if(localMapList == null) {
                                localMapList = MyTools.getLocalMapList(body);
                            }

                            //逐一对每个localMap进行分析
                            for (HashMap<Local, LocalInfo> localMap : localMapList) {
                                if(localMap.containsKey(webViewSettings)){
                                    for (Value value : localMap.get(webViewSettings).invokeInfo) {
                                        if(value instanceof InvokeExpr){
                                            if(((InvokeExpr) value).getMethod().getSignature().equals(webViewSavePwFuncSig)){
                                                //找到webViewSettings调用的savePassword函数，开始检查其参数
                                                arg = ((InvokeExpr) value).getArg(0);
                                                if(arg instanceof Constant){
                                                    if(arg.toString().equals("0")){
                                                        savePasswordFalseTag = true;
                                                    }
                                                }
                                            }
                                        }

                                    }
                                }
                            }

                            //进行结果分析
                            if(savePasswordFalseTag == false){
                                //System.out.println("find");
                                vulnRetuList.add(new VulnRetu("WebView并没有调用setSavePassword(false)，存在WebView明文存储密码漏洞", new StmtInfo(sootClass.toString(), sm.toString(), null)));
                                //System.out.println("find");
                            }

                        } // 单个webViewSetting的检测结束


                    } //method内所有Local的遍历
                }

                localMapList = null;
                i += 1;
            }//method循环
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
