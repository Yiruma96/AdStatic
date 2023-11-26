package adstatic;

import adstatic.tools.MyTools;
import adstatic.tools.VulnRetuHub;
import adstatic.vulnCheckPlugin.*;
import soot.*;
import soot.options.Options;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Arrays;
import java.util.Base64;
import java.util.Set;

public class VulnCheck {

    public static String doVulnCheck(String fullFilePath) throws Exception {

        Set<String> packageWhiteSet = MyTools.getPackageWhiteList();
        VulnRetuHub vulnRetuHub = new VulnRetuHub();

        APKConfigure apkConfigure = new APKConfigure();
        vulnRetuHub.add(apkConfigure.check(fullFilePath, packageWhiteSet));
        //apkConfigure.printVulnCheckResult();
        System.out.println("APKConfigure finish\r\n===========================");

        DynamicLoadingCheck dynamicLoadingCheck = new DynamicLoadingCheck();
        vulnRetuHub.add(dynamicLoadingCheck.check(fullFilePath, packageWhiteSet));
        //dynamicLoadingCheck.printVulnCheckResult();
        System.out.println("DynamicLoadingCheck finish\r\n===========================");

        HTTPSSecurityCheck httpsSecurityCheck = new HTTPSSecurityCheck();
        vulnRetuHub.add(httpsSecurityCheck.check(fullFilePath, packageWhiteSet));
        //httpsSecurityCheck.printVulnCheckResult();
        System.out.println("HTTPSSecurityCheck finish\r\n===========================");

        IntentSchemeURLCheck intentSchemeURLCheck = new IntentSchemeURLCheck();
        vulnRetuHub.add(intentSchemeURLCheck.check( fullFilePath, packageWhiteSet));
        //intentSchemeURLCheck.printVulnCheckResult();
        System.out.println("IntentSchemeURLCheck finish\r\n===========================");

        JBOHCheck jbohCheck = new JBOHCheck();
        vulnRetuHub.add(jbohCheck.check(fullFilePath, packageWhiteSet));
        //jbohCheck.printVulnCheckResult();
        System.out.println("JBOHCheck finish\r\n===========================");

        PlainKeyCheck plainKeyCheck = new PlainKeyCheck();
        vulnRetuHub.add(plainKeyCheck.check(fullFilePath, packageWhiteSet));
        //plainKeyCheck.printVulnCheckResult();
        System.out.println("PlainKeyCheck finish\r\n===========================");

        SSLErrorHandlerCheck sslErrorHandlerCheck = new SSLErrorHandlerCheck();
        vulnRetuHub.add(sslErrorHandlerCheck.check(fullFilePath, packageWhiteSet));
        //sslErrorHandlerCheck.printVulnCheckResult();
        System.out.println("SSLErrorHandlerCheck finish\r\n===========================");

        SystemAlertCheck systemAlertCheck = new SystemAlertCheck();
        vulnRetuHub.add(systemAlertCheck.check(fullFilePath, packageWhiteSet));
        //systemAlertCheck.printVulnCheckResult();
        System.out.println("SystemAlertCheck finish\r\n===========================");

        WebViewFileCheck webViewFileCheck = new WebViewFileCheck();
        vulnRetuHub.add(webViewFileCheck.check(fullFilePath, packageWhiteSet));
        //webViewFileCheck.printVulnCheckResult();
        System.out.println("WebViewFileCheck finish\r\n===========================");

        WebViewSavePasswordCheck webViewSavePasswordCheck = new WebViewSavePasswordCheck();
        vulnRetuHub.add(webViewSavePasswordCheck.check(fullFilePath, packageWhiteSet));
        //webViewSavePasswordCheck.printVulnCheckResult();
        System.out.println("WebViewSavePasswordCheck finish\r\n===========================");

        WorldModeCheckPlugin worldModeCheckPlugin = new WorldModeCheckPlugin();
        vulnRetuHub.add(worldModeCheckPlugin.check(fullFilePath, packageWhiteSet));
        //worldModeCheckPlugin.printVulnCheckResult();
        System.out.println("WorldModeCheckPlugin finish\r\n===========================");


        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ObjectOutputStream oos = new ObjectOutputStream(baos);
        oos.writeObject(vulnRetuHub);

        return Base64.getEncoder().encodeToString(baos.toByteArray());

//        byte[] xiedecode = Base64.getDecoder().decode(xieencode);
//
//        ObjectInputStream objectInputStream= new ObjectInputStream(new ByteArrayInputStream(xiedecode));
//        VulnRetuHub xie = (VulnRetuHub)objectInputStream.readObject();
//        System.out.println(xie.toString());
//
//        return vulnRetuHub.toString();

    }



    public static void main(String[] args) throws Exception{

        String fullFilePath = "F:/apk/illusion.apk";

        Options.v().set_src_prec(Options.src_prec_apk);
        Options.v().set_output_format(Options.output_format_jimple);
        Options.v().set_android_jars("./platforms");
        Options.v().set_exclude(Arrays.asList("java", "sun", "wlc", "com.taobao.dp", "dxoptimizer"));
        Options.v().set_process_dir(Arrays.asList(fullFilePath));
        Options.v().set_allow_phantom_refs(true);

        Scene.v().loadNecessaryClasses();
        PackManager.v().runPacks();

        VulnCheck.doVulnCheck(fullFilePath);
        System.out.println(VulnCheck.doVulnCheck(fullFilePath));

    }
}
