.class public Lcom/flurry/sdk/lu;
.super Lcom/flurry/sdk/mc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/mc",
        "<",
        "Lcom/flurry/sdk/sh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/flurry/sdk/sh;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/mc;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lu;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/sh;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/sh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 25
    sget-object v1, Lcom/flurry/sdk/hm;->h:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/flurry/sdk/lu;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/sh;

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->f()Lcom/flurry/sdk/qs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/qs;->b(Ljava/lang/String;)Lcom/flurry/sdk/sh;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_1
    sget-object v1, Lcom/flurry/sdk/hm;->g:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_2

    .line 34
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->z()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/sh;

    goto :goto_0

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/lu;->q:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0
.end method
