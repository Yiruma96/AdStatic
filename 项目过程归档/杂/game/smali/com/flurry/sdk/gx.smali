.class public abstract Lcom/flurry/sdk/gx;
.super Lcom/flurry/sdk/fq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/flurry/sdk/gv;",
        ">",
        "Lcom/flurry/sdk/fq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/fn;)V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/flurry/sdk/gs;->b()Lcom/flurry/sdk/gs;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/fq;-><init>(Lcom/flurry/sdk/fn;Lcom/flurry/sdk/ft;)V

    .line 36
    return-void
.end method
