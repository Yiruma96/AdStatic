.class Lcom/apportable/ui/ScrollView$ScrollContainer;
.super Landroid/widget/AbsoluteLayout;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollContainer"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 119
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$ScrollContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1, v0}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setMeasuredDimension(II)V

    .line 123
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 107
    invoke-virtual {p0, v0}, Lcom/apportable/ui/ScrollView$ScrollContainer;->getLocationInWindow([I)V

    .line 108
    aget v1, v0, v4

    int-to-float v1, v1

    aget v2, v0, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 109
    invoke-static {p1}, Lcom/apportable/ui/Window;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 110
    aget v1, v0, v4

    neg-int v1, v1

    int-to-float v1, v1

    aget v0, v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 112
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    return v3
.end method

.method public setSize(II)V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x33

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method
