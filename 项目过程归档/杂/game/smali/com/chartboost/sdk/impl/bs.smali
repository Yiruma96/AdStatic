.class public final Lcom/chartboost/sdk/impl/bs;
.super Lcom/chartboost/sdk/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/bs$1;,
        Lcom/chartboost/sdk/impl/bs$c;,
        Lcom/chartboost/sdk/impl/bs$b;,
        Lcom/chartboost/sdk/impl/bs$a;
    }
.end annotation


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/f;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/bs;->j:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bs;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bs;->h()V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/bs;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/bs;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/bs;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bs;->i()V

    return-void
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/bs;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bs;->h()V

    return-void
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/bs;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bs;->h()V

    return-void
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/bs;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bs;->h()V

    return-void
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/bs;)V
    .locals 0

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bs;->h()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 1

    .prologue
    .line 59
    const-string v0, "html"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/bs;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 62
    const/4 v0, 0x0

    .line 69
    :goto_0
    return v0

    .line 64
    :cond_0
    iput-object v0, p0, Lcom/chartboost/sdk/impl/bs;->j:Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/bs;->b()Z

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/chartboost/sdk/impl/bs$a;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/bs;->j:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/bs$a;-><init>(Lcom/chartboost/sdk/impl/bs;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
