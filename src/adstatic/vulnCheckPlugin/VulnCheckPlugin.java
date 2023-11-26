package adstatic.vulnCheckPlugin;

import adstatic.tools.VulnRetu;
import soot.Scene;

import java.util.LinkedList;
import java.util.Set;

public interface VulnCheckPlugin {

    LinkedList<VulnRetu> check(String fullFilePath, Set<String> packageWhiteSet) throws Exception;

    LinkedList<VulnRetu> getResult();

    void printVulnCheckResult();
}
