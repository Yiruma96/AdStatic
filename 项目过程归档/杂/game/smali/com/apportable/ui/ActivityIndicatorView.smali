.class Lcom/apportable/ui/ActivityIndicatorView;
.super Lcom/apportable/ui/View;
.source "ActivityIndicatorView.java"


# instance fields
.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 27
    invoke-direct {p0}, Lcom/apportable/ui/ActivityIndicatorView;->init()V

    .line 28
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 32
    invoke-direct {p0}, Lcom/apportable/ui/ActivityIndicatorView;->init()V

    .line 33
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/ActivityIndicatorView;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/apportable/ui/ActivityIndicatorView;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ActivityIndicatorView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/ActivityIndicatorView;
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/apportable/ui/ActivityIndicatorView;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/ActivityIndicatorView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 20
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/apportable/ui/ActivityIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x101007a

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/apportable/ui/ActivityIndicatorView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 21
    iget-object v0, p0, Lcom/apportable/ui/ActivityIndicatorView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 22
    iget-object v0, p0, Lcom/apportable/ui/ActivityIndicatorView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/ActivityIndicatorView;->setContentView(Landroid/view/View;)V

    .line 23
    return-void
.end method
