package adstatic.test;

import adstatic.tools.HighRiskAPIExtract;
import adstatic.tools.MyTools;
import org.json.JSONObject;
import soot.*;
import soot.jimple.LongConstant;
import soot.jimple.StringConstant;
import soot.options.Options;

import java.io.*;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.*;

public class FunTest {



    public enum object{
        /*消息传输*/
        MESSAGE,
        /*文件传输*/
        FILE,
    }

    public static List<Value> glueList(List<Value> list1, List<Value> list2){
        if(list1 == list2)
            return list1;

        List<Value> list = new LinkedList<Value>();

        int index = 0;
        while(true){

            //检测到越界后终止循环，并将长串多出来的一截录入
            if(index >= list1.size() || index >= list2.size()) {
                int indexLimit = (list1.size() < list2.size())? list1.size() : list2.size();  //indexLimit取两个列表中最小者
                if (list1.size() > list2.size())
                    list.addAll(list1.subList(index, list1.size()));
                else if(list1.size() < list2.size())
                    list.addAll(list2.subList(index, list2.size()));
                break;
            }

            //相同的话取其一录入，不同的话两个都录入
            if(list1.get(index) == (list2.get(index)))
                list.add(list1.get(index));
            else{
                list.add(list1.get(index));
                list.add(list2.get(index));
            }

            index += 1;
        }

        return list;
    }


    public static void main(String[] args) throws Exception {

//        StringConstant stringConstant = StringConstant.v("hahaha");
//        LongConstant longConstant = LongConstant.v(45);
//        StringConstant stringConstant1 = StringConstant.v("lalala");
//        MyTools.constantGlue(stringConstant, longConstant);

//        LinkedList<String> test = new LinkedList<String>();
//        test.add("aa");
//        System.out.println(test);
//        test.clear();
//        System.out.println(test);

//
//        String filePath = "F:/apk/base.apk";
//        System.out.println((int)(new File(filePath).length()/1000));


//        String apkName = fullFilePath.split("/")[1];
//        System.out.println(apkName);

//        String str = "{\"classify\":\"['1']\",\"privacy\":\"\",\"vuln\":\"==========================\\r\\n**AndroidManifest.xml文件中debuggable属性值被设置为true，该程序可被任意调试，导致APP被恶意攻击者控制\\r\\n\\r\\ndebuggable=\\\"true\\\"\\r\\n\\r\\n\\r\\n==========================\\r\\n** AndroidManifest.xml文件中allowBackup属性值被设置为true，攻击者可通过adb backup对应用数据备份，导出应用中存储的数据，造成用户数据的泄露\\r\\n\\r\\nallowBackup=\\\"true\\\"\\r\\n\\r\\n\\r\\n\"}\n";
//        JSONObject json = new JSONObject(str);
//        System.out.println(json.toMap());

        Long start = new Date().getTime();
        Thread.sleep(1000);
        Long end = new Date().getTime();
        System.out.println(Integer.toString((int)(end-start)/1000));

    }
}
