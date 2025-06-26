.class public final Lcom/google/dexmaker/DexMaker;
.super Ljava/lang/Object;
.source "DexMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/DexMaker$MethodDeclaration;,
        Lcom/google/dexmaker/DexMaker$FieldDeclaration;,
        Lcom/google/dexmaker/DexMaker$TypeDeclaration;
    }
.end annotation


# instance fields
.field private final types:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;",
            "Lcom/google/dexmaker/DexMaker$TypeDeclaration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/DexMaker;->types:Ljava/util/Map;

    .line 203
    return-void
.end method

.method private getTypeDeclaration(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/DexMaker$TypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)",
            "Lcom/google/dexmaker/DexMaker$TypeDeclaration;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker;->types:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    .line 207
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    invoke-direct {v0, p1}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;-><init>(Lcom/google/dexmaker/TypeId;)V

    .line 209
    iget-object v1, p0, Lcom/google/dexmaker/DexMaker;->types:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_0
    return-object v0
.end method


# virtual methods
.method public declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/MethodId",
            "<**>;I)",
            "Lcom/google/dexmaker/Code;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p1, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    invoke-direct {p0, v0}, Lcom/google/dexmaker/DexMaker;->getTypeDeclaration(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    move-result-object v0

    .line 251
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$500(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already declared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    and-int/lit16 v1, p2, -0x140

    if-eqz v1, :cond_1

    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1
    and-int/lit8 v1, p2, 0x20

    if-eqz v1, :cond_2

    .line 264
    and-int/lit8 v1, p2, -0x21

    const/high16 v2, 0x20000

    or-int p2, v1, v2

    .line 267
    :cond_2
    invoke-virtual {p1}, Lcom/google/dexmaker/MethodId;->isConstructor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    const/high16 v1, 0x10000

    or-int/2addr p2, v1

    .line 271
    :cond_3
    new-instance v1, Lcom/google/dexmaker/DexMaker$MethodDeclaration;

    invoke-direct {v1, p1, p2}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;-><init>(Lcom/google/dexmaker/MethodId;I)V

    .line 272
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->methods:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$500(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    # getter for: Lcom/google/dexmaker/DexMaker$MethodDeclaration;->code:Lcom/google/dexmaker/Code;
    invoke-static {v1}, Lcom/google/dexmaker/DexMaker$MethodDeclaration;->access$600(Lcom/google/dexmaker/DexMaker$MethodDeclaration;)Lcom/google/dexmaker/Code;

    move-result-object v0

    return-object v0
.end method

.method public declare(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/FieldId",
            "<**>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p1, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    invoke-direct {p0, v0}, Lcom/google/dexmaker/DexMaker;->getTypeDeclaration(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    move-result-object v0

    .line 289
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$700(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already declared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    and-int/lit16 v1, p2, -0xe0

    if-eqz v1, :cond_1

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 301
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "staticValue is non-null, but field is not static"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_2
    new-instance v1, Lcom/google/dexmaker/DexMaker$FieldDeclaration;

    invoke-direct {v1, p1, p2, p3}, Lcom/google/dexmaker/DexMaker$FieldDeclaration;-><init>(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V

    .line 305
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->fields:Ljava/util/Map;
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$700(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public varargs declare(Lcom/google/dexmaker/TypeId;Ljava/lang/String;ILcom/google/dexmaker/TypeId;[Lcom/google/dexmaker/TypeId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<*>;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/dexmaker/TypeId",
            "<*>;[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/google/dexmaker/DexMaker;->getTypeDeclaration(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    move-result-object v0

    .line 224
    and-int/lit16 v1, p3, -0x412

    if-eqz v1, :cond_0

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 226
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_0
    # getter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z
    invoke-static {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$000(Lcom/google/dexmaker/DexMaker$TypeDeclaration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "already declared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_1
    const/4 v1, 0x1

    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->declared:Z
    invoke-static {v0, v1}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$002(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Z)Z

    .line 232
    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->flags:I
    invoke-static {v0, p3}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$102(Lcom/google/dexmaker/DexMaker$TypeDeclaration;I)I

    .line 233
    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->supertype:Lcom/google/dexmaker/TypeId;
    invoke-static {v0, p4}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$202(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/TypeId;

    .line 234
    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->sourceFile:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$302(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    new-instance v1, Lcom/google/dexmaker/TypeList;

    invoke-direct {v1, p5}, Lcom/google/dexmaker/TypeList;-><init>([Lcom/google/dexmaker/TypeId;)V

    # setter for: Lcom/google/dexmaker/DexMaker$TypeDeclaration;->interfaces:Lcom/google/dexmaker/TypeList;
    invoke-static {v0, v1}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->access$402(Lcom/google/dexmaker/DexMaker$TypeDeclaration;Lcom/google/dexmaker/TypeList;)Lcom/google/dexmaker/TypeList;

    .line 236
    return-void
.end method

.method public generate()[B
    .locals 3

    .prologue
    .line 312
    new-instance v0, Lcom/android/dx/dex/DexOptions;

    invoke-direct {v0}, Lcom/android/dx/dex/DexOptions;-><init>()V

    .line 313
    const/16 v1, 0xd

    iput v1, v0, Lcom/android/dx/dex/DexOptions;->targetApiLevel:I

    .line 314
    new-instance v1, Lcom/android/dx/dex/file/DexFile;

    invoke-direct {v1, v0}, Lcom/android/dx/dex/file/DexFile;-><init>(Lcom/android/dx/dex/DexOptions;)V

    .line 316
    iget-object v0, p0, Lcom/google/dexmaker/DexMaker;->types:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/DexMaker$TypeDeclaration;

    .line 317
    invoke-virtual {v0}, Lcom/google/dexmaker/DexMaker$TypeDeclaration;->toClassDefItem()Lcom/android/dx/dex/file/ClassDefItem;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/DexFile;->add(Lcom/android/dx/dex/file/ClassDefItem;)V

    goto :goto_0

    .line 321
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v2}, Lcom/android/dx/dex/file/DexFile;->toDex(Ljava/io/Writer;Z)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    if-nez p2, :cond_0

    .line 354
    const-string v0, "dexmaker.dexcache"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    if-eqz v0, :cond_1

    .line 356
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    :cond_0
    invoke-virtual {p0}, Lcom/google/dexmaker/DexMaker;->generate()[B

    move-result-object v0

    .line 375
    const-string v1, "Generated"

    const-string v2, ".jar"

    invoke-static {v1, v2, p2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 376
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 377
    new-instance v2, Ljava/util/jar/JarOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 378
    new-instance v3, Ljava/util/jar/JarEntry;

    const-string v4, "classes.dex"

    invoke-direct {v3, v4}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 379
    invoke-virtual {v2, v0}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 380
    invoke-virtual {v2}, Ljava/util/jar/JarOutputStream;->closeEntry()V

    .line 381
    invoke-virtual {v2}, Ljava/util/jar/JarOutputStream;->close()V

    .line 383
    :try_start_0
    const-string v0, "dalvik.system.DexClassLoader"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 385
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const/4 v3, 0x0

    aput-object v3, v2, v1

    const/4 v1, 0x3

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v0

    .line 358
    :cond_1
    new-instance v0, Lcom/google/dexmaker/AppDataDirGuesser;

    invoke-direct {v0}, Lcom/google/dexmaker/AppDataDirGuesser;-><init>()V

    invoke-virtual {v0}, Lcom/google/dexmaker/AppDataDirGuesser;->guess()Ljava/io/File;

    move-result-object p2

    .line 359
    if-nez p2, :cond_0

    .line 360
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dexcache == null (and no default could be found; consider setting the \'dexmaker.dexcache\' system property)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :catch_0
    move-exception v0

    .line 387
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "load() requires a Dalvik VM"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 388
    :catch_1
    move-exception v0

    .line 389
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 390
    :catch_2
    move-exception v0

    .line 391
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 392
    :catch_3
    move-exception v0

    .line 393
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 394
    :catch_4
    move-exception v0

    .line 395
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
