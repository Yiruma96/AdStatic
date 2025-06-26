.class public Lcom/flurry/sdk/lj;
.super Lcom/flurry/sdk/mc;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/js;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/mc",
        "<",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<*>;>;",
        "Lcom/flurry/sdk/js;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/sh;

.field protected final b:Lcom/flurry/sdk/is;

.field protected c:Lcom/flurry/sdk/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)V
    .locals 1

    .prologue
    .line 29
    const-class v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/mc;-><init>(Ljava/lang/Class;)V

    .line 30
    iput-object p1, p0, Lcom/flurry/sdk/lj;->a:Lcom/flurry/sdk/sh;

    .line 31
    iput-object p2, p0, Lcom/flurry/sdk/lj;->b:Lcom/flurry/sdk/is;

    .line 32
    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lj;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/lj;->a:Lcom/flurry/sdk/sh;

    iget-object v1, p0, Lcom/flurry/sdk/lj;->b:Lcom/flurry/sdk/is;

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/sdk/jc;->a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/lj;->c:Lcom/flurry/sdk/jg;

    .line 46
    return-void
.end method

.method public b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hj;",
            "Lcom/flurry/sdk/iz;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/flurry/sdk/lj;->c:Lcom/flurry/sdk/jg;

    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/jg;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
