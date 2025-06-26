.class public abstract Lcom/apportable/ui/Cell;
.super Landroid/widget/AbsoluteLayout;
.source "Cell.java"


# instance fields
.field private mContainer:I

.field private mObject:I

.field private mRow:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIF)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    float-to-int v2, p4

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Cell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iput p2, p0, Lcom/apportable/ui/Cell;->mRow:I

    .line 22
    iput p3, p0, Lcom/apportable/ui/Cell;->mContainer:I

    .line 23
    return-void
.end method


# virtual methods
.method public abstract getCellView(II)Lcom/apportable/ui/View;
.end method

.method public loadView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 34
    iget v0, p0, Lcom/apportable/ui/Cell;->mContainer:I

    iget v1, p0, Lcom/apportable/ui/Cell;->mRow:I

    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/Cell;->getCellView(II)Lcom/apportable/ui/View;

    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 39
    :cond_0
    iget v0, v1, Lcom/apportable/ui/View;->mObject:I

    iput v0, p0, Lcom/apportable/ui/Cell;->mObject:I

    .line 42
    iget v0, p0, Lcom/apportable/ui/Cell;->mContainer:I

    iget v2, v1, Lcom/apportable/ui/View;->mObject:I

    invoke-virtual {p0, v0, v2}, Lcom/apportable/ui/Cell;->onCellAttached(II)V

    .line 43
    invoke-virtual {v1}, Lcom/apportable/ui/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 44
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    :cond_1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v0}, Lcom/apportable/ui/Cell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public abstract onCellAttached(II)V
.end method

.method public abstract onCellDetached(II)V
.end method

.method public prepareForReuse(IF)V
    .locals 3

    .prologue
    .line 26
    iget v0, p0, Lcom/apportable/ui/Cell;->mContainer:I

    iget v1, p0, Lcom/apportable/ui/Cell;->mObject:I

    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/Cell;->onCellDetached(II)V

    .line 27
    iput p1, p0, Lcom/apportable/ui/Cell;->mRow:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/apportable/ui/Cell;->mObject:I

    .line 29
    invoke-virtual {p0}, Lcom/apportable/ui/Cell;->removeAllViews()V

    .line 30
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    float-to-int v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Cell;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    return-void
.end method
