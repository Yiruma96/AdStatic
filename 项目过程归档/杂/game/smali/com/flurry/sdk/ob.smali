.class public Lcom/flurry/sdk/ob;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jm;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/qj;",
            "Lcom/flurry/sdk/jl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ob;->a:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/iy;Lcom/flurry/sdk/ir;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jl;
    .locals 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/ob;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ob;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-virtual {p1}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/jl;

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/jl;)Lcom/flurry/sdk/ob;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jl;",
            ")",
            "Lcom/flurry/sdk/ob;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flurry/sdk/ob;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ob;->a:Ljava/util/HashMap;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ob;->a:Ljava/util/HashMap;

    new-instance v1, Lcom/flurry/sdk/qj;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/qj;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-object p0
.end method
