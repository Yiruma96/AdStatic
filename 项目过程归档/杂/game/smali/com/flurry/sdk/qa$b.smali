.class public final Lcom/flurry/sdk/qa$b;
.super Lcom/flurry/sdk/pt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/qa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pt",
        "<",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 90
    const-class v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/pt;-><init>(Ljava/lang/Class;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 87
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/qa$b;->a(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public a(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hf;->b(I)V

    .line 97
    return-void
.end method
