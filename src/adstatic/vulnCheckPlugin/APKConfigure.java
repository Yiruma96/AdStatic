package adstatic.vulnCheckPlugin;

import adstatic.tools.StmtInfo;
import adstatic.tools.VulnRetu;
import soot.Scene;
import soot.jimple.infoflow.android.axml.AXmlAttribute;
import soot.jimple.infoflow.android.axml.AXmlNode;
import soot.jimple.infoflow.android.manifest.ProcessManifest;

import java.util.LinkedList;
import java.util.Set;

public class APKConfigure implements VulnCheckPlugin {

    private LinkedList<VulnRetu> vulnRetuList = new LinkedList<VulnRetu>();

    public LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception{

        ProcessManifest  processManifest = new ProcessManifest(fullFilePath);
        AXmlNode application = processManifest.getApplication();

        AXmlAttribute<?> attr;

        attr = application.getAttribute("debuggable");
        if(attr != null && attr.getValue().equals(Boolean.TRUE))
        {
            vulnRetuList.add(new VulnRetu("AndroidManifest.xml文件中debuggable属性值被设置为true，该程序可被任意调试，导致APP被恶意攻击者控制", new StmtInfo(attr.toString(), null, null)));
            //应用属性里可能存在Debuggable这一项
        }

        attr = application.getAttribute("allowBackup");
        if(!(attr != null && attr.getValue().equals(Boolean.FALSE)))
        {
            vulnRetuList.add(new VulnRetu("AndroidManifest.xml文件中allowBackup属性值被设置为true，攻击者可通过adb backup对应用数据备份，导出应用中存储的数据，造成用户数据的泄露", new StmtInfo((attr==null? null:attr.toString()), null, null)));
            //应用属性里并没有allowBackup=false的禁止选项，可能会存在问题

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
