.class public final Lcom/flurry/sdk/qw$h;
.super Lcom/flurry/sdk/rf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/qw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/rf",
        "<[S>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/flurry/sdk/rf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[S
    .locals 1

    .prologue
    .line 107
    new-array v0, p1, [S

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qw$h;->a(I)[S

    move-result-object v0

    return-object v0
.end method
