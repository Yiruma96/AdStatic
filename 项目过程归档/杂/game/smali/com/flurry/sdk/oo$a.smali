.class final Lcom/flurry/sdk/oo$a;
.super Lcom/flurry/sdk/oi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field protected final p:Lcom/flurry/sdk/oi;

.field protected final q:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/oi;[Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/oi;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/flurry/sdk/oi;-><init>(Lcom/flurry/sdk/oi;)V

    .line 69
    iput-object p1, p0, Lcom/flurry/sdk/oo$a;->p:Lcom/flurry/sdk/oi;

    .line 70
    iput-object p2, p0, Lcom/flurry/sdk/oo$a;->q:[Ljava/lang/Class;

    .line 71
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jk;)Lcom/flurry/sdk/oi;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/oi;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/sdk/oo$a;

    iget-object v1, p0, Lcom/flurry/sdk/oo$a;->p:Lcom/flurry/sdk/oi;

    invoke-virtual {v1, p1}, Lcom/flurry/sdk/oi;->a(Lcom/flurry/sdk/jk;)Lcom/flurry/sdk/oi;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/oo$a;->q:[Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/oo$a;-><init>(Lcom/flurry/sdk/oi;[Ljava/lang/Class;)V

    return-object v0
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p3}, Lcom/flurry/sdk/jw;->a()Ljava/lang/Class;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/flurry/sdk/oo$a;->q:[Ljava/lang/Class;

    array-length v2, v2

    .line 85
    :goto_0
    if-ge v0, v2, :cond_0

    .line 86
    iget-object v3, p0, Lcom/flurry/sdk/oo$a;->q:[Ljava/lang/Class;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 89
    :cond_0
    if-ne v0, v2, :cond_2

    .line 94
    :goto_1
    return-void

    .line 85
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/oo$a;->p:Lcom/flurry/sdk/oi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/flurry/sdk/oi;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    goto :goto_1
.end method
