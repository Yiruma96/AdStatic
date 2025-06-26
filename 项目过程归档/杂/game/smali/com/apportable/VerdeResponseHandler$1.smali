.class Lcom/apportable/VerdeResponseHandler$1;
.super Ljava/lang/Object;
.source "VerdeResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/VerdeResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/apportable/VerdeOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/VerdeResponseHandler;

.field final synthetic val$entity:Lorg/apache/http/HttpEntity;

.field final synthetic val$mStream:Lcom/apportable/VerdeOutputStream;

.field final synthetic val$response:Lorg/apache/http/HttpResponse;


# direct methods
.method constructor <init>(Lcom/apportable/VerdeResponseHandler;Lorg/apache/http/HttpResponse;Lcom/apportable/VerdeOutputStream;Lorg/apache/http/HttpEntity;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/apportable/VerdeResponseHandler$1;->this$0:Lcom/apportable/VerdeResponseHandler;

    iput-object p2, p0, Lcom/apportable/VerdeResponseHandler$1;->val$response:Lorg/apache/http/HttpResponse;

    iput-object p3, p0, Lcom/apportable/VerdeResponseHandler$1;->val$mStream:Lcom/apportable/VerdeOutputStream;

    iput-object p4, p0, Lcom/apportable/VerdeResponseHandler$1;->val$entity:Lorg/apache/http/HttpEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/apportable/VerdeResponseHandler$1;->val$response:Lorg/apache/http/HttpResponse;

    const-string v1, "Content-Encoding"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/apportable/VerdeResponseHandler$1;->val$response:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 51
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 53
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/apportable/VerdeResponseHandler$1;->val$mStream:Lcom/apportable/VerdeOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Lcom/apportable/VerdeOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 63
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/apportable/VerdeResponseHandler$1;->val$mStream:Lcom/apportable/VerdeOutputStream;

    invoke-virtual {v0}, Lcom/apportable/VerdeOutputStream;->close()V

    .line 64
    return-void

    .line 58
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/apportable/VerdeResponseHandler$1;->val$entity:Lorg/apache/http/HttpEntity;

    iget-object v1, p0, Lcom/apportable/VerdeResponseHandler$1;->val$mStream:Lcom/apportable/VerdeOutputStream;

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
