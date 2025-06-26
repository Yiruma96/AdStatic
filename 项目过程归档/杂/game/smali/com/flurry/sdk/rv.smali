.class public abstract Lcom/flurry/sdk/rv;
.super Lcom/flurry/sdk/rz;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/flurry/sdk/rz;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)D
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/flurry/sdk/rv;->m()D

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public abstract m()D
.end method
