.class public abstract Lcom/flurry/sdk/nw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/nh;


# instance fields
.field protected final c:Lcom/flurry/sdk/qs;

.field protected final d:Lcom/flurry/sdk/sh;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/qs;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/flurry/sdk/nw;->d:Lcom/flurry/sdk/sh;

    .line 20
    iput-object p2, p0, Lcom/flurry/sdk/nw;->c:Lcom/flurry/sdk/qs;

    .line 21
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/flurry/sdk/nw;->d:Lcom/flurry/sdk/sh;

    invoke-virtual {v1}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/nw;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/sh;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
