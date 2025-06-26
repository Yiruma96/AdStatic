.class Lcom/apportable/ui/ScrollView$TrackingScrollView;
.super Lpandemic/android/view/TwoDScrollView;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackingScrollView"
.end annotation


# instance fields
.field private mDontNotifyScroll:Z

.field private mDragging:Z

.field private mPagingEnabled:Z

.field final synthetic this$0:Lcom/apportable/ui/ScrollView;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/ScrollView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    .line 16
    invoke-direct {p0, p2}, Lpandemic/android/view/TwoDScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method static synthetic access$402(Lcom/apportable/ui/ScrollView$TrackingScrollView;Z)Z
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mPagingEnabled:Z

    return p1
.end method


# virtual methods
.method public fling(II)V
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mPagingEnabled:Z

    if-nez v0, :cond_0

    .line 49
    invoke-super {p0, p1, p2}, Lpandemic/android/view/TwoDScrollView;->fling(II)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    iget v0, v0, Lcom/apportable/ui/ScrollView;->mObject:I

    # invokes: Lcom/apportable/ui/ScrollView;->notifyFling(III)V
    invoke-static {v0, p1, p2}, Lcom/apportable/ui/ScrollView;->access$100(III)V

    .line 53
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    return v0
.end method

.method protected onAutoScrollFinished()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lpandemic/android/view/TwoDScrollView;->onAutoScrollFinished()V

    .line 69
    iget-boolean v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDontNotifyScroll:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    iget v0, v0, Lcom/apportable/ui/ScrollView;->mObject:I

    # invokes: Lcom/apportable/ui/ScrollView;->notifyAutoScrollFinished(I)V
    invoke-static {v0}, Lcom/apportable/ui/ScrollView;->access$300(I)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Lpandemic/android/view/TwoDScrollView;->onScrollChanged(IIII)V

    .line 58
    iget-boolean v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDontNotifyScroll:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    iget v0, v0, Lcom/apportable/ui/ScrollView;->mObject:I

    # invokes: Lcom/apportable/ui/ScrollView;->notifyScroll(III)V
    invoke-static {v0, p1, p2}, Lcom/apportable/ui/ScrollView;->access$200(III)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 25
    iget-boolean v2, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    .line 27
    iget-boolean v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 29
    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_1

    .line 30
    :cond_0
    iput-boolean v1, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    .line 37
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lpandemic/android/view/TwoDScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 38
    if-eqz v2, :cond_3

    .line 39
    if-eq v0, v4, :cond_2

    if-ne v0, v5, :cond_3

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    iget v0, v0, Lcom/apportable/ui/ScrollView;->mObject:I

    # invokes: Lcom/apportable/ui/ScrollView;->notifyTouchFinish(I)V
    invoke-static {v0}, Lcom/apportable/ui/ScrollView;->access$000(I)V

    .line 43
    :cond_3
    return v1

    .line 33
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 34
    iput-boolean v4, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDragging:Z

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 4

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollX()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollY()I

    move-result v1

    .line 80
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDontNotifyScroll:Z

    .line 81
    invoke-super {p0, p1, p2}, Lpandemic/android/view/TwoDScrollView;->scrollTo(II)V

    .line 82
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->mDontNotifyScroll:Z

    .line 84
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollX()I

    move-result v2

    .line 85
    invoke-virtual {p0}, Lcom/apportable/ui/ScrollView$TrackingScrollView;->getScrollY()I

    move-result v3

    .line 87
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/ScrollView$TrackingScrollView;->this$0:Lcom/apportable/ui/ScrollView;

    iget v0, v0, Lcom/apportable/ui/ScrollView;->mObject:I

    # invokes: Lcom/apportable/ui/ScrollView;->notifyScroll(III)V
    invoke-static {v0, v2, v3}, Lcom/apportable/ui/ScrollView;->access$200(III)V

    .line 89
    :cond_1
    return-void
.end method
