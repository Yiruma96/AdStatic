.class public Lcom/noodlecake/noodlenews/WebImage;
.super Ljava/lang/Object;
.source "WebImage.java"


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x1388

.field private static final READ_TIMEOUT:I = 0x2710

.field private static webImageCache:Lcom/noodlecake/noodlenews/WebImageCache;


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/noodlecake/noodlenews/WebImage;->url:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 58
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 59
    const/16 v2, 0x1388

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 60
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 61
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static removeFromCache(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/noodlecake/noodlenews/WebImage;->webImageCache:Lcom/noodlecake/noodlenews/WebImageCache;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/noodlecake/noodlenews/WebImage;->webImageCache:Lcom/noodlecake/noodlenews/WebImageCache;

    invoke-virtual {v0, p0}, Lcom/noodlecake/noodlenews/WebImageCache;->remove(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public getBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/noodlecake/noodlenews/WebImage;->webImageCache:Lcom/noodlecake/noodlenews/WebImageCache;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/noodlecake/noodlenews/WebImageCache;

    invoke-direct {v0, p1}, Lcom/noodlecake/noodlenews/WebImageCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noodlecake/noodlenews/WebImage;->webImageCache:Lcom/noodlecake/noodlenews/WebImageCache;

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    iget-object v1, p0, Lcom/noodlecake/noodlenews/WebImage;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 42
    sget-object v0, Lcom/noodlecake/noodlenews/WebImage;->webImageCache:Lcom/noodlecake/noodlenews/WebImageCache;

    iget-object v1, p0, Lcom/noodlecake/noodlenews/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/noodlecake/noodlenews/WebImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/noodlecake/noodlenews/WebImage;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/noodlecake/noodlenews/WebImage;->getBitmapFromUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    sget-object v1, Lcom/noodlecake/noodlenews/WebImage;->webImageCache:Lcom/noodlecake/noodlenews/WebImageCache;

    iget-object v2, p0, Lcom/noodlecake/noodlenews/WebImage;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/noodlecake/noodlenews/WebImageCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 51
    :cond_1
    return-object v0
.end method
