.class Lcom/apportable/ui/ProgressView;
.super Lcom/apportable/ui/View;
.source "ProgressView.java"


# instance fields
.field private mProgress:F

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 27
    invoke-direct {p0}, Lcom/apportable/ui/ProgressView;->init()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 32
    invoke-direct {p0}, Lcom/apportable/ui/ProgressView;->init()V

    .line 33
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/ProgressView;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/apportable/ui/ProgressView;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ProgressView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/ProgressView;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/apportable/ui/ProgressView;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/ProgressView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 21
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/apportable/ui/ProgressView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/apportable/ui/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 22
    iget-object v0, p0, Lcom/apportable/ui/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/ProgressView;->setContentView(Landroid/view/View;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/apportable/ui/ProgressView;->mProgress:F

    return v0
.end method

.method public setProgress(FZ)V
    .locals 2

    .prologue
    .line 44
    iput p1, p0, Lcom/apportable/ui/ProgressView;->mProgress:F

    .line 45
    iget-object v0, p0, Lcom/apportable/ui/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/apportable/ui/ProgressView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 46
    return-void
.end method
