Java的确感觉是个很复杂的工程，如果建立起来的话，其实所有的工程都会有Gradle，Maven，这里复现一个工程的核心，里面基本包括了所有需要的情况：

- 像bouncasted这种第三方包
- 项目之间的依赖

所以idea里面open了一个文件，并没有变成可执行的java文件倒是应当的，因为没有通过Gradle或者Maven去指定这个工程的详细情况，仅仅有代码是不够的，所以之后打开工程后在右边选择Gradle与Maven的文件去解析，之后这个工程就能用啦

![](https://ws1.sinaimg.cn/large/93e435bbgy1fn96309tn5j209302imx3.jpg)



可以看到一个工程中需要很多的依赖，都可以在Maven中声明，这些依赖有的是jar包，这些jar包都在C:/Users/UserName/.m3/repository中存储，应该是java的存储方式，因为idea也是在这里面存储

另外就是依赖可以依赖源代码文件，像本项目中的heros，jasmin，soot，soot-infoflow的依赖

![](https://ws1.sinaimg.cn/large/93e435bbgy1fn97lgjfqnj20hk0dfdi6.jpg)



在File栏中可以打开ProjectStrucure，里面可以看到整个项目的结构，其中可以配置使用的SDK，配置依赖关系

图中蓝色的小方块表示这在工程中是一个module模块存在的，模块之间可以互相依赖，可以看到我新建了一个AdStatic的模块，开始的时候右边的依赖关系一栏里面什么都没有，之后点开加号可以看到可以导入的依赖关系有

- 模块
- Library库
- JAR文件

![](https://ws1.sinaimg.cn/large/93e435bbgy1fn9azh2kspj20wy0jywgs.jpg)



### 工程依赖与Maven记录的关系

maven的依赖都需要手动导入的，在IDEA的项目配置中添加依赖是不会记录在Maven配置文件中的，所以我自己建立的AdStatic一开始就没有记录任何依赖，所以一旦使用maven的reimport，就会将已经配置好的依赖关系全部删除

因为maven一般都是这样使用的：

- 需要引用包——从maven中手动添加依赖，之后从maven库中自动下载相应的包到.m2文件夹中
- 导入一个新工程，直接reimport一下，自动将所有的依赖关系配置好

但这种情况无法适用于

- 想手动添加模块间的依赖关系
- 将工程的依赖自动同步到maven中去

目前了解到的有

- 在引入一个新的jar文件时，art+enter有将依赖导入到maven中的选项，是idea提供的自动机制

现在我就是不手动将依赖记录到maven中，因为手动配置太麻烦了，到时候直接在项目中重新配置idea的依赖就行，只用到maven的.m2文件夹用于存储需要用到的jar文件