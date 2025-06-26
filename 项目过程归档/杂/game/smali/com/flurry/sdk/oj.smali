.class public Lcom/flurry/sdk/oj;
.super Lcom/flurry/sdk/pc;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sh;[Lcom/flurry/sdk/oi;[Lcom/flurry/sdk/oi;Lcom/flurry/sdk/of;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p5}, Lcom/flurry/sdk/pc;-><init>(Lcom/flurry/sdk/sh;[Lcom/flurry/sdk/oi;[Lcom/flurry/sdk/oi;Lcom/flurry/sdk/of;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lcom/flurry/sdk/oi;[Lcom/flurry/sdk/oi;Lcom/flurry/sdk/of;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/flurry/sdk/oi;",
            "[",
            "Lcom/flurry/sdk/oi;",
            "Lcom/flurry/sdk/of;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct/range {p0 .. p5}, Lcom/flurry/sdk/pc;-><init>(Ljava/lang/Class;[Lcom/flurry/sdk/oi;[Lcom/flurry/sdk/oi;Lcom/flurry/sdk/of;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/flurry/sdk/oj;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/oj;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/flurry/sdk/oj;

    sget-object v2, Lcom/flurry/sdk/oj;->a:[Lcom/flurry/sdk/oi;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/oj;-><init>(Ljava/lang/Class;[Lcom/flurry/sdk/oi;[Lcom/flurry/sdk/oi;Lcom/flurry/sdk/of;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/jk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lcom/flurry/sdk/pa;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/pa;-><init>(Lcom/flurry/sdk/pc;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p2}, Lcom/flurry/sdk/hf;->d()V

    .line 109
    iget-object v0, p0, Lcom/flurry/sdk/oj;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/oj;->c(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    .line 114
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/sdk/hf;->e()V

    .line 115
    return-void

    .line 112
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/oj;->b(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BeanSerializer for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/flurry/sdk/oj;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
