.class final Lcom/flurry/sdk/g$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/g;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/g;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/g;Lcom/flurry/sdk/g$1;)V
    .locals 0

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/flurry/sdk/g$a;-><init>(Lcom/flurry/sdk/g;)V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 480
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onHideCustomView()"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 488
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->u(Lcom/flurry/sdk/g;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->y(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 493
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->y(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 496
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 497
    iget-object v2, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v2}, Lcom/flurry/sdk/g;->w(Lcom/flurry/sdk/g;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 498
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->w(Lcom/flurry/sdk/g;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v2}, Lcom/flurry/sdk/g;->u(Lcom/flurry/sdk/g;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 500
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 501
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 502
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 503
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 505
    :cond_3
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1, v3}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 507
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->z(Lcom/flurry/sdk/g;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;I)V

    .line 508
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->A(Lcom/flurry/sdk/g;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 510
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1, v3}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 511
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1, v3}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 512
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1, v3}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Landroid/view/View;)Landroid/view/View;

    .line 514
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v1}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v2}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 401
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(14)"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 477
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 409
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->u(Lcom/flurry/sdk/g;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->v(Lcom/flurry/sdk/g;)Landroid/webkit/WebChromeClient;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->v(Lcom/flurry/sdk/g;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1, p1}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Landroid/view/View;)Landroid/view/View;

    .line 415
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-static {v1, v2}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;I)I

    .line 416
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1, p3}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 418
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 419
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->w(Lcom/flurry/sdk/g;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 420
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->w(Lcom/flurry/sdk/g;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v2}, Lcom/flurry/sdk/g;->u(Lcom/flurry/sdk/g;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x11

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 431
    iget-object v2, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v2}, Lcom/flurry/sdk/g;->w(Lcom/flurry/sdk/g;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2, v5, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 438
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    if-nez v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    new-instance v2, Lcom/flurry/sdk/g$a$1;

    const v3, 0x1030011

    invoke-direct {v2, p0, v0, v3, v0}, Lcom/flurry/sdk/g$a$1;-><init>(Lcom/flurry/sdk/g$a;Landroid/content/Context;ILandroid/app/Activity;)V

    invoke-static {v1, v2}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 451
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 453
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/g$a$2;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/g$a$2;-><init>(Lcom/flurry/sdk/g$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 461
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    new-instance v2, Lcom/flurry/sdk/g$a$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/g$a$3;-><init>(Lcom/flurry/sdk/g$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 470
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 471
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v1}, Lcom/flurry/sdk/g;->x(Lcom/flurry/sdk/g;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 474
    :cond_2
    invoke-static {v0, p2, v6}, Lcom/flurry/sdk/cb;->a(Landroid/app/Activity;IZ)Z

    .line 476
    iget-object v1, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v1}, Lcom/flurry/sdk/g;->getPlatformModule()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v2}, Lcom/flurry/sdk/g;->getAdUnit()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 387
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onShowCustomView(7)"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-static {v0}, Lcom/flurry/sdk/g;->a(Lcom/flurry/sdk/g;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no activity present"

    invoke-static {v2, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 396
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/g$a;->a:Lcom/flurry/sdk/g;

    invoke-virtual {v0}, Lcom/flurry/sdk/g;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 395
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/flurry/sdk/g$a;->onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V

    goto :goto_0
.end method
