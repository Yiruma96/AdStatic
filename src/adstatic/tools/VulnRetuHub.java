package adstatic.tools;

import java.io.Serializable;
import java.util.*;

public class VulnRetuHub implements Serializable {

    private static final long serialVersionUID = -5809782578272943999L;

    HashMap<String, HashMap<String, LinkedList<VulnRetu>>> vulnMap;

    public VulnRetuHub(){
        vulnMap = new HashMap<String, HashMap<String, LinkedList<VulnRetu>>>();

        HashMap<String, LinkedList<VulnRetu>> type1 = new HashMap<>();
        type1.put("AndroidManifest.xml文件中debuggable属性值被设置为true，该程序可被任意调试，导致APP被恶意攻击者控制",new LinkedList<VulnRetu>());
        type1.put("AndroidManifest.xml文件中allowBackup属性值被设置为true，攻击者可通过adb backup对应用数据备份，导出应用中存储的数据，造成用户数据的泄露",new LinkedList<VulnRetu>());
        vulnMap.put("Manifest文件检测",type1);

        HashMap<String, LinkedList<VulnRetu>> type2 = new HashMap<>();
        type2.put("检测到应用存在代码动态加载的行为，应用可能隐藏有未检查到的恶意功能 | 另一方面，被动态加载的文件如果存放在明文目录，或是在加载中没有做完整性校验，则可能会被恶意代码注入并执行",new LinkedList<VulnRetu>());
        vulnMap.put("动态加载检测",type2);

        HashMap<String, LinkedList<VulnRetu>> type3 = new HashMap<>();
        type3.put("自实现的校验证书的X509TrustManager接口的checkServerTrusted()方法实现为空，未检查服务器是否可信，可能受到中间人劫持攻击",new LinkedList<VulnRetu>());
        type3.put("自实现的HostnameVerifier返回值恒为true，非有效校验，可能受到中间人劫持攻击",new LinkedList<VulnRetu>());
        type3.put("证书校验中接受任意域名，可能受到中间人劫持攻击",new LinkedList<VulnRetu>());
        type3.put("WebView忽略SSL证书错误检测，可能导致中间人攻击的威胁，可能导致隐私泄露",new LinkedList<VulnRetu>());
        vulnMap.put("证书校验检测",type3);

        HashMap<String, LinkedList<VulnRetu>> type4 = new HashMap<>();
        type4.put("参数设置为URI_ALLOW_UNSAFE，存在Intent协议解析越权漏洞，Intent Scheme URLs攻击通过浏览器或浏览器组件发送的Intent消息，绕过Android的权限控制，非法调用到APP的私有接口，进而可能导致远程拒绝服务（闪退）或隐私信息泄漏;",new LinkedList<VulnRetu>());
        vulnMap.put("Intent协议解析越权漏洞检测",type4);

        HashMap<String, LinkedList<VulnRetu>> type5 = new HashMap<>();
        type5.put("WebView开启了Javascript，并向其中添加了新的接口，在API<17时可能导致Web组件远程代码执行漏洞",new LinkedList<VulnRetu>());
        type5.put("WebView开启了Javascript，并没有移除默认接口，在API<17时可能导致Web组件远程代码执行漏洞",new LinkedList<VulnRetu>());
        type5.put("API>17时，javascript注解机制所提供的接口中检测到含有危险API",new LinkedList<VulnRetu>());
        vulnMap.put("JBOH漏洞检测",type5);

        HashMap<String, LinkedList<VulnRetu>> type6 = new HashMap<>();
        type6.put("应用程序加解密时密钥使用硬编码，攻击者通过反编译拿到密钥即可解密APP通信数据",new LinkedList<VulnRetu>());
        vulnMap.put("密钥硬编码检测",type6);

        HashMap<String, LinkedList<VulnRetu>> type7 = new HashMap<>();
        type7.put("检测到存在SYSTEM_ALERT_WINDOW(系统弹窗)权限，该应用可能在应用外弹窗",new LinkedList<VulnRetu>());
        type7.put("应用可能尝试使用toast实现全局弹窗，此项全局弹窗并不需要权限声明",new LinkedList<VulnRetu>());
        vulnMap.put("系统弹窗检测",type7);

        HashMap<String, LinkedList<VulnRetu>> type8 = new HashMap<>();
        type8.put("应用使用WebView，同时支持File协议，在特定情况下可能利用File协议获得应用的敏感数据",new LinkedList<VulnRetu>());
        type8.put("WebView并没有调用setSavePassword(false)，存在WebView明文存储密码漏洞",new LinkedList<VulnRetu>());
        vulnMap.put("WebView安全检测",type8);

        HashMap<String, LinkedList<VulnRetu>> type9 = new HashMap<>();
        type9.put("文件读写使用全局模式，可能造成隐私数据泄露",new LinkedList<VulnRetu>());
        vulnMap.put("全局文件读写漏洞检测",type9);

    }

    public void add(LinkedList<VulnRetu> vulnRetuList){
        for (VulnRetu vulnRetu : vulnRetuList) {
            add(vulnRetu);
        }
    }

    public void add(VulnRetu vulnRetu){

        if(vulnRetu != null){
            String desc = vulnRetu.getDesc();

            for (Map.Entry<String, HashMap<String, LinkedList<VulnRetu>>> entry : vulnMap.entrySet()) {
                if(entry.getValue().containsKey(desc)){
                    entry.getValue().get(desc).add(vulnRetu);
                }
            }
        }
    }

    @Override
    public String toString(){
        StringBuilder stringBuilder = new StringBuilder();

        for (Map.Entry<String, HashMap<String, LinkedList<VulnRetu>>> entry : vulnMap.entrySet()) {
            stringBuilder.append("==========================\r\n**");
            stringBuilder.append(entry.getKey());
            stringBuilder.append("\r\n\r\n");

            for (Map.Entry<String, LinkedList<VulnRetu>> entry2: entry.getValue().entrySet()) {
                stringBuilder.append(entry2.getKey());
                for (VulnRetu vulnRetu : entry2.getValue()) {
                    stringBuilder.append(vulnRetu);
                    stringBuilder.append("\r\n");
                }
                stringBuilder.append("\r\n\r\n");
            }
        }


        return stringBuilder.toString();
    }

//    public String VulnRetuHubtoJSON(){
//        HashMap<String, Integer> vulnCount = new HashMap<String, Integer>();
//        for (Map.Entry<String, LinkedList<VulnRetu>> entry : vulnMap.entrySet()) {
//            vulnCount.put(entry.getKey(), entry.getValue().size());
//        }
//        return MyTools.mapToJSON(vulnCount);
//    }

//    public String countToString(){
//        HashMap<String, Integer> vulnCount = new HashMap<String, Integer>();
//        for (Map.Entry<String, LinkedList<VulnRetu>> entry : vulnMap.entrySet()) {
//            vulnCount.put(entry.getKey(), entry.getValue().size());
//        }
//
//        StringBuilder stringBuilder  = new StringBuilder();
//        for (Map.Entry entry : vulnCount.entrySet()) {
//            stringBuilder.append(entry.getKey()+"\r\n");
//            stringBuilder.append(String.valueOf(entry.getValue())+"\r\n");
//        }
//
//        return stringBuilder.toString();
//    }

//    private void writeObject(java.io.ObjectInputStream out){
//        out.defaultWriteObject
//    }

}
