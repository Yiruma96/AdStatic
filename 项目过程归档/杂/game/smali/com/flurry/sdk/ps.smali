.class public Lcom/flurry/sdk/ps;
.super Lcom/flurry/sdk/pw;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/pw",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/pw;-><init>(Ljava/lang/Class;Z)V

    .line 27
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
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
    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hf;->d(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/sdk/hf;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/jz;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;)V

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/ps;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    .line 43
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jz;->d(Ljava/lang/Object;Lcom/flurry/sdk/hf;)V

    .line 44
    return-void
.end method
