.class public abstract Lcom/flurry/sdk/jg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/jg;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jg",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 110
    return-object p0
.end method

.method public abstract a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hj;",
            "Lcom/flurry/sdk/iz;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation
.end method

.method public a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/jy;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p3, p1, p2}, Lcom/flurry/sdk/jy;->d(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hj;",
            "Lcom/flurry/sdk/iz;",
            "TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/flurry/sdk/jg;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
