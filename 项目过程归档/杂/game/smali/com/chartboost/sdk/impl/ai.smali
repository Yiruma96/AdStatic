.class public Lcom/chartboost/sdk/impl/ai;
.super Lcom/chartboost/sdk/impl/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ai$2;,
        Lcom/chartboost/sdk/impl/ai$a;,
        Lcom/chartboost/sdk/impl/ai$b;
    }
.end annotation


# instance fields
.field protected A:Lcom/chartboost/sdk/Libraries/j;

.field protected B:Lcom/chartboost/sdk/Libraries/j;

.field protected C:Lcom/chartboost/sdk/Libraries/j;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field protected j:Lcom/chartboost/sdk/impl/ai$b;

.field protected k:I

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:I

.field protected o:I

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:I

.field protected v:Lcom/chartboost/sdk/Libraries/j;

.field protected w:Lcom/chartboost/sdk/Libraries/j;

.field protected x:Lcom/chartboost/sdk/Libraries/j;

.field protected y:Lcom/chartboost/sdk/Libraries/j;

.field protected z:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/ah;-><init>(Lcom/chartboost/sdk/Model/a;)V

    .line 38
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->j:Lcom/chartboost/sdk/impl/ai$b;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->I:Z

    .line 44
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    .line 45
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    .line 46
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->n:I

    .line 47
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->o:I

    .line 48
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    .line 49
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->M:Z

    .line 50
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->N:Z

    .line 57
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->t:Z

    .line 58
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->u:I

    .line 539
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->j:Lcom/chartboost/sdk/impl/ai$b;

    .line 541
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    .line 542
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    .line 543
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    .line 544
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    .line 545
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->z:Lcom/chartboost/sdk/Libraries/j;

    .line 546
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    .line 547
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    .line 548
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Libraries/j;-><init>(Lcom/chartboost/sdk/f;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    .line 550
    iput v1, p0, Lcom/chartboost/sdk/impl/ai;->k:I

    .line 551
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai;Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/view/View;Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/ai;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    return p1
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/ai;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ai;->M:Z

    return p1
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ai;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    return-void
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/ai;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ai;->N:Z

    return p1
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic i(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic j(Lcom/chartboost/sdk/impl/ai;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->N:Z

    return v0
.end method

.method static synthetic k(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ai;->s()V

    return-void
.end method

.method static synthetic l(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic m(Lcom/chartboost/sdk/impl/ai;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->L:Z

    return v0
.end method

.method static synthetic n(Lcom/chartboost/sdk/impl/ai;)Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->M:Z

    return v0
.end method

.method static synthetic o(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic p(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic q(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic r(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic s(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 631
    invoke-static {}, Lcom/chartboost/sdk/Libraries/h;->c()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 632
    return-void
.end method

.method static synthetic t(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method private t()V
    .locals 6

    .prologue
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 635
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "/api/video-complete"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 636
    const-string v1, "location"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    iget-object v2, v2, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 637
    const-string v1, "reward"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "reward"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 638
    const-string v1, "currency-name"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "currency-name"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 639
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 640
    iget v1, p0, Lcom/chartboost/sdk/impl/ai;->n:I

    int-to-float v1, v1

    .line 641
    iget v2, p0, Lcom/chartboost/sdk/impl/ai;->o:I

    int-to-float v2, v2

    .line 642
    const-string v3, "total_time"

    div-float v4, v2, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 644
    iget v3, p0, Lcom/chartboost/sdk/impl/ai;->n:I

    if-gez v3, :cond_0

    .line 645
    const-string v1, "playback_time"

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 648
    :goto_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/h;->c()Lcom/chartboost/sdk/Libraries/h;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->t()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/h;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 649
    return-void

    .line 647
    :cond_0
    const-string v2, "playback_time"

    div-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic u(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method static synthetic v(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic w(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->h()V

    return-void
.end method

.method static synthetic x(Lcom/chartboost/sdk/impl/ai;)Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic y(Lcom/chartboost/sdk/impl/ai;)V
    .locals 0

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->h()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 653
    invoke-super {p0, p1}, Lcom/chartboost/sdk/impl/ah;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 680
    :goto_0
    return v0

    .line 656
    :cond_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "video-landscape"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "replay-landscape"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 657
    :cond_1
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->i:Z

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "replay-landscape"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "replay-portrait"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->z:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "video-click-button"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "post-video-reward-icon"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "post-video-button"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "video-confirmation-button"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "video-confirmation-icon"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    const-string v2, "post-video-reward-icon"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/j;->a(Ljava/lang/String;)V

    .line 668
    const-string v0, "ux"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v2, "video-controls-togglable"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->p:Z

    .line 670
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v2, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "post-video-toaster"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "post-video-toaster"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v2, "tagline"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 671
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->r:Z

    .line 672
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v2, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "confirmation"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "confirmation"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v2, "color"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 673
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->q:Z

    .line 674
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v2, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "post-video-reward-toaster"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 675
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ai;->s:Z

    :cond_5
    move v0, v1

    .line 680
    goto/16 :goto_0
.end method

.method protected b(Landroid/content/Context;)Lcom/chartboost/sdk/f$a;
    .locals 2

    .prologue
    .line 593
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/ai$a;-><init>(Lcom/chartboost/sdk/impl/ai;Landroid/content/Context;Lcom/chartboost/sdk/impl/ai$1;)V

    return-object v0
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 700
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->d()V

    .line 701
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 702
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 703
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->z:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 704
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 705
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 706
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 707
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 708
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->d()V

    .line 709
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->v:Lcom/chartboost/sdk/Libraries/j;

    .line 710
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->w:Lcom/chartboost/sdk/Libraries/j;

    .line 711
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->z:Lcom/chartboost/sdk/Libraries/j;

    .line 712
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->A:Lcom/chartboost/sdk/Libraries/j;

    .line 713
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->B:Lcom/chartboost/sdk/Libraries/j;

    .line 714
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    .line 715
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    .line 716
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ai;->C:Lcom/chartboost/sdk/Libraries/j;

    .line 717
    return-void
.end method

.method public synthetic e()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->x:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->y:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->q:Z

    .line 691
    :cond_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->I:Z

    if-eqz v0, :cond_2

    .line 692
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->i()V

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0
.end method

.method public j()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 598
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ai$a;->d(Z)Lcom/chartboost/sdk/impl/bl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bl;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 601
    :cond_0
    :goto_0
    return v2

    .line 600
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->k()V

    goto :goto_0
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 606
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->k()V

    .line 607
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->j:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->b()Lcom/chartboost/sdk/impl/bh$a;

    move-result-object v0

    iget v1, p0, Lcom/chartboost/sdk/impl/ai;->n:I

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/bh$a;->a(I)V

    .line 609
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    if-nez v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->e()V

    .line 612
    :cond_0
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    .line 613
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    .line 615
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 619
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->l()V

    .line 620
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->j:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    if-nez v0, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->K:Z

    .line 623
    :cond_0
    iput-boolean v2, p0, Lcom/chartboost/sdk/impl/ai;->J:Z

    .line 624
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ai$a;->b(Lcom/chartboost/sdk/impl/ai$a;)Lcom/chartboost/sdk/impl/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ap;->g()V

    .line 625
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->k:I

    if-ge v0, v2, :cond_1

    .line 626
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/ai;->t()V

    .line 628
    :cond_1
    return-void
.end method

.method public m()Z
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    iget-object v0, v0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v1, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public n()V
    .locals 4

    .prologue
    .line 560
    new-instance v0, Lcom/chartboost/sdk/impl/bm$a;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/bm$a;-><init>()V

    .line 561
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v2, "cancel-popup"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bm$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bm$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "cancel-popup"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "text"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bm$a;->b(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bm$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "cancel-popup"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "confirm"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bm$a;->d(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bm$a;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ai;->F:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "cancel-popup"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "cancel"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/bm$a;->c(Ljava/lang/String;)Lcom/chartboost/sdk/impl/bm$a;

    .line 565
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->p()Lcom/chartboost/sdk/impl/ai$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ai$a;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/chartboost/sdk/impl/ai$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/ai$1;-><init>(Lcom/chartboost/sdk/impl/ai;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/bm$a;->a(Landroid/content/Context;Lcom/chartboost/sdk/impl/bm$b;)Lcom/chartboost/sdk/impl/bm;

    .line 589
    return-void
.end method

.method public o()Z
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->j:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Lcom/chartboost/sdk/impl/ai$a;
    .locals 1

    .prologue
    .line 725
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ah;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ai$a;

    return-object v0
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->r()V

    .line 730
    return-void
.end method

.method protected r()Z
    .locals 2

    .prologue
    .line 733
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 734
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->j:Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
