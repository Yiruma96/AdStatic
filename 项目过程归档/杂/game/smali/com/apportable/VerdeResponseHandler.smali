.class public Lcom/apportable/VerdeResponseHandler;
.super Ljava/lang/Object;
.source "VerdeResponseHandler.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Lcom/apportable/VerdeOutputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mDelegate:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "VerdeResponseHandler"

    sput-object v0, Lcom/apportable/VerdeResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide p1, p0, Lcom/apportable/VerdeResponseHandler;->mDelegate:J

    .line 17
    return-void
.end method

.method private static native nativeAddHeader(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeStatus(JILjava/lang/String;)V
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Lcom/apportable/VerdeOutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 24
    iget-wide v2, p0, Lcom/apportable/VerdeResponseHandler;->mDelegate:J

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/apportable/VerdeResponseHandler;->nativeStatus(JILjava/lang/String;)V

    .line 25
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_0

    move-object v0, v1

    .line 69
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .line 31
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 32
    iget-wide v4, p0, Lcom/apportable/VerdeResponseHandler;->mDelegate:J

    aget-object v3, v2, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    aget-object v6, v2, v0

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v3, v6}, Lcom/apportable/VerdeResponseHandler;->nativeAddHeader(JLjava/lang/String;Ljava/lang/String;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_1
    new-instance v0, Lcom/apportable/VerdeOutputStream;

    iget-wide v2, p0, Lcom/apportable/VerdeResponseHandler;->mDelegate:J

    invoke-direct {v0, v2, v3}, Lcom/apportable/VerdeOutputStream;-><init>(J)V

    .line 37
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 38
    if-nez v2, :cond_2

    move-object v0, v1

    .line 41
    goto :goto_0

    .line 44
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/apportable/VerdeResponseHandler$1;

    invoke-direct {v3, p0, p1, v0, v2}, Lcom/apportable/VerdeResponseHandler$1;-><init>(Lcom/apportable/VerdeResponseHandler;Lorg/apache/http/HttpResponse;Lcom/apportable/VerdeOutputStream;Lorg/apache/http/HttpEntity;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    goto :goto_0
.end method

.method public bridge synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/apportable/VerdeResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Lcom/apportable/VerdeOutputStream;

    move-result-object v0

    return-object v0
.end method
