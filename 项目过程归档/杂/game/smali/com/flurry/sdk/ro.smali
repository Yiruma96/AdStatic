.class public abstract Lcom/flurry/sdk/ro;
.super Lcom/flurry/sdk/rk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ro$b;,
        Lcom/flurry/sdk/ro$a;
    }
.end annotation


# instance fields
.field d:Lcom/flurry/sdk/rs;


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/rs;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/flurry/sdk/rk;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/flurry/sdk/ro;->d:Lcom/flurry/sdk/rs;

    .line 28
    return-void
.end method


# virtual methods
.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, ""

    return-object v0
.end method

.method public final s()Lcom/flurry/sdk/ru;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/ro;->d:Lcom/flurry/sdk/rs;

    invoke-virtual {v0}, Lcom/flurry/sdk/rs;->a()Lcom/flurry/sdk/ru;

    move-result-object v0

    return-object v0
.end method
