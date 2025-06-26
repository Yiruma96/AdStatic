.class public Lcom/noodlecake/noodlenews/WebImageCache;
.super Ljava/lang/Object;
.source "WebImageCache.java"


# static fields
.field private static final DISK_CACHE_PATH:Ljava/lang/String; = "/web_image_cache/"


# instance fields
.field private diskCacheEnabled:Z

.field private diskCachePath:Ljava/lang/String;

.field private memoryCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private writeThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCacheEnabled:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/web_image_cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCachePath:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 47
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCacheEnabled:Z

    .line 50
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->writeThread:Ljava/util/concurrent/ExecutorService;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/noodlecake/noodlenews/WebImageCache;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCacheEnabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/noodlecake/noodlenews/WebImageCache;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/noodlecake/noodlenews/WebImageCache;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/noodlecake/noodlenews/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cacheBitmapToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->writeThread:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/noodlecake/noodlenews/WebImageCache$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/noodlecake/noodlenews/WebImageCache$1;-><init>(Lcom/noodlecake/noodlenews/WebImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method private cacheBitmapToMemory(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/noodlecake/noodlenews/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method private getBitmapFromDisk(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    iget-boolean v1, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCacheEnabled:Z

    if-eqz v1, :cond_0

    .line 149
    invoke-direct {p0, p1}, Lcom/noodlecake/noodlenews/WebImageCache;->getFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    :cond_0
    return-object v0
.end method

.method private getBitmapFromMemory(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 137
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/noodlecake/noodlenews/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Null url passed in"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    const-string v0, "[.:/,%?&=]"

    const-string v1, "+"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[+]+"

    const-string v2, "+"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCachePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/noodlecake/noodlenews/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 94
    iget-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 97
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCachePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 100
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 101
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_1
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    .line 57
    invoke-direct {p0, p1}, Lcom/noodlecake/noodlenews/WebImageCache;->getBitmapFromMemory(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/noodlecake/noodlenews/WebImageCache;->getBitmapFromDisk(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/noodlecake/noodlenews/WebImageCache;->cacheBitmapToMemory(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 69
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/noodlecake/noodlenews/WebImageCache;->cacheBitmapToMemory(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/noodlecake/noodlenews/WebImageCache;->cacheBitmapToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 75
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    if-nez p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache;->memoryCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, p1}, Lcom/noodlecake/noodlenews/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/noodlecake/noodlenews/WebImageCache;->diskCachePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method
