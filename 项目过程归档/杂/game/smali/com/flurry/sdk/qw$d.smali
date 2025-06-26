.class public final Lcom/flurry/sdk/qw$d;
.super Lcom/flurry/sdk/rf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/qw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/rf",
        "<[D>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/flurry/sdk/rf;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)[D
    .locals 1

    .prologue
    .line 136
    new-array v0, p1, [D

    return-object v0
.end method

.method public synthetic b(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/qw$d;->a(I)[D

    move-result-object v0

    return-object v0
.end method
