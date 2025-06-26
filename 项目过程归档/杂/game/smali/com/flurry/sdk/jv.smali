.class public abstract Lcom/flurry/sdk/jv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jv$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/flurry/sdk/ju;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ju;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method

.method public abstract a()Lcom/flurry/sdk/jv$a;
.end method

.method public abstract a(Lcom/flurry/sdk/jv$a;)Lcom/flurry/sdk/jv;
.end method

.method public final a(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jv;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jv$a;->a(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jv$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jv;->a(Lcom/flurry/sdk/jv$a;)Lcom/flurry/sdk/jv;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jv;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/flurry/sdk/jv;->a()Lcom/flurry/sdk/jv$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jv$a;->b(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jv$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jv;->a(Lcom/flurry/sdk/jv$a;)Lcom/flurry/sdk/jv;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Lcom/flurry/sdk/ju;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jz;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method

.method public abstract c(Lcom/flurry/sdk/ju;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ju;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method
