.class public Lpandemic/android/view/TwoDScrollView;
.super Landroid/widget/FrameLayout;
.source "TwoDScrollView.java"


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static final MAX_SCROLL_FACTOR:F = 0.5f


# instance fields
.field private mGestureIntercepting:Z

.field private mIsBeingDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastScroll:J

.field private mMinimumVelocity:I

.field private mScrollEnabled:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 77
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    .line 95
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->initTwoDScrollView()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 77
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    .line 100
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->initTwoDScrollView()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    .line 77
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    .line 105
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->initTwoDScrollView()V

    .line 106
    return-void
.end method

.method static synthetic access$000(Lpandemic/android/view/TwoDScrollView;)Landroid/widget/Scroller;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private canScroll()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 252
    if-eqz v1, :cond_1

    .line 253
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 254
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 255
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    if-lt v3, v2, :cond_0

    .line 256
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    move-result v3

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 258
    :cond_1
    return v0
.end method

.method private clamp(III)I
    .locals 1

    .prologue
    .line 646
    if-ge p2, p3, :cond_0

    if-gez p1, :cond_2

    .line 662
    :cond_0
    const/4 p1, 0x0

    .line 672
    :cond_1
    :goto_0
    return p1

    .line 664
    :cond_2
    add-int v0, p2, p1

    if-le v0, p3, :cond_1

    .line 670
    sub-int p1, p3, p2

    goto :goto_0
.end method

.method private doScroll(II)V
    .locals 0

    .prologue
    .line 484
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 485
    :cond_0
    invoke-virtual {p0, p1, p2}, Lpandemic/android/view/TwoDScrollView;->smoothScrollBy(II)V

    .line 487
    :cond_1
    return-void
.end method

.method private initTwoDScrollView()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->setFocusable(Z)V

    .line 203
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->setDescendantFocusability(I)V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->setWillNotDraw(Z)V

    .line 205
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lpandemic/android/view/TwoDScrollView;->mTouchSlop:I

    .line 207
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lpandemic/android/view/TwoDScrollView;->mMinimumVelocity:I

    .line 209
    return-void
.end method

.method private startScrollerPoller()V
    .locals 9

    .prologue
    const-wide/16 v2, 0x64

    const/4 v8, 0x0

    .line 181
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 182
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    aput-object v1, v7, v8

    .line 183
    new-instance v1, Lpandemic/android/view/TwoDScrollView$1;

    invoke-direct {v1, p0, v7}, Lpandemic/android/view/TwoDScrollView$1;-><init>(Lpandemic/android/view/TwoDScrollView;[Ljava/util/concurrent/Future;)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, v2

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    aput-object v0, v7, v8

    .line 197
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 213
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 218
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 227
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 245
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TwoDScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 532
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    .line 533
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 7

    .prologue
    .line 562
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v0

    .line 580
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v1

    .line 581
    iget-object v2, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 582
    iget-object v3, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 583
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_3

    .line 584
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 585
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-direct {p0, v2, v5, v6}, Lpandemic/android/view/TwoDScrollView;->clamp(III)I

    move-result v2

    .line 586
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v5, v4}, Lpandemic/android/view/TwoDScrollView;->clamp(III)I

    move-result v3

    .line 585
    invoke-virtual {p0, v2, v3}, Lpandemic/android/view/TwoDScrollView;->scrollTo(II)V

    .line 590
    :goto_0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 591
    :cond_0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lpandemic/android/view/TwoDScrollView;->onScrollChanged(IIII)V

    .line 595
    :cond_1
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->postInvalidate()V

    .line 597
    :cond_2
    return-void

    .line 588
    :cond_3
    invoke-virtual {p0, v2, v3}, Lpandemic/android/view/TwoDScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 527
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    .line 528
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method public fling(II)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 614
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingTop()I

    move-result v1

    sub-int v3, v0, v1

    .line 616
    invoke-virtual {p0, v5}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 617
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    move-result v1

    sub-int v6, v0, v1

    .line 618
    invoke-virtual {p0, v5}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 620
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v2

    sub-int v6, v7, v6

    sub-int v8, v4, v3

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 621
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->startScrollerPoller()V

    .line 623
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->awakenScrollBars(I)Z

    .line 624
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->invalidate()V

    .line 626
    :cond_0
    return-void
.end method

.method public fullScroll(II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 445
    .line 447
    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v2, v0

    .line 460
    :goto_0
    sparse-switch p2, :sswitch_data_1

    :cond_1
    move v1, v0

    .line 472
    :goto_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 473
    :cond_3
    if-eqz v0, :cond_4

    .line 474
    invoke-direct {p0, v1, v2}, Lpandemic/android/view/TwoDScrollView;->doScroll(II)V

    .line 475
    :cond_4
    return v0

    .line 449
    :sswitch_0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    move v2, v1

    .line 450
    goto :goto_0

    .line 452
    :sswitch_1
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v1

    .line 453
    if-lez v1, :cond_0

    .line 454
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    move v2, v1

    goto :goto_0

    .line 462
    :sswitch_2
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    .line 463
    goto :goto_1

    .line 465
    :sswitch_3
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v1

    .line 466
    if-lez v1, :cond_1

    .line 467
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 468
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_1

    .line 447
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch

    .line 460
    :sswitch_data_1
    .sparse-switch
        0x11 -> :sswitch_2
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 134
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 135
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    .line 136
    if-ge v1, v0, :cond_1

    .line 137
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 140
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 150
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 151
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 154
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 4

    .prologue
    .line 159
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const/4 v0, 0x0

    .line 170
    :goto_0
    return v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHorizontalFadingEdgeLength()I

    move-result v0

    .line 164
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 165
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    .line 166
    if-ge v1, v0, :cond_1

    .line 167
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 170
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 120
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 121
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    goto :goto_0

    .line 124
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 538
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 543
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v1, v0}, Lpandemic/android/view/TwoDScrollView;->getChildMeasureSpec(III)I

    move-result v0

    .line 544
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 546
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 547
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 3

    .prologue
    .line 551
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 554
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 553
    invoke-static {p2, v1, v2}, Lpandemic/android/view/TwoDScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 555
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 557
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 558
    return-void
.end method

.method protected onAutoScrollFinished()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    iget-boolean v2, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    if-nez v2, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 274
    :cond_1
    iget-boolean v2, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    if-nez v2, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 285
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v3, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    move v1, v0

    .line 286
    goto :goto_0

    .line 289
    :cond_2
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->canScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 290
    iput-boolean v1, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 295
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 297
    packed-switch v2, :pswitch_data_0

    .line 339
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 308
    :pswitch_0
    iget v1, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    .line 309
    iget v2, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    sub-float v2, v4, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 310
    iget v3, p0, Lpandemic/android/view/TwoDScrollView;->mTouchSlop:I

    if-gt v1, v3, :cond_5

    iget v1, p0, Lpandemic/android/view/TwoDScrollView;->mTouchSlop:I

    if-le v2, v1, :cond_4

    .line 311
    :cond_5
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 317
    :pswitch_1
    iput v3, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    .line 318
    iput v4, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    .line 325
    iget-object v2, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    :goto_2
    iput-boolean v0, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    .line 331
    :pswitch_2
    iput-boolean v1, p0, Lpandemic/android/view/TwoDScrollView;->mIsBeingDragged:Z

    goto :goto_1

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 601
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 603
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lpandemic/android/view/TwoDScrollView;->scrollTo(II)V

    .line 604
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 344
    iget-boolean v1, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    if-nez v1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 348
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    if-nez v1, :cond_0

    .line 354
    :cond_2
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->canScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_3

    .line 359
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 361
    :cond_3
    iget-object v1, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 363
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 364
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 367
    packed-switch v1, :pswitch_data_0

    .line 433
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 373
    :pswitch_0
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    .line 374
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 378
    :cond_5
    iput v3, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    .line 379
    iput v4, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    goto :goto_1

    .line 383
    :pswitch_1
    iget v1, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    sub-float/2addr v1, v4

    float-to-int v2, v1

    .line 384
    iget v1, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 385
    iput v4, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionX:F

    .line 386
    iput v3, p0, Lpandemic/android/view/TwoDScrollView;->mLastMotionY:F

    .line 388
    if-gez v2, :cond_9

    .line 389
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v3

    if-gez v3, :cond_6

    move v2, v0

    .line 401
    :cond_6
    :goto_2
    if-gez v1, :cond_b

    .line 402
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v3

    if-gez v3, :cond_d

    .line 414
    :cond_7
    :goto_3
    if-nez v0, :cond_8

    if-eqz v2, :cond_4

    .line 415
    :cond_8
    invoke-virtual {p0, v2, v0}, Lpandemic/android/view/TwoDScrollView;->scrollBy(II)V

    goto :goto_1

    .line 392
    :cond_9
    if-lez v2, :cond_6

    .line 393
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 394
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v3, v4, v3

    .line 395
    if-lez v3, :cond_a

    .line 396
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_a
    move v2, v0

    .line 398
    goto :goto_2

    .line 405
    :cond_b
    if-lez v1, :cond_d

    .line 406
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 407
    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int v3, v4, v3

    .line 408
    if-lez v3, :cond_7

    .line 409
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_3

    .line 418
    :pswitch_2
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 419
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 421
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 422
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 424
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lpandemic/android/view/TwoDScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_c

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_c

    .line 425
    neg-int v1, v1

    neg-int v0, v0

    invoke-virtual {p0, v1, v0}, Lpandemic/android/view/TwoDScrollView;->fling(II)V

    .line 428
    :cond_c
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 429
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 430
    const/4 v0, 0x0

    iput-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :cond_d
    move v0, v1

    goto/16 :goto_3

    .line 367
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 4

    .prologue
    .line 635
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 636
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 637
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lpandemic/android/view/TwoDScrollView;->clamp(III)I

    move-result v1

    .line 638
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {p0, p2, v2, v0}, Lpandemic/android/view/TwoDScrollView;->clamp(III)I

    move-result v0

    .line 639
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 640
    :cond_0
    invoke-super {p0, v1, v0}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 643
    :cond_1
    return-void
.end method

.method public setGestureIntercepting(Z)V
    .locals 0

    .prologue
    .line 110
    iput-boolean p1, p0, Lpandemic/android/view/TwoDScrollView;->mGestureIntercepting:Z

    .line 111
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .prologue
    .line 676
    iput-boolean p1, p0, Lpandemic/android/view/TwoDScrollView;->mScrollEnabled:Z

    .line 677
    return-void
.end method

.method public final smoothScrollBy(II)V
    .locals 4

    .prologue
    .line 496
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lpandemic/android/view/TwoDScrollView;->mLastScroll:J

    sub-long/2addr v0, v2

    .line 497
    const-wide/16 v2, 0xfa

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 498
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 499
    invoke-direct {p0}, Lpandemic/android/view/TwoDScrollView;->startScrollerPoller()V

    .line 500
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lpandemic/android/view/TwoDScrollView;->awakenScrollBars(I)Z

    .line 501
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->invalidate()V

    .line 508
    :goto_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpandemic/android/view/TwoDScrollView;->mLastScroll:J

    .line 509
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 506
    :cond_1
    invoke-virtual {p0, p1, p2}, Lpandemic/android/view/TwoDScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method public final smoothScrollTo(II)V
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lpandemic/android/view/TwoDScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lpandemic/android/view/TwoDScrollView;->smoothScrollBy(II)V

    .line 519
    return-void
.end method
