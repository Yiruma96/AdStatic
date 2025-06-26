.class public Lcom/flurry/sdk/qh;
.super Lcom/flurry/sdk/pw;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pw",
        "<",
        "Lcom/flurry/sdk/sq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/flurry/sdk/sq;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/pw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/sq;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p1, p2}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hf;)V

    .line 33
    return-void
.end method

.method public final a(Lcom/flurry/sdk/sq;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jz;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;)V

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/qh;->a(Lcom/flurry/sdk/sq;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    .line 54
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jz;->d(Ljava/lang/Object;Lcom/flurry/sdk/hf;)V

    .line 55
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Lcom/flurry/sdk/sq;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/qh;->a(Lcom/flurry/sdk/sq;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Lcom/flurry/sdk/sq;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/qh;->a(Lcom/flurry/sdk/sq;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V

    return-void
.end method
