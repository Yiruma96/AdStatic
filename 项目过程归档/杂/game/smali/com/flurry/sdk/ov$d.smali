.class public final Lcom/flurry/sdk/ov$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/flurry/sdk/ov;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/ov;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/flurry/sdk/ov;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/flurry/sdk/ov$d;->a:Lcom/flurry/sdk/jk;

    .line 76
    iput-object p2, p0, Lcom/flurry/sdk/ov$d;->b:Lcom/flurry/sdk/ov;

    .line 77
    return-void
.end method
