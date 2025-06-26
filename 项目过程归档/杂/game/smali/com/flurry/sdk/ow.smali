.class public final Lcom/flurry/sdk/ow;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/sdk/ou;

.field protected final b:Lcom/flurry/sdk/ox$a;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/ou;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/flurry/sdk/ox$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/ox$a;-><init>(Ljava/lang/Class;Z)V

    iput-object v0, p0, Lcom/flurry/sdk/ow;->b:Lcom/flurry/sdk/ox$a;

    .line 32
    iput-object p1, p0, Lcom/flurry/sdk/ow;->a:Lcom/flurry/sdk/ou;

    .line 33
    return-void
.end method

.method public static a(Ljava/util/HashMap;)Lcom/flurry/sdk/ow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lcom/flurry/sdk/ox$a;",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/flurry/sdk/ow;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/flurry/sdk/ow;

    new-instance v1, Lcom/flurry/sdk/ou;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/ou;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ow;-><init>(Lcom/flurry/sdk/ou;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/sh;",
            ")",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/flurry/sdk/ow;->b:Lcom/flurry/sdk/ox$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ox$a;->a(Lcom/flurry/sdk/sh;)V

    .line 53
    iget-object v0, p0, Lcom/flurry/sdk/ow;->a:Lcom/flurry/sdk/ou;

    iget-object v1, p0, Lcom/flurry/sdk/ow;->b:Lcom/flurry/sdk/ox$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ou;->a(Lcom/flurry/sdk/ox$a;)Lcom/flurry/sdk/jk;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Class;)Lcom/flurry/sdk/jk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/flurry/sdk/ow;->b:Lcom/flurry/sdk/ox$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ox$a;->a(Ljava/lang/Class;)V

    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/ow;->a:Lcom/flurry/sdk/ou;

    iget-object v1, p0, Lcom/flurry/sdk/ow;->b:Lcom/flurry/sdk/ox$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ou;->a(Lcom/flurry/sdk/ox$a;)Lcom/flurry/sdk/jk;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/flurry/sdk/ow;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/flurry/sdk/ow;

    iget-object v1, p0, Lcom/flurry/sdk/ow;->a:Lcom/flurry/sdk/ou;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ow;-><init>(Lcom/flurry/sdk/ou;)V

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/sh;)Lcom/flurry/sdk/jk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/sh;",
            ")",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flurry/sdk/ow;->b:Lcom/flurry/sdk/ox$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ox$a;->b(Lcom/flurry/sdk/sh;)V

    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/ow;->a:Lcom/flurry/sdk/ou;

    iget-object v1, p0, Lcom/flurry/sdk/ow;->b:Lcom/flurry/sdk/ox$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ou;->a(Lcom/flurry/sdk/ox$a;)Lcom/flurry/sdk/jk;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lcom/flurry/sdk/jk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/flurry/sdk/ow;->b:Lcom/flurry/sdk/ox$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ox$a;->b(Ljava/lang/Class;)V

    .line 65
    iget-object v0, p0, Lcom/flurry/sdk/ow;->a:Lcom/flurry/sdk/ou;

    iget-object v1, p0, Lcom/flurry/sdk/ow;->b:Lcom/flurry/sdk/ox$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ou;->a(Lcom/flurry/sdk/ox$a;)Lcom/flurry/sdk/jk;

    move-result-object v0

    return-object v0
.end method
