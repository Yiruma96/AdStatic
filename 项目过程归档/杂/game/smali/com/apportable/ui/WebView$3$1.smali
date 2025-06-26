.class Lcom/apportable/ui/WebView$3$1;
.super Landroid/webkit/WebView;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/WebView$3;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/apportable/ui/WebView$3$1;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superRequestLayout()V

    return-void
.end method

.method static synthetic access$1700(Lcom/apportable/ui/WebView$3$1;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superInvalidate()V

    return-void
.end method

.method static synthetic access$1800(Lcom/apportable/ui/WebView$3$1;ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superRequestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/apportable/ui/WebView$3$1;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/apportable/ui/WebView$3$1;->superSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/apportable/ui/WebView$3$1;)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superOnAttachedToWindow()V

    return-void
.end method

.method static synthetic access$2100(Lcom/apportable/ui/WebView$3$1;Lcom/apportable/ui/View;I)V
    .locals 0

    .prologue
    .line 241
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superOnVisibilityChanged(Lcom/apportable/ui/View;I)V

    return-void
.end method

.method private superInvalidate()V
    .locals 0

    .prologue
    .line 260
    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 261
    return-void
.end method

.method private superOnAttachedToWindow()V
    .locals 0

    .prologue
    .line 248
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 249
    return-void
.end method

.method private superOnVisibilityChanged(Lcom/apportable/ui/View;I)V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 265
    return-void
.end method

.method private superRequestFocus(ILandroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 256
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method private superRequestLayout()V
    .locals 0

    .prologue
    .line 244
    invoke-super {p0}, Landroid/webkit/WebView;->requestLayout()V

    .line 245
    return-void
.end method

.method private superSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 5

    .prologue
    .line 361
    invoke-super {p0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 370
    :goto_0
    return-object v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v1, v0

    .line 366
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v2, v0

    .line 367
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    .line 368
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mFrame:Landroid/graphics/RectF;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$2200(Lcom/apportable/ui/WebView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v4, v0

    .line 369
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1600(Lcom/apportable/ui/WebView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$3$1$2;

    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3$1$2;-><init>(Lcom/apportable/ui/WebView$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superInvalidate()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 329
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 330
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$3$1$5;

    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3$1$5;-><init>(Lcom/apportable/ui/WebView$3$1;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 339
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-direct {p0}, Lcom/apportable/ui/WebView$3$1;->superOnAttachedToWindow()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Lcom/apportable/ui/View;I)V
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 343
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$3$1$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/apportable/ui/WebView$3$1$6;-><init>(Lcom/apportable/ui/WebView$3$1;Lcom/apportable/ui/View;I)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superOnVisibilityChanged(Lcom/apportable/ui/View;I)V

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .prologue
    .line 299
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 300
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$3$1$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/apportable/ui/WebView$3$1$3;-><init>(Lcom/apportable/ui/WebView$3$1;ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superRequestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/WebView$3$1;->superRequestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 271
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 272
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v0, v0, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$1600(Lcom/apportable/ui/WebView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$3$1$1;

    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$3$1$1;-><init>(Lcom/apportable/ui/WebView$3$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    .line 315
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1;->this$1:Lcom/apportable/ui/WebView$3;

    iget-object v1, v1, Lcom/apportable/ui/WebView$3;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->apportableMainThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/apportable/ui/WebView;->access$300(Lcom/apportable/ui/WebView;)Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 316
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$3$1$4;

    invoke-direct {v1, p0, p1}, Lcom/apportable/ui/WebView$3$1$4;-><init>(Lcom/apportable/ui/WebView$3$1;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method
