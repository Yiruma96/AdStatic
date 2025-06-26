.class Lcom/noodlecake/noodlenews/WebImageCache$1;
.super Ljava/lang/Object;
.source "WebImageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noodlecake/noodlenews/WebImageCache;->cacheBitmapToDisk(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/noodlecake/noodlenews/WebImageCache;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/noodlecake/noodlenews/WebImageCache;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/noodlecake/noodlenews/WebImageCache$1;->this$0:Lcom/noodlecake/noodlenews/WebImageCache;

    iput-object p2, p0, Lcom/noodlecake/noodlenews/WebImageCache$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/noodlecake/noodlenews/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 116
    iget-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache$1;->this$0:Lcom/noodlecake/noodlenews/WebImageCache;

    # getter for: Lcom/noodlecake/noodlenews/WebImageCache;->diskCacheEnabled:Z
    invoke-static {v0}, Lcom/noodlecake/noodlenews/WebImageCache;->access$000(Lcom/noodlecake/noodlenews/WebImageCache;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v2, 0x0

    .line 119
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/noodlecake/noodlenews/WebImageCache$1;->this$0:Lcom/noodlecake/noodlenews/WebImageCache;

    # getter for: Lcom/noodlecake/noodlenews/WebImageCache;->diskCachePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/noodlecake/noodlenews/WebImageCache;->access$100(Lcom/noodlecake/noodlenews/WebImageCache;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/noodlecake/noodlenews/WebImageCache$1;->this$0:Lcom/noodlecake/noodlenews/WebImageCache;

    iget-object v6, p0, Lcom/noodlecake/noodlenews/WebImageCache$1;->val$url:Ljava/lang/String;

    # invokes: Lcom/noodlecake/noodlenews/WebImageCache;->getCacheKey(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/noodlecake/noodlenews/WebImageCache;->access$200(Lcom/noodlecake/noodlenews/WebImageCache;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x800

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/noodlecake/noodlenews/WebImageCache$1;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 127
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 122
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 127
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 129
    :catch_1
    move-exception v0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    :goto_2
    if-eqz v2, :cond_1

    .line 126
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 127
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 129
    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_3

    .line 124
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 121
    :catch_3
    move-exception v0

    goto :goto_1

    .line 129
    :catch_4
    move-exception v0

    goto :goto_0
.end method
