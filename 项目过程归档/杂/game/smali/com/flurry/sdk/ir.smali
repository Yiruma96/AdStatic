.class public abstract Lcom/flurry/sdk/ir;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/sdk/sh;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/sh;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/flurry/sdk/ir;->a:Lcom/flurry/sdk/sh;

    .line 47
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/sh;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/ir;->a:Lcom/flurry/sdk/sh;

    return-object v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/ir;->a:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/flurry/sdk/mn;
.end method
