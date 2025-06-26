.class public Lcom/flurry/sdk/oe;
.super Lcom/flurry/sdk/ky$a;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qj;",
            "Lcom/flurry/sdk/kx;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/kx;)Lcom/flurry/sdk/kx;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/flurry/sdk/oe;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-virtual {p2}, Lcom/flurry/sdk/ir;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kx;

    .line 43
    if-nez v0, :cond_0

    :goto_0
    return-object p3

    :cond_0
    move-object p3, v0

    goto :goto_0
.end method
