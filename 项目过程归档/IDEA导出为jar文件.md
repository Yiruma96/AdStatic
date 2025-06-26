![1557582692260](D:\Typora\pictures\1557582692260.png)

![1557582753139](D:\Typora\pictures\1557582753139.png)

![1557582794686](D:\Typora\pictures\1557582794686.png)

![1557582813206](D:\Typora\pictures\1557582813206.png)

有一点逐一，Directory Content虽然选中的是一个文件夹，但最后在.jar包中的时这个文件夹中的内容

![1557582860232](D:\Typora\pictures\1557582860232.png)

#### 最后一点，关于路径的问题

IDEA中运行的代码路径设这个

![1557582925110](D:\Typora\pictures\1557582925110.png)

但导成jar包后，其运行路径是jar包的，所以尝试将platforms文件夹放到jar包里面没有成功，因为代码中使用的路径./platforms在IDEA运行中是Soot/platforms，但jar中就是和jar同级的路径了，而不是从jar包里面开始