.class final Lcom/flurry/sdk/ou$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/flurry/sdk/ox$a;

.field public final b:Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/flurry/sdk/ou$a;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/ou$a;Lcom/flurry/sdk/ox$a;Lcom/flurry/sdk/jk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ou$a;",
            "Lcom/flurry/sdk/ox$a;",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/flurry/sdk/ou$a;->c:Lcom/flurry/sdk/ou$a;

    .line 89
    iput-object p2, p0, Lcom/flurry/sdk/ou$a;->a:Lcom/flurry/sdk/ox$a;

    .line 90
    iput-object p3, p0, Lcom/flurry/sdk/ou$a;->b:Lcom/flurry/sdk/jk;

    .line 91
    return-void
.end method
