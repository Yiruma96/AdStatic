.class Lcom/apportable/ui/ScrollView;
.super Lcom/apportable/ui/View;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/ScrollView$ScrollContainer;,
        Lcom/apportable/ui/ScrollView$TrackingScrollView;
    }
.end annotation


# instance fields
.field private _contentHeight:I

.field private _contentWidth:I

.field private _insetHeight:I

.field private _insetWidth:I

.field private mFrame:Landroid/graphics/RectF;

.field private mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

.field private mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    .line 149
    invoke-direct {p0, p1}, Lcom/apportable/ui/ScrollView;->init(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 133
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    .line 154
    iput-object p3, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    .line 155
    invoke-direct {p0, p1}, Lcom/apportable/ui/ScrollView;->init(Landroid/content/Context;)V

    .line 156
    return-void
.end method

.method static synthetic access$000(I)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lcom/apportable/ui/ScrollView;->notifyTouchFinish(I)V

    return-void
.end method

.method static synthetic access$100(III)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0, p1, p2}, Lcom/apportable/ui/ScrollView;->notifyFling(III)V

    return-void
.end method

.method static synthetic access$200(III)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0, p1, p2}, Lcom/apportable/ui/ScrollView;->notifyScroll(III)V

    return-void
.end method

.method static synthetic access$300(I)V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lcom/apportable/ui/ScrollView;->notifyAutoScrollFinished(I)V

    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/ScrollView;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/apportable/ui/ScrollView;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ScrollView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/ScrollView;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/apportable/ui/ScrollView;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/ScrollView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 159
    new-instance v0, Lcom/apportable/ui/ScrollView$ScrollContainer;

    invoke-direct {v0, p1}, Lcom/apportable/ui/ScrollView$ScrollContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    .line 160
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setSize(II)V

    .line 161
    new-instance v0, Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;-><init>(Lcom/apportable/ui/ScrollView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    .line 162
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    invoke-virtual {v0, v1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->addView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v0, v4}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v0, v4}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    return-void
.end method

.method private static native notifyAutoScrollFinished(I)V
.end method

.method private static native notifyFling(III)V
.end method

.method private static native notifyScroll(III)V
.end method

.method private static native notifyTouchFinish(I)V
.end method

.method private updateScrollContainerSize()V
    .locals 4

    .prologue
    .line 191
    iget v0, p0, Lcom/apportable/ui/ScrollView;->_contentWidth:I

    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/apportable/ui/ScrollView;->_contentWidth:I

    .line 192
    :goto_0
    iget v1, p0, Lcom/apportable/ui/ScrollView;->_contentHeight:I

    iget-object v2, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/apportable/ui/ScrollView;->_contentHeight:I

    .line 193
    :goto_1
    iget-object v2, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    iget v3, p0, Lcom/apportable/ui/ScrollView;->_insetWidth:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/apportable/ui/ScrollView;->_insetHeight:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0, v1}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setSize(II)V

    .line 194
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    goto :goto_1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 216
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->notifyTouchEvent(Landroid/view/MotionEvent;)V

    .line 217
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 218
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getSubviewsGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    return-object v0
.end method

.method protected isDragging()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->isDragging()Z

    move-result v0

    return v0
.end method

.method protected notifyTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public setContentInset(IIII)V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollContainer:Lcom/apportable/ui/ScrollView$ScrollContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apportable/ui/ScrollView$ScrollContainer;->setPadding(IIII)V

    .line 185
    add-int v0, p1, p3

    iput v0, p0, Lcom/apportable/ui/ScrollView;->_insetWidth:I

    .line 186
    add-int v0, p2, p4

    iput v0, p0, Lcom/apportable/ui/ScrollView;->_insetHeight:I

    .line 187
    invoke-direct {p0}, Lcom/apportable/ui/ScrollView;->updateScrollContainerSize()V

    .line 188
    return-void
.end method

.method public setContentOffset(IIZ)V
    .locals 1

    .prologue
    .line 205
    if-eqz p3, :cond_0

    .line 206
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->smoothScrollTo(II)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v0, p1, p2}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setContentSize(II)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/apportable/ui/ScrollView;->_contentWidth:I

    .line 179
    iput p2, p0, Lcom/apportable/ui/ScrollView;->_contentHeight:I

    .line 180
    invoke-direct {p0}, Lcom/apportable/ui/ScrollView;->updateScrollContainerSize()V

    .line 181
    return-void
.end method

.method public setFrame(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/apportable/ui/View;->setFrame(Landroid/graphics/RectF;)V

    .line 231
    iput-object p1, p0, Lcom/apportable/ui/ScrollView;->mFrame:Landroid/graphics/RectF;

    .line 232
    return-void
.end method

.method public setGestureIntercepting(Z)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->setGestureIntercepting(Z)V

    .line 202
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    # setter for: Lcom/apportable/ui/ScrollView$TrackingScrollView;->mPagingEnabled:Z
    invoke-static {v0, p1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->access$402(Lcom/apportable/ui/ScrollView$TrackingScrollView;Z)Z

    .line 198
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/apportable/ui/ScrollView;->mScrollView:Lcom/apportable/ui/ScrollView$TrackingScrollView;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->setScrollEnabled(Z)V

    .line 170
    return-void
.end method
