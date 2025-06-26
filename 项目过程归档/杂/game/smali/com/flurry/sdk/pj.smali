.class public Lcom/flurry/sdk/pj;
.super Lcom/flurry/sdk/pb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pb",
        "<",
        "Ljava/util/EnumSet",
        "<+",
        "Ljava/lang/Enum",
        "<*>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 19
    const-class v1, Ljava/util/EnumSet;

    const/4 v3, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/pb;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jk;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jz;)Lcom/flurry/sdk/pf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jz;",
            ")",
            "Lcom/flurry/sdk/pf",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 25
    return-object p0
.end method

.method public a(Ljava/util/EnumSet;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/flurry/sdk/hf;",
            "Lcom/flurry/sdk/jw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flurry/sdk/pj;->d:Lcom/flurry/sdk/jk;

    .line 37
    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 38
    if-nez v1, :cond_0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lcom/flurry/sdk/pj;->e:Lcom/flurry/sdk/is;

    invoke-virtual {p3, v1, v3}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Class;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jk;

    move-result-object v1

    .line 44
    :cond_0
    invoke-virtual {v1, v0, p2, p3}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 14
    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pj;->a(Ljava/util/EnumSet;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method
