.class public Lcom/apportable/LibraryManager;
.super Ljava/lang/Object;
.source "LibraryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/LibraryManager$LibraryInfo;,
        Lcom/apportable/LibraryManager$InvalidArchitectureException;,
        Lcom/apportable/LibraryManager$PermissionException;,
        Lcom/apportable/LibraryManager$CorruptedAPKException;,
        Lcom/apportable/LibraryManager$NotEnoughSpaceException;
    }
.end annotation


# static fields
.field private static final ASSETS_LIB_PATH_FMT:Ljava/lang/String; = "assets/.apportable/lib/%s"

.field private static final COMPRESSED_EXT:Ljava/lang/String; = ".7z"

.field private static final LIBRARY_FILE_FMT:Ljava/lang/String; = "lib%s.so"

.field private static final OUT_LIB_PATH_BASE:Ljava/lang/String; = "usr/lib"

.field private static final OUT_LIB_PATH_FMT:Ljava/lang/String; = "usr/lib/%s"

.field private static final PATCH_LIBS_PATH_FMT:Ljava/lang/String; = "libs/%s"

.field private static final SO_EXT:Ljava/lang/String; = ".so"

.field private static final STANDARD_LIB_PATH_FMT:Ljava/lang/String; = "lib/%s"

.field private static final TAG:Ljava/lang/String; = "LibraryManager"

.field private static final UNPACKED_PATCH_DIRECTORY_NAME:Ljava/lang/String; = "current"

.field private static cpuinfo:Ljava/lang/String;


# instance fields
.field private mAPK:Ljava/util/zip/ZipFile;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/LibraryManager;->cpuinfo:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    .line 110
    new-instance v0, Ljava/util/zip/ZipFile;

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apportable/LibraryManager;->mAPK:Ljava/util/zip/ZipFile;

    .line 111
    return-void
.end method

.method private close()V
    .locals 1

    .prologue
    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mAPK:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 746
    if-eqz p0, :cond_0

    .line 747
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deletePath(Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 730
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 741
    :goto_0
    return v0

    .line 734
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 735
    :goto_1
    if-eqz v3, :cond_2

    .line 736
    array-length v4, v3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_2

    aget-object v2, v3, v1

    .line 737
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    move-result v2

    and-int/2addr v2, v0

    .line 736
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_2

    .line 734
    :cond_1
    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_1

    .line 740
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    and-int/2addr v0, v1

    .line 741
    goto :goto_0
.end method

.method private extractLibrary(Lcom/apportable/LibraryManager$LibraryInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 159
    iget-object v0, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "LibraryManager"

    const-string v1, "Copying \'%s\' -> \'%s\'..."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    aput-object v3, v2, v8

    iget-object v3, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 167
    const/4 v1, 0x0

    .line 170
    :try_start_0
    iget-object v0, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 171
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v0

    .line 177
    :goto_1
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    const/high16 v5, 0x10000

    :try_start_1
    new-array v5, v5, [B

    .line 182
    :goto_2
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 183
    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 190
    :try_start_2
    invoke-static {v4}, Lcom/apportable/LibraryManager;->close(Ljava/io/Closeable;)V

    .line 194
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 195
    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    invoke-virtual {v0, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 196
    new-instance v2, Lcom/apportable/LibraryManager$PermissionException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to rename "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/apportable/LibraryManager$PermissionException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    :try_start_3
    iget-object v2, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 202
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 205
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/apportable/LibraryManager;->close(Ljava/io/Closeable;)V

    throw v0

    .line 162
    :cond_0
    const-string v0, "LibraryManager"

    const-string v1, "Extracting \'%s\' -> \'%s\'..."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    iget-object v3, p1, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 173
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mAPK:Ljava/util/zip/ZipFile;

    iget-object v4, p1, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v1

    goto/16 :goto_1

    .line 186
    :cond_2
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 190
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-static {v4}, Lcom/apportable/LibraryManager;->close(Ljava/io/Closeable;)V

    throw v0

    .line 198
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 205
    invoke-static {v1}, Lcom/apportable/LibraryManager;->close(Ljava/io/Closeable;)V

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 209
    iget-object v2, p1, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    if-eqz v2, :cond_4

    .line 210
    const-string v2, "LibraryManager"

    const-string v3, "Copied in %d ms"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_3
    return-void

    .line 212
    :cond_4
    const-string v2, "LibraryManager"

    const-string v3, "Extracted in %d ms"

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private getABIs()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 309
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    const-string v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "armeabi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_0
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    :goto_0
    return-object v0

    .line 317
    :cond_1
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getAPKLibraries()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/apportable/LibraryManager$LibraryInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 328
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 329
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 331
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "apportable.abi_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 332
    new-instance v2, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 336
    invoke-direct {p0}, Lcom/apportable/LibraryManager;->getABIs()Ljava/util/ArrayList;

    move-result-object v6

    .line 337
    invoke-static {}, Lcom/apportable/LibraryManager;->neonSupported()Z

    move-result v7

    .line 338
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "apportable.abi_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 339
    const/4 v0, 0x1

    .line 340
    if-nez v7, :cond_11

    .line 341
    const-string v1, "armv7a-neon"

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    aget-object v1, v8, v1

    const-string v9, "armv7a"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 343
    const/4 v0, 0x0

    move v1, v0

    .line 347
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 348
    const-string v10, "LibraryManager"

    const-string v11, "Scanning ABI %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v10, "armeabi-v7"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 351
    const-string v0, "armv7a"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    new-instance v0, Ljava/io/File;

    const-string v10, "assets/.apportable/lib/%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "armeabi-v7a"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_1
    if-eqz v1, :cond_3

    const-string v0, "armv7a"

    .line 356
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "armv7a-neon"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v10, "lib/%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "armeabi-v7a"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_3
    const-string v0, "armv7a-neon"

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    .line 362
    new-instance v0, Ljava/io/File;

    const-string v10, "assets/.apportable/lib/%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "armeabi-v7a-neon"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v0, Ljava/io/File;

    const-string v10, "lib/%s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "armeabi-v7a-neon"

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 368
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 369
    new-instance v10, Ljava/io/File;

    const-string v11, "assets/.apportable/lib/%s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v10, Ljava/io/File;

    const-string v11, "lib/%s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 376
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    new-instance v1, Lcom/apportable/LibraryManager$InvalidArchitectureException;

    invoke-direct {v1, v6, v0}, Lcom/apportable/LibraryManager$InvalidArchitectureException;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    throw v1

    .line 383
    :cond_6
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 384
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mAPK:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 385
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/zip/ZipEntry;

    .line 386
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    .line 389
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 391
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 394
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 399
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/io/File;

    .line 400
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 401
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 406
    new-instance v9, Lcom/apportable/LibraryManager$LibraryInfo;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/apportable/LibraryManager$LibraryInfo;-><init>(Lcom/apportable/LibraryManager$1;)V

    .line 407
    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    iput-boolean v10, v9, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    .line 408
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 409
    const-string v10, ".so.7z"

    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 410
    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, ".7z"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 411
    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/apportable/LibraryManager$LibraryInfo;->isCompressed:Z

    .line 416
    :cond_c
    iput-object v2, v9, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    .line 417
    iput-object v0, v9, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    .line 418
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 412
    :cond_d
    const-string v10, ".so"

    invoke-virtual {v2, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_3

    .line 423
    :cond_e
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apportable/LibraryManager;->isApplicationDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 424
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    const-string v2, "external_patch"

    const/4 v5, 0x3

    .line 425
    invoke-virtual {v0, v2, v5}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    const-string v2, "current"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 429
    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 430
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 434
    const-string v0, "LibraryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Probing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for libs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v5, :cond_f

    aget-object v6, v4, v0

    .line 436
    const-string v7, "LibraryManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v7, Lcom/apportable/LibraryManager$LibraryInfo;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/apportable/LibraryManager$LibraryInfo;-><init>(Lcom/apportable/LibraryManager$1;)V

    .line 439
    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/apportable/LibraryManager$LibraryInfo;->isCompressed:Z

    .line 440
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    .line 441
    iput-object v6, v7, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    .line 442
    const/4 v6, 0x0

    iput-boolean v6, v7, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    .line 443
    const/4 v6, 0x0

    iput-boolean v6, v7, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    .line 444
    iget-object v6, v7, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 448
    :cond_10
    return-object v3

    :cond_11
    move v1, v0

    goto/16 :goto_0
.end method

.method private static getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;
    .locals 2

    .prologue
    .line 695
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 697
    :catch_0
    move-exception v0

    .line 700
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCPUInfo()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 706
    sget-object v0, Lcom/apportable/LibraryManager;->cpuinfo:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 707
    new-instance v2, Ljava/io/FileInputStream;

    const-string v0, "/proc/cpuinfo"

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 708
    const/16 v0, 0x1000

    new-array v3, v0, [B

    move v0, v1

    .line 711
    :goto_0
    array-length v4, v3

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    .line 712
    add-int/2addr v0, v4

    goto :goto_0

    .line 714
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 715
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([BII)V

    sput-object v2, Lcom/apportable/LibraryManager;->cpuinfo:Ljava/lang/String;

    .line 717
    :cond_1
    sget-object v0, Lcom/apportable/LibraryManager;->cpuinfo:Ljava/lang/String;

    return-object v0
.end method

.method private static getNativeLibraryPath(Landroid/content/Context;)Ljava/io/File;
    .locals 4

    .prologue
    .line 670
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 671
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 672
    new-instance v0, Ljava/io/File;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 674
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;
    .locals 2

    .prologue
    .line 684
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 686
    :catch_0
    move-exception v0

    .line 689
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private initializeLibv()V
    .locals 10

    .prologue
    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 555
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 556
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 557
    const-string v0, "DEBUG_BUILD"

    const-string v3, "1"

    invoke-static {v0, v3}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apportable/LibraryManager;->isApplicationDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const-string v0, "1"

    const-string v3, "EARLY_LIFECYCLE_DEBUG"

    .line 561
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 562
    invoke-static {}, Lcom/apportable/LibraryLoader;->debugWait()V

    .line 567
    :cond_1
    :goto_0
    if-eqz v1, :cond_6

    .line 570
    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "XCTest"

    aput-object v0, v3, v2

    const-string v0, "XCTestObserverClass"

    aput-object v0, v3, v9

    .line 574
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "PROFILE"

    aput-object v0, v4, v2

    const-string v0, "NSZombieEnabled"

    aput-object v0, v4, v9

    const-string v0, "NSUnrecognizedForwardingDisabled"

    aput-object v0, v4, v5

    const/4 v0, 0x3

    const-string v5, "MallocCorruptionAbort"

    aput-object v5, v4, v0

    const/4 v0, 0x4

    const-string v5, "MallocGuardEdges"

    aput-object v5, v4, v0

    const/4 v0, 0x5

    const-string v5, "MallocScribble"

    aput-object v5, v4, v0

    const/4 v0, 0x6

    const-string v5, "ApportableRunLongRunningTestsKey"

    aput-object v5, v4, v0

    const/4 v0, 0x7

    const-string v5, "ApportableRunMetaTestsKey"

    aput-object v5, v4, v0

    .line 585
    array-length v5, v4

    move v0, v2

    :goto_1
    if-ge v0, v5, :cond_4

    aget-object v6, v4, v0

    .line 586
    const-string v7, "1"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 587
    const-string v7, "YES"

    invoke-static {v6, v7}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apportable/LibraryManager;->isApplicationDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "1"

    const-string v3, "WAIT_FOR_ATTACH"

    .line 564
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    const-string v0, "WAIT_FOR_ATTACH"

    const-string v3, "1"

    invoke-static {v0, v3}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :cond_4
    array-length v4, v3

    move v0, v2

    :goto_2
    if-ge v0, v4, :cond_7

    aget-object v5, v3, v0

    .line 591
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 592
    if-eqz v6, :cond_5

    .line 594
    invoke-static {v5, v6}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 597
    :cond_6
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apportable/LibraryManager;->isApplicationDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 598
    const-string v0, "NSUnrecognizedForwardingDisabled"

    const-string v1, "YES"

    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 604
    const-string v0, "zh-Hans"

    move-object v1, v0

    .line 621
    :goto_3
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    const/16 v3, 0x80

    invoke-static {v0, v3}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 623
    const-string v0, "VERSION_CODE"

    iget-object v4, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v2}, Lcom/apportable/LibraryManager;->getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v0, "VERSION_NAME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v2}, Lcom/apportable/LibraryManager;->getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    if-eqz v3, :cond_c

    .line 627
    invoke-virtual {v3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 628
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 629
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 606
    :cond_8
    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 607
    const-string v0, "zh-Hant"

    move-object v1, v0

    goto :goto_3

    .line 609
    :cond_9
    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 611
    const-string v0, "zh-Hant"

    move-object v1, v0

    goto :goto_3

    .line 613
    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x7a

    if-ne v1, v3, :cond_b

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x68

    if-ne v1, v3, :cond_b

    .line 615
    const-string v0, "zh-Hans"

    move-object v1, v0

    goto/16 :goto_3

    .line 617
    :cond_b
    const-string v1, "iw_IL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 618
    const-string v0, "he_IL"

    move-object v1, v0

    goto/16 :goto_3

    .line 633
    :cond_c
    const-string v0, "LOCALE"

    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "LANGUAGES"

    invoke-direct {p0}, Lcom/apportable/LibraryManager;->languages()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v0, "TZ"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v0, "HOME"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 637
    const-string v0, "TMP"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 638
    const-string v0, "TEMP"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 639
    const-string v0, "TMPDIR"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 640
    const-string v0, "TEMPDIR"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 641
    const-string v0, "CACHEDIR"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 642
    const-string v0, "EXTERNAL_CACHEDIR"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 644
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_d

    .line 645
    const-string v0, "OBBDIR"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getObbDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 652
    :goto_5
    const-string v0, "PACKAGE_CODE_PATH"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v0, "PACKAGE_RESOURCE_PATH"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "PACKAGE_NAME"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    const-string v0, "ANDROID_DATA_DIRECTORY"

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 657
    const-string v0, "ANDROID_DOWNLOAD_DIRECTORY"

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 658
    const-string v0, "ANDROID_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 661
    const-string v0, "CFFIXED_USER_HOME"

    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 662
    const-string v0, "CFProcessPath"

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    .line 664
    invoke-static {}, Lcom/apportable/LibraryLoader;->init()V

    .line 665
    return-void

    .line 647
    :cond_d
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android/obb/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    .line 648
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 649
    const-string v1, "OBBDIR"

    invoke-static {v1, v0}, Lcom/apportable/LibraryManager;->setPath(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_5

    :cond_e
    move-object v1, v0

    goto/16 :goto_3
.end method

.method private static isApplicationDebuggable(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 679
    invoke-static {p0, v0}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private languages()Ljava/lang/String;
    .locals 5

    .prologue
    .line 506
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/apportable/LibraryManager;->localeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    .line 510
    new-instance v3, Lcom/apportable/LibraryManager$1;

    invoke-direct {v3, p0, v0}, Lcom/apportable/LibraryManager$1;-><init>(Lcom/apportable/LibraryManager;Ljava/util/Locale;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 535
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 536
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, v2, v0

    .line 539
    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/apportable/LibraryManager;->localeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 542
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 547
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ", "

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2

    .line 550
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    return-object v0
.end method

.method private loadLibraries()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/apportable/LibraryManager;->getPackageInfo(Landroid/content/Context;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-direct {p0, v0}, Lcom/apportable/LibraryManager;->purgeOldVersions(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0}, Lcom/apportable/LibraryManager;->getAPKLibraries()Ljava/util/Map;

    move-result-object v3

    .line 127
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 128
    new-instance v0, Lcom/apportable/LibraryManager$CorruptedAPKException;

    const-string v1, "no libraries found in the APK"

    invoke-direct {v0, v1}, Lcom/apportable/LibraryManager$CorruptedAPKException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "usr/lib/%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v2

    .line 132
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lcom/apportable/LibraryManager$PermissionException;

    const-string v3, "failed to create \'%s\'"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apportable/LibraryManager$PermissionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    invoke-direct {p0, v3, v1}, Lcom/apportable/LibraryManager;->realizeLibraries(Ljava/util/Map;Ljava/io/File;)V

    .line 141
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/apportable/LibraryManager;->getApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 142
    const-string v1, "android.app.libs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 143
    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    .line 144
    const-string v0, "lib%s.so"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v6, v7, v2

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/LibraryManager$LibraryInfo;

    .line 146
    if-nez v0, :cond_2

    .line 147
    new-instance v0, Lcom/apportable/LibraryManager$CorruptedAPKException;

    const-string v1, "%s not found in the APK"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apportable/LibraryManager$CorruptedAPKException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_2
    iget-boolean v7, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    if-eqz v7, :cond_3

    .line 151
    invoke-direct {p0, v0}, Lcom/apportable/LibraryManager;->extractLibrary(Lcom/apportable/LibraryManager$LibraryInfo;)V

    .line 154
    :cond_3
    invoke-direct {p0, v6, v0}, Lcom/apportable/LibraryManager;->loadLibrary(Ljava/lang/String;Lcom/apportable/LibraryManager$LibraryInfo;)V

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 156
    :cond_4
    return-void
.end method

.method public static loadLibraries(Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lcom/apportable/LibraryManager;

    invoke-direct {v0, p0}, Lcom/apportable/LibraryManager;-><init>(Landroid/app/Activity;)V

    .line 99
    :try_start_0
    invoke-direct {v0}, Lcom/apportable/LibraryManager;->loadLibraries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    invoke-direct {v0}, Lcom/apportable/LibraryManager;->close()V

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v1

    invoke-direct {v0}, Lcom/apportable/LibraryManager;->close()V

    throw v1
.end method

.method private loadLibrary(Ljava/lang/String;Lcom/apportable/LibraryManager$LibraryInfo;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 217
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 219
    iget-boolean v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    if-eqz v2, :cond_1

    .line 220
    const-string v2, "LibraryManager"

    const-string v3, "Loading library \'%s\'..."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 231
    :goto_0
    iget-object v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    const-string v3, "libv.so"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/apportable/LibraryManager;->initializeLibv()V

    .line 235
    :cond_0
    const-string v2, "LibraryManager"

    const-string v3, "Loaded in %d ms"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 223
    :cond_1
    iget-object v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    if-eqz v2, :cond_2

    .line 224
    const-string v2, "LibraryManager"

    const-string v3, "Loading patched library \'%s\'"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_2
    const-string v2, "LibraryManager"

    const-string v3, "Loading \'%s\'..."

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p2, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private localeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 486
    const-string v1, "zh_hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh-hans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    :cond_0
    const-string v0, "zh-Hans"

    .line 502
    :goto_0
    return-object v0

    .line 489
    :cond_1
    const-string v1, "zh_hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "zh-hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "zh_tw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 499
    :cond_2
    const-string v0, "zh-Hant"

    goto :goto_0

    .line 501
    :cond_3
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 502
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static neonSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 722
    :try_start_0
    invoke-static {}, Lcom/apportable/LibraryManager;->getCPUInfo()Ljava/lang/String;

    move-result-object v1

    const-string v2, "neon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 725
    :cond_0
    :goto_0
    return v0

    .line 724
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private purgeOldVersions(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    .line 456
    new-instance v2, Ljava/io/File;

    const-string v3, "usr/lib"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v2, p1}, Lcom/apportable/LibraryManager;->purgeVersions(Ljava/io/File;Ljava/lang/String;)V

    .line 459
    new-instance v2, Ljava/io/File;

    const-string v3, "apportable-lib"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    .line 460
    new-instance v2, Ljava/io/File;

    const-string v3, "apportable-lib"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    .line 461
    new-instance v1, Ljava/io/File;

    const-string v2, ".apportable"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    .line 462
    return-void
.end method

.method private purgeVersions(Ljava/io/File;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 465
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 466
    if-eqz v1, :cond_1

    .line 467
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 468
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/apportable/LibraryManager;->deletePath(Ljava/io/File;)Z

    goto :goto_1

    .line 474
    :cond_1
    return-void
.end method

.method private realizeLibraries(Ljava/util/Map;Ljava/io/File;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/apportable/LibraryManager$LibraryInfo;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 251
    .line 252
    iget-object v0, p0, Lcom/apportable/LibraryManager;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/apportable/LibraryManager;->getNativeLibraryPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 254
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/LibraryManager$LibraryInfo;

    .line 256
    iget-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->patchPath:Ljava/io/File;

    if-nez v3, :cond_0

    .line 260
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    .line 261
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    .line 263
    iget-boolean v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    if-eqz v3, :cond_1

    .line 266
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/apportable/LibraryManager$LibraryInfo;->fileName:Ljava/lang/String;

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v6, v0, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 268
    iput-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    .line 269
    iput-boolean v8, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    .line 275
    :cond_1
    :goto_1
    iget-boolean v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    iget-boolean v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->isCompressed:Z

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    .line 277
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-object v3, v0, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 279
    :cond_2
    iput-boolean v8, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    goto :goto_0

    .line 271
    :cond_3
    iput-boolean v8, v0, Lcom/apportable/LibraryManager$LibraryInfo;->isStandard:Z

    goto :goto_1

    .line 281
    :cond_4
    iget-object v0, v0, Lcom/apportable/LibraryManager$LibraryInfo;->outPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 286
    :cond_5
    const-wide/16 v0, 0x0

    .line 287
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/LibraryManager$LibraryInfo;

    .line 288
    iget-boolean v1, v0, Lcom/apportable/LibraryManager$LibraryInfo;->needsExtraction:Z

    if-eqz v1, :cond_9

    .line 289
    iget-boolean v1, v0, Lcom/apportable/LibraryManager$LibraryInfo;->isCompressed:Z

    if-eqz v1, :cond_6

    .line 291
    iget-object v0, v0, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    const-wide/16 v6, 0x8

    mul-long/2addr v0, v6

    add-long/2addr v0, v2

    :goto_3
    move-wide v2, v0

    .line 296
    goto :goto_2

    .line 293
    :cond_6
    iget-object v0, v0, Lcom/apportable/LibraryManager$LibraryInfo;->apkEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_3

    .line 298
    :cond_7
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v4

    .line 301
    cmp-long v4, v2, v0

    if-lez v4, :cond_8

    .line 302
    new-instance v4, Lcom/apportable/LibraryManager$NotEnoughSpaceException;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/apportable/LibraryManager$NotEnoughSpaceException;-><init>(JJ)V

    throw v4

    .line 304
    :cond_8
    return-void

    :cond_9
    move-wide v0, v2

    goto :goto_3
.end method

.method private static setPath(Ljava/lang/String;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 479
    if-eqz p1, :cond_0

    .line 480
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/apportable/LibraryLoader;->setenv(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_0
    return-void
.end method
