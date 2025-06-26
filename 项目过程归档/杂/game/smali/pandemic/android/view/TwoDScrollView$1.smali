.class Lpandemic/android/view/TwoDScrollView$1;
.super Ljava/lang/Object;
.source "TwoDScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpandemic/android/view/TwoDScrollView;->startScrollerPoller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpandemic/android/view/TwoDScrollView;

.field final synthetic val$f:[Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lpandemic/android/view/TwoDScrollView;[Ljava/util/concurrent/Future;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lpandemic/android/view/TwoDScrollView$1;->this$0:Lpandemic/android/view/TwoDScrollView;

    iput-object p2, p0, Lpandemic/android/view/TwoDScrollView$1;->val$f:[Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView$1;->this$0:Lpandemic/android/view/TwoDScrollView;

    # getter for: Lpandemic/android/view/TwoDScrollView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lpandemic/android/view/TwoDScrollView;->access$000(Lpandemic/android/view/TwoDScrollView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView$1;->this$0:Lpandemic/android/view/TwoDScrollView;

    invoke-virtual {v0}, Lpandemic/android/view/TwoDScrollView;->onAutoScrollFinished()V

    .line 188
    :goto_0
    iget-object v0, p0, Lpandemic/android/view/TwoDScrollView$1;->val$f:[Ljava/util/concurrent/Future;

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 189
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 192
    :cond_1
    return-void
.end method
