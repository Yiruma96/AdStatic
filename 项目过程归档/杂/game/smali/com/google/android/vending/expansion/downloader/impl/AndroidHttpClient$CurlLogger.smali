.class Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;->this$0:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$1;)V
    .locals 0

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;-><init>(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$CurlLogger;->this$0:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;

    # getter for: Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->curlConfiguration:Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->access$300(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;)Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 451
    if-eqz v0, :cond_0

    .line 452
    # invokes: Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z
    invoke-static {v0}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 456
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    const/4 v1, 0x0

    # invokes: Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/google/android/vending/expansion/downloader/impl/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 458
    :cond_0
    return-void
.end method
