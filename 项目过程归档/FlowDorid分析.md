### 如何配置FlowDorid

FlowDorid需要以下五个项目作为Moudle相互依赖才能运行

- soot
- jasmine
- heros
- soot-infoflow
- soot-infoflow-android

从其他博客中找到了一张描述依赖关系的图，如下图所示：

![](https://ws1.sinaimg.cn/large/93e435bbly1fnuy686fxwj20be0cf3z4.jpg)

其实这些依赖关系并不用我们手动配置，在github中的这些项目都使用maven进行的环境配置保存，我们只需要将着五个项目导入到一个工作空间中，然后使用maven进行自动配置就可以了





###  FlowDorid代码分析

> 分析中对代码做了适当提取，删除了一些繁琐的配置代码以突出当前代码块的工作重点

现在我们尝试从源代码去运行程序并进行分析，分析的入口点在这里：

**/soot-infoflow-android/src/soot/jimple/infoflow/android/TestApps/Test.java**

简单阅读可以看到这个类里进行了许多用户输入参数的分析工作，并将用户配置传入SetupApplication.java中进行处理

另外一个我们需要着重分析的类是

**/soot-infoflow-android/src/soot/jimple/infoflow/android/SetupApplication.java**

这个类用于在soot-infoflow包进行数据流分析之前，进行一些必要的操作，比如**apk的反编译，入口点的寻找，全局流程图的构建，source点sink点的收集，回调函数的分析**等等，最后调用数据流分析对象进行分析



首先先看入口函数，这一块逻辑也比较简单

main函数看起来一坨，其实都是在进行命令行参数的解析，提取出要解析的apk文件，最后传入apk文件的绝对路径，以及androidJar的路径，调用runAnalysis进行解析

```java
// repeatCount为对同一个apk文件进行重复分析的次数
while (repeatCount > 0) {
	//每次分析前要保证做一次内存清理
	System.gc();
	//args[1]为andorid.jar文件的存放目录
	//分析方式有设置超时时间的，没有设置的几种选项，调用runAnalysis类的函数，传入apk文件的路径以及android.jar文件的位置
	if (timeout > 0)
		runAnalysisTimeout(fullFilePath, args[1]);
	else if (sysTimeout > 0)
		runAnalysisSysTimeout(fullFilePath, args[1]);
	else
		runAnalysis(fullFilePath, args[1]);
	repeatCount--;
}
```

然后我们接着跟踪到runAnalyssi函数中

这里初始化了一个很重要的类，SetupApplication.java，接下来的主要工作就是根据用户的配置往app对象里面传入一些参数，在最后，调用app中的函数接着进行分析

```java
final SetupApplication app;
if (null == ipcManager)
{
	app = new SetupApplication(androidJar, fileName);
}
else
{
	app = new SetupApplication(androidJar, fileName, ipcManager);
}
```

我们向app对象中传入config对象，这个对象里保存着我们在命令行中与数据流分析有关的一些配置

在parseAdditionalOptions()函数中，通过对命令行的解析，对config进行配置

```java
app.setConfig(config);
```

config对象为InfoflowAndroidConfiguration类，属于soot-infoflow-android包，这个类继承于soot-infoflow包中的InfoflowConfiguration类，两个类的成员变量结合起来，向数据流分析过程提供用户在命令行中所既定好的配置，对这两个类的简单了解有助于我们认识到数据流分析需要什么样的信息

```java
//支持的回调函数分析方式，一种是默认高精度的，一种是快速的
public enum CallbackAnalyzer {
	/**
	 * The highly-precise default analyzer
	 */
	Default,
	/**
	 * An analyzer that favors performance over precision
	 */
	Fast
}

private PathBuilder pathBuilder = PathBuilder.ContextInsensitiveSourceFinder;
/**
PathBuilder用于指定在Source与Sink两点间路径构建的方式，可以看到在config默认选择的是
ContextInsensitiveSourceFinder，也就是对内容不敏感，同时不记录SourceSink间的路径，
只是寻找两点间的联系关系。
 * 枚举类型中全部选项如下：
 * 递归的，对内容敏感的，对内容不敏感的，内容不敏感+不记录路径，内部使用的模式
 */
public enum PathBuilder {
	/**
	 * Simple context-insensitive, single-threaded, recursive approach to
	 * path reconstruction. Low overhead for small examples, but does not
	 * scale.
	 */
	Recursive,
	/**
	 * Highly precise context-sensitive path reconstruction approach. For
	 * a large number of paths or complex programs, it may be slow.
	 */
	ContextSensitive,
	/**
	 * A context-insensitive path reconstruction algorithm. It scales well,
	 * but may introduce false positives.
	 */
	ContextInsensitive,
	/**
	 * Very fast context-insensitive implementation that only finds
	 * source-to-sink connections, but no paths.
	 */
	ContextInsensitiveSourceFinder,
	/**
	 * An empty implementation that not reconstruct any paths and always
	 * returns an empty set. For internal use only.
	 */
	None
}

//数据流分析中是否要忽略系统包比如android的支持库？为了效率默认是禁止的
private boolean ignoreFlowsInSystemPackages = false;

//Source方法以及Sink方法的实现是否也应该被分析？
private boolean inspectSources = false;
private boolean inspectSinks = false;

//在Soot中声明的库类的类是否应从数据流分析中排除，同样建议禁止
private boolean excludeSootLibraryClasses = false;


/**
 * Enumeration containing the aliasing algorithms supported by FlowDorid
 * 枚举类型，为FlowDorid支持的别名算法，默认为FlowSensitive
 */
public enum AliasingAlgorithm {
	/**
	 * A fully flow-sensitive algorithm based on Andromeda
	 * 基于Andromeda的完全流敏感算法
	 */
	FlowSensitive,
	/**
	 * A flow-insensitive algorithm based on Soot's point-to-sets
	 * 基于soot的point-to-sets的流敏感算法
	 */
	PtsBased,
	/**
	 * Do not perform any alias analysis
	 * 不进行任何别名分析
	 */
	None,
	/**
	 * Perform lazy aliasing. Propagate every taint everywhere to on-demand
	 * check whether it aliases with any value access
	 * 执行惰性混淆，随时在需要检查的时候传播每个污点，以检查是否有任何价值访问的别名
	 */
	Lazy
}

/*
 * Enumeration containing the callgraph algorithms supported for the use with
 * the data flow tracker
 * 枚举类型，几种调用图生成算法，默认为AutomaticSelection
 */
public enum CallgraphAlgorithm {
	AutomaticSelection,
	CHA,
	VTA,
	RTA,
	SPARK,
	GEOM,
	OnDemand
}

/**
 * Enumeration containing the supported data flow solvers
 * 枚举类型，几种支持的数据流求解算法，默认为ContextFlowSensitive
 */
public enum DataFlowSolver {
	/**
	 * Use a flow- and context-sensitive solver
	 * 使用对流与上下文都敏感的求解方式
	 */
	ContextFlowSensitive,
	
	/**
	 * Use a context-sensitive, but flow-insensitive solver
	 * 使用上下文敏感，但对流不敏感的求解方式
	 */
	FlowInsensitive
}

```

在项目中，可以找到名为EasyTaintWrapperSource.txt的文件，文件中记录着一些污点包装的函数，关于TaintWrapper污点包装器这个概念，举个例子：有个变量a，变量b，以及函数f()，关系为b = f(a)，如果a是Source点，那么经过这条语句后，b会不会变成Source继续追踪，与f()函数有关，上面的txt文件中就记录着这些函数。

下面的几行代码从文件中提取出这些函数并传到easyTaintWrapper对象中，最后赋值到taintWrapper这个对象并传递到app中

```java
final ITaintPropagationWrapper taintWrapper;
final EasyTaintWrapper easyTaintWrapper;
File twSourceFile = new File("../soot-infoflow/EasyTaintWrapperSource.txt");
easyTaintWrapper = new EasyTaintWrapper(twSourceFile);
taintWrapper = easyTaintWrapper;
//最后将配置好的taintWrapper传到app里面去
app.setTaintWrapper(taintWrapper);
```

向app中传递一个数据流分析结果的处理类，这个类实现了ResultsAvailableHandler接口，我们主要工作是重写里面的onResultsAvailable()方法

```java
app.addResultsAvailableHandler(new MyResultsAvailableHandler());
```

调用app中的app.runInfoflow("SourcesAndSinks.txt")函数，从这个函数入口出来后就运行结束了，因此我们接下来转到SetupApplication.java中的代码分析

```java
app.runInfoflow("SourcesAndSinks.txt")
```

从SourcesAndSinks.txt中读取记录的Source点与Sink点，来构造parser对象

```java
ISourceSinkDefinitionProvider parser = null;
parser = PermissionMethodParser.fromFile(sourceSinkFile);

//在接下来的函数中，parser名字变成了sourceAndSinks，将此对象传到成员变量
//this.sourceSinkProvider中
this.sourceSinkProvider = sourcesAndSinks;
```

创建两个`Set<Stmt>`来收集找到的source点与sink点

```java
this.collectedSources = config.getLogSourcesAndSinks() ? new HashSet<Stmt>() : null;
this.collectedSinks = config.getLogSourcesAndSinks() ? new HashSet<Stmt>() : null;
```

开始使用soot对apk文件进行反编译

```java
initializeSoot(true);
```

```java
private void initializeSoot(boolean constructCallgraph) {
	// 清空之前soot操作的所有缓存值
	G.reset();

	//相当于soot命令：-no-bodies-for-excluded，表示不加载未被包含的类
	Options.v().set_no_bodies_for_excluded(true);
	//相当于soot命令：-allow-phantom-refs，表示是否加载未被解析的类
	Options.v().set_allow_phantom_refs(true);
	//相当于soot命令：-f FORMAT -output-format FORMAT，设置输出的格式，此处设置为不输出，因此不会输出反编译后的jimple文件
	Options.v().set_output_format(Options.output_format_none);
	//相当于soot命令：-w -whole-program，以全局应用的模式运行
	Options.v().set_whole_program(constructCallgraph);
	//相当于soot命令：-process-path DIR -process-dir DIR，待反编译文件所在的文件夹，此处是apk文件地址
	Options.v().set_process_dir(Collections.singletonList(apkFileLocation));
	if (forceAndroidJar)
		//相对于soot命令：-force-android-jar PATH，表示强制在该路径下寻找android.jar文件
		Options.v().set_force_android_jar(androidJar);
	else
		//相当于soot命令：-android-jars PATH，表示在该路径下寻找android.jar文件
		Options.v().set_android_jars(androidJar);
	//相当于soot命令：-src-prec FORMAT，表示反编译后文件的生成文件类型，此处为jimple类型
	Options.v().set_src_prec(Options.src_prec_apk_class_jimple);
	//是否记录代码所在行
	Options.v().set_keep_line_number(false);
	//是否记录代码偏移量
	Options.v().set_keep_offset(false);
	Options.v().set_throw_analysis(Options.throw_analysis_dalvik);
  
  	// **使用soot基于前面的配置进行反编译
	Scene.v().loadNecessaryClasses();

	// Make sure that we have valid Jimple bodies
	PackManager.v().getPack("wjpp").apply();
}
```

这个函数对Manifest文件进行解析（创建ProcessManifest对象），主要目的是从此文件中获取apk的入口点。另外就是创建了ARSCFileParser对象，并存储到this.resource中，并调用了parser()解析方法

```java
parseAppResources();
```

```java
private void parseAppResources() throws IOException, XmlPullParserException {
	//反编译AndroidManifest.xml文件，并将结果放在manifest对象中
	this.manifest = new ProcessManifest(apkFileLocation);
	//创建存储入口点的对象，类型是Set<SootClass>
	this.entrypoints = new HashSet<>();
  	//从manifest文件中获得apk的入口点，并将对象的SootClass对象存储到上面的列表中
  	for (String className : manifest.getEntryPointClasses()){
		this.entrypoints.add(Scene.v().getSootClassUnsafe(className));
	}
  
    //创建这里是对ARSC文件进行反编译并进行解析
  	this.resources = new ARSCFileParser();
	this.resources.parse(apkFileLocation);
}
```

接下来的工作大致就是从入口点构建虚拟的main方法，然后对每一个入口点的虚拟main方法都进行数据流追踪，下面这一块代码就是初始化了一个数据流分析对象InPlaceInfoflow，采用工厂方法，对数据流分析我们就追溯到这个函数为止了，再深入还会有很深很庞大的调用，在其他模块中实现

之后创建一个结果记录器并传递到info里面，应该是用来存储每一次的数据流追踪信息的

```java
// 实例化了一个比较重要的对象--info，是Infoflow类的对象，里面的runAnalysis时用来进行真正数据流分析的
InPlaceInfoflow info = createInfoflow();
MultiRunResultAggregator resultAggregator = new MultiRunResultAggregator();
//这里增加一个结果记录器到info里面，存储输出信息
info.addResultsAvailableHandler(resultAggregator);
```

因为一个apk可能寻找到多个入口点，这里再次创建一个`List<SootClass>`入口点列表entrypointWorklist，与之前的entrypoints不同的是，根据配置来选择是将entrypoints中所记录的入口点存放到entrypointWorklist中，还是将所有的入口点融合成一个大的虚拟入口点——一个名为dummyEntrypoint的，类型为dummy的SootClass，之后将此dummyEntrypoint存放到entrypointWorklist中，这种情况下工作列表中只有一个SootClass需要分析

```java
List<SootClass> entrypointWorklist;
if (config.getOneComponentAtATime())
	entrypointWorklist = new ArrayList<SootClass>(entrypoints);
else {
	entrypointWorklist = new ArrayList<>();
	SootClass dummyEntrypoint;
	//看soot中是否包含dummy类，如果没有的话手动创建一个
	if (Scene.v().containsClass("dummy"))
		dummyEntrypoint = Scene.v().getSootClass("dummy");
	else
		dummyEntrypoint = new SootClass("dummy");
	entrypointWorklist.add(dummyEntrypoint);
}
```

数据流分析是基于为每一个入口点SootClass创建一个虚拟的main方法(SootMethod类型)，之后对这个虚拟main方法进行数据流分析的，所以接下来需要对entrypointWorklist中的每一个入口点进行遍历，这里每一个循环内从entrypointWorklist中获取一个入口点——一个entrypoint实例

注意，接下来的代码块都是在此while循环内的

```java
//对当次入口点进行数据流分析，注意这里就是说只有一个entrypoint了
while (!entrypointWorklist.isEmpty()) {
	SootClass entrypoint = entrypointWorklist.remove(0);
	//xxx...  将在后面介绍的代码块
}
```

calculateCallback()方法，里面包含着很丰富的操作，首先是利用Soot的全局流程图开始完成了回调函数计算，另外对Source点与Sink点也进行了收集，下面首先详细介绍回调函数的收集方法

```java
if (config.getOneComponentAtATime())
	calculateCallbacks(sourcesAndSinks, entrypoint);
else
	calculateCallbacks(sourcesAndSinks);
```

回调函数的收集使用的是Soot所提供的Inter-procedural analysis（程序间分析），与之对应的是Intra-procedural execution flow（函数内执行数据流分析）。这里先对inter-procedural analysis进行介绍：

Soot在运行期间可以分成许多Pack，比如cg，wjtp，wjop等都是，我们可以通过以下方式来运行

```java
PackManager.v().getPack("cg").apply();
PackManager.v().getPack("wjtp").apply();
```

这些Pack的运行需要遵守一定的执行顺序，比如wjtp运行前一定要先执行cg，我们之后需要用到的两个Pack分别是cg以及wjtp，cg即call-graph generation，用于生成全局的调用图，wjtp即whole Jimple transformation pack，用于做全局的传输分析，许多依赖于全局传播的组建都需要添加到wjtp这个Pack中来运行。

![](https://ws1.sinaimg.cn/large/93e435bbly1fnw67j24ivj20qj0fl754.jpg)

另外每个Pack内还有着更细的划分，即为Transform对象，一般用wjtp.xxx来表示，关于这个对象有如下操作

```java
//Transform的迭代器用于遍历wjtp内所有的Transform对象
PackManager.v().getPack("wjtp").iterator();
//在wjtp中增加一个Transform
PackManager.v().getPack("wjtp").add(Transform);
//在wjtp中移除一个Transform，因为这里对象是phaseName，参数写的时候要加上前面的Pack名，如wjtp.lfp
PackManager.v().getPack("wjtp").remove(phaseName);
```

我们接下来的两个自定义操作实际上就是在wjtp中增加了两个Transform，之后`PackManager.v().getPack("wjtp").apply();`，当然，Soot自身已经包含了一些Transform了，从用迭代器的遍历中可以看到，wjtp中包含的是wjtp.mhp，wjtp.tn，wjtp.rdc这三项，关于这些内置Transform的详细解释可以在[Soot Wiki](https://soot-build.cs.uni-paderborn.de/public/origin/develop/soot/soot-develop/options/soot_options.htm)中找到

OK，接下来就开始分析FlowDorid中回调函数收集这一部分

之前已经介绍过了，这个函数中包含两个部分，一部分是回调函数收集，一部分是创建一个SourceSinkManager，具体代码如下：

```java
private void calculateCallbacks(ISourceSinkDefinitionProvider sourcesAndSinks, SootClass entryPoint)
		throws IOException, XmlPullParserException {
	// Add the callback methods
	LayoutFileParser lfp = null;
	if (config.getEnableCallbacks()) {
		if (callbackClasses != null && callbackClasses.isEmpty()) {
			logger.warn("Callback definition file is empty, disabling callbacks");
		} else {
			//lfp-->LayoutFileParser用于存储对布局文件的反编译结果，初始化时需要之前的AscrFileParse对象
			lfp = new LayoutFileParser(this.manifest.getPackageName(), this.resources);
			//根据config采用快速或是默认的回调函数分析，默认是default的
			switch (config.getCallbackAnalyzer()) {
			case Fast:
				calculateCallbackMethodsFast(lfp, entryPoint);
				break;
			case Default:
				//传入图层文件解析对象，当前的入口点，来进行回调函数分析
				calculateCallbackMethods(lfp, entryPoint);
				break;
			default:
				throw new RuntimeException("Unknown callback analyzer");
			}
		}
	} else if (!config.getUseExistingSootInstance()) {
		// Create the new iteration of the main method
		createMainMethod(null);
		constructCallgraphInternal();
	}

	logger.info("Entry point calculation done.");

	if (this.sourceSinkProvider != null) {
		Set<CallbackDefinition> callbacks;
		if (entryPoint == null)
			callbacks = this.callbackMethods.values();
		else
			callbacks = this.callbackMethods.get(entryPoint);

		// Create the SourceSinkManager
		sourceSinkManager = createSourceSinkManager(lfp, callbacks);
	}
}
```

回调函数收集主要从两个地方收集，一个是xml资源文件，另一个apk的源代码

关于xml资源文件，我们需要创建一个LayoutFileParser的实例——lfp，用于apk中布局文件的反编译，这里面需要用到之前解析出来的ARSC文件。之后再进行一层的调用，我们接着跟进去

```java
摘自上面的calculateCallbacks函数：
lfp = new LayoutFileParser(this.manifest.getPackageName(), this.resources);
calculateCallbackMethods(lfp, entryPoint);
```

这个函数中实现了对xml资源文件以及apk源代码中回调函数的收集工作，首先是代表apk源代码对象的jimpleClass，以及代表xml资源文件的lpf

之前我们说过，回调函数的收集工作都是通过将操作绑定到wjtp这个Pack身上，然后调用`PackManager.v().getPack("wjtp").apply();`来完成的，在下面的函数中，`jimpleClass.collectCallbackMethods();`以及`lfp.parseLayoutFile(apkFileLocation);`这两条语句中，就分别向wjtp中添加了两个Transform

然后依照Pack的执行顺序，我们可以看到在wjtp的apply之前，还调用了constructCallgraphInternal()函数，这个函数中调用了`PackManager.v().getPack("cg").apply();`用于生成全局调用图Callgraph，之后我们就可以运行wjtp了：`PackManager.v().getPack("wjtp").apply();`

另外我们还应该注意到createMainMethod()这个函数，这个函数的参数是当前的入口点SootClass，在这个函数里面，将会构建一个虚拟的dummyMainMethod，类型为SootMethod，通过`dummyMainMethod = createEntryPointCreator(component).createDummyMain();`构建，并通过`Scene.v().setEntryPoints(Collections.singletonList(dummyMainMethod));`将其设置为分析的真正入口点，之后cg的运行需要依赖这个入口点来进行调用图构建，所以这个方法也是相当重要的

wjtp运行结束之后，我们的收集工作也就算完成了，将找到的回调函数收集到this.callbackMethods中，至此，回调函数收集完成，我们接着回到calculateCallbacks()中来，看下第二部分做了什么

```java
private void calculateCallbackMethods(LayoutFileParser lfp, SootClass component) throws IOException {
	AbstractCallbackAnalyzer jimpleClass = callbackClasses == null
		? new DefaultCallbackAnalyzer(config, entryPointClasses, callbackFile)
		: new DefaultCallbackAnalyzer(config, entryPointClasses, callbackClasses);
	jimpleClass.addCallbackFilter(new AlienHostComponentFilter(entrypoints));
	jimpleClass.addCallbackFilter(new ApplicationCallbackFilter(entrypoints));
	jimpleClass.collectCallbackMethods();
	
	lfp.parseLayoutFile(apkFileLocation);
	
    createMainMethod(component);
	constructCallgraphInternal();
	PackManager.v().getPack("wjtp").apply();
	
	if (this.callbackMethods.putAll(jimpleClass.getCallbackMethods()))
		hasChanged = true;

	if (entrypoints.addAll(jimpleClass.getDynamicManifestComponents()))
		hasChanged = true;

	// Collect the XML-based callback methods
	if (collectXmlBasedCallbackMethods(lfp, jimpleClass))
		hasChanged = true;
}
```

在回调函数收集完成后，FlowDorid创建了一个sourceSinkManager对象，使用工厂方法，我们跟进函数

可以看到sourceSinkManager这个实例为AccessPathBasedSourceSinkManager类型，里面包含了有Sources，Sinks，Callbacks，lfp，PackageName，Packages等等一系列的资源。关于这个对象的实际作用，项目中注释描述为Creates an instance of {@link ISourceSinkManager} that defines what FlowDorid shall consider as a source or sink, respectively.即FlowDorid是应该做source还是sink，这一块我也没太搞懂。。。

```java
if (this.sourceSinkProvider != null) {
	Set<CallbackDefinition> callbacks;
	if (entryPoint == null)
		callbacks = this.callbackMethods.values();
	else
		callbacks = this.callbackMethods.get(entryPoint);

	// Create the SourceSinkManager
	sourceSinkManager = createSourceSinkManager(lfp, callbacks);
}
```

```java
protected ISourceSinkManager createSourceSinkManager(LayoutFileParser lfp, Set<CallbackDefinition> callbacks) {
	AccessPathBasedSourceSinkManager sourceSinkManager = new AccessPathBasedSourceSinkManager(
			this.sourceSinkProvider.getSources(), this.sourceSinkProvider.getSinks(), callbacks,
			config.getLayoutMatchingMode(), lfp == null ? null : lfp.getUserControlsByID());

	sourceSinkManager.setAppPackageName(this.manifest.getPackageName());
	sourceSinkManager.setResourcePackages(this.resources.getPackages());
	sourceSinkManager.setEnableCallbackSources(this.config.getEnableCallbackSources());
	sourceSinkManager.setEnableLifecycleSources(this.config.getEnableLifecycleSources());
	return sourceSinkManager;
}
```

在calculateCallbacks()函数分析结束后，接下来就是数据流分析工作了，负责寻找source到sink之前的连接关系，虽然只有简单的一句话，里面却包含了非常深层次的调用，到这里我就再没有追下去，日后还有机会使用到Soot的时候再行分析吧

```java
info.runAnalysis(sourceSinkManager, dummyMainMethod);
```



### 获取FlowDorid分析的结果

还记得在最初的时候，我们向app中传入了一个结果处理类MultiRunResultAggregator吗？我们通过实现ResultsAvailableHandler接口创造了这个类，随后执行`app.addResultsAvailableHandler(new MyResultsAvailableHandler());`，将这个结果处理类传送到了app里。在FlowDorid的污点分析结束后，就会调用我们结果处理类中所重写的onResultsAvailable()方法以类似回调的方式来执行结果处理函数，所以通过实现结果处理类，我们可以对污点分析的结果进行二次分析。

大致结构如下：

```java
private static class MyResultAggregator implements ResultsAvailableHandler{
    @Override
    public void onResultsAvailable(IInfoflowCFG cfg, InfoflowResults results) {
          //xxx...  
	}
}
```



用于保存污点分析结果的对象是results，属于InflflowResults，跟进去看一下

里面主要存储信息的为这一个变量，一个HashMap用于存储找到了相互之间连接的Source与Sink

```java
public class InfoflowResults {
		
	private final MultiMap<ResultSinkInfo, ResultSourceInfo> results =
			new ConcurrentHashMultiMap<ResultSinkInfo, ResultSourceInfo>();
  
  	//xxx...
```

以ResultSinkInfo为例，看下里面的存储结构

Stmt类型用于存储Jimple中的一条语句，Stmt sink就记录了sink点所在那行的语句。AccessPath则记录与之相关联的路径

```java
public class ResultSinkInfo {
	private final AccessPath accessPath;
	private final Stmt sink;
  	//xxx...
```



















