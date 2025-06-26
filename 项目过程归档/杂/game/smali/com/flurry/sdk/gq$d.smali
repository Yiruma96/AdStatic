.class public Lcom/flurry/sdk/gq$d;
.super Lcom/flurry/sdk/gq$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gq$g;-><init>(Lcom/flurry/sdk/gq$1;)V

    .line 400
    iput-object p1, p0, Lcom/flurry/sdk/gq$d;->z:Ljava/lang/String;

    .line 401
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/gq$1;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/flurry/sdk/gq$d;-><init>(Ljava/lang/String;)V

    return-void
.end method
