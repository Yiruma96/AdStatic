.class Lcom/apportable/ui/TextField;
.super Lcom/apportable/ui/Control;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/TextField$TextFieldLayer;
    }
.end annotation


# static fields
.field private static final LOGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "TextField"

.field private static final UITextFieldViewModeAlways:I = 0x3

.field private static final UITextFieldViewModeNever:I = 0x0

.field private static final UITextFieldViewModeUnlessEditing:I = 0x2

.field private static final UITextFieldViewModeWhileEditing:I = 0x1


# instance fields
.field private becomeFirstResponderHandler:Landroid/os/Handler;

.field private becomeFirstResponderRunnable:Ljava/lang/Runnable;

.field private layout:Landroid/widget/LinearLayout;

.field private mExitedOnReturn:Z

.field private mFontSize:F

.field private mLeftView:Lcom/apportable/ui/View;

.field private mLeftViewMode:I

.field private mRightView:Lcom/apportable/ui/View;

.field private mRightViewMode:I

.field private mSecureTextEntry:Z

.field private mTextColor:I

.field private mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

.field private mTypeface:Landroid/graphics/Typeface;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;I)V

    .line 38
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    .line 39
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/apportable/ui/TextField;->mTextColor:I

    .line 41
    iput-boolean v1, p0, Lcom/apportable/ui/TextField;->mExitedOnReturn:Z

    .line 42
    iput-boolean v1, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    .line 473
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    .line 474
    new-instance v0, Lcom/apportable/ui/TextField$1;

    invoke-direct {v0, p0}, Lcom/apportable/ui/TextField$1;-><init>(Lcom/apportable/ui/TextField;)V

    iput-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    .line 424
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->init()V

    .line 425
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 428
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 38
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    .line 39
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/apportable/ui/TextField;->mTextColor:I

    .line 41
    iput-boolean v1, p0, Lcom/apportable/ui/TextField;->mExitedOnReturn:Z

    .line 42
    iput-boolean v1, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    .line 473
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    .line 474
    new-instance v0, Lcom/apportable/ui/TextField$1;

    invoke-direct {v0, p0}, Lcom/apportable/ui/TextField$1;-><init>(Lcom/apportable/ui/TextField;)V

    iput-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    .line 429
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->init()V

    .line 430
    return-void
.end method

.method static synthetic access$1000(Lcom/apportable/ui/TextField;I)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->shouldBeginEditing(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/apportable/ui/TextField;)Lcom/apportable/ui/TextField$TextFieldLayer;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/apportable/ui/TextField;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->didBeginEditing(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/apportable/ui/TextField;IZ)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/TextField;->didEndEditing(IZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/apportable/ui/TextField;IIILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apportable/ui/TextField;->shouldChangeCharactersInRange(IIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/apportable/ui/TextField;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->textWillChange(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/apportable/ui/TextField;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->actionBarWillShow(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/apportable/ui/TextField;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->actionBarWillHide(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/apportable/ui/TextField;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->textDidChange(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/apportable/ui/TextField;I)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->shouldReturn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/apportable/ui/TextField;I)Z
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/apportable/ui/TextField;->shouldEndEditing(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/apportable/ui/TextField;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/apportable/ui/TextField;->mExitedOnReturn:Z

    return v0
.end method

.method static synthetic access$902(Lcom/apportable/ui/TextField;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/apportable/ui/TextField;->mExitedOnReturn:Z

    return p1
.end method

.method private native actionBarWillHide(I)V
.end method

.method private native actionBarWillShow(I)V
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/TextField;
    .locals 1

    .prologue
    .line 433
    new-instance v0, Lcom/apportable/ui/TextField;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/TextField;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/TextField;
    .locals 1

    .prologue
    .line 437
    new-instance v0, Lcom/apportable/ui/TextField;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/TextField;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private native didBeginEditing(I)V
.end method

.method private native didEndEditing(IZ)V
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 387
    new-instance v0, Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {p0}, Lcom/apportable/ui/TextField;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/apportable/ui/TextField$TextFieldLayer;-><init>(Lcom/apportable/ui/TextField;Landroid/content/Context;Lcom/apportable/ui/TextField;)V

    iput-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    .line 388
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    .line 389
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    iget-object v1, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 394
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 395
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 396
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    .line 397
    invoke-virtual {p0}, Lcom/apportable/ui/TextField;->requestFocus()Z

    .line 398
    return-void
.end method

.method private resetView()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    .line 401
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/apportable/ui/TextField;->mLeftView:Lcom/apportable/ui/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 402
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 403
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/apportable/ui/TextField;->mRightView:Lcom/apportable/ui/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 405
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mLeftView:Lcom/apportable/ui/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apportable/ui/TextField;->mLeftViewMode:I

    if-ne v0, v3, :cond_0

    .line 406
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/apportable/ui/TextField;->mLeftView:Lcom/apportable/ui/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 409
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 411
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 412
    iget-object v1, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mRightView:Lcom/apportable/ui/View;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/apportable/ui/TextField;->mRightViewMode:I

    if-ne v0, v3, :cond_1

    .line 416
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/apportable/ui/TextField;->mRightView:Lcom/apportable/ui/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/apportable/ui/TextField;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/TextField;->setContentView(Landroid/view/View;)V

    .line 420
    return-void
.end method

.method private native shouldBeginEditing(I)Z
.end method

.method private native shouldChangeCharactersInRange(IIILjava/lang/String;)Z
.end method

.method private native shouldClear(I)Z
.end method

.method private native shouldEndEditing(I)Z
.end method

.method private native shouldReturn(I)Z
.end method

.method private native textDidChange(I)V
.end method

.method private native textWillChange(I)V
.end method


# virtual methods
.method public _setBackgroundColor(I)V
    .locals 2

    .prologue
    .line 523
    invoke-super {p0, p1}, Lcom/apportable/ui/Control;->_setBackgroundColor(I)V

    .line 524
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    return-void
.end method

.method public becomeFirstResponder()V
    .locals 4

    .prologue
    .line 495
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->isFirstResponder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 501
    iget-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public getFont()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getLayer()Lcom/apportable/ui/TextField$TextFieldLayer;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/apportable/ui/TextField;->mTextColor:I

    return v0
.end method

.method public resignFirstResponder()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/apportable/ui/TextField;->becomeFirstResponderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 506
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->resignFirstResponder()V

    .line 507
    return-void
.end method

.method public setAutocorrectionType(I)V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;F)V
    .locals 2

    .prologue
    .line 452
    iput-object p1, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    .line 453
    iput p2, p0, Lcom/apportable/ui/TextField;->mFontSize:F

    .line 454
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/apportable/ui/TextField$TextFieldLayer;->setTextSize(IF)V

    .line 455
    iget-boolean v0, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    iget-object v1, p0, Lcom/apportable/ui/TextField;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setTypeface(Landroid/graphics/Typeface;)V

    .line 458
    :cond_0
    return-void
.end method

.method public setKeyboardType(I)V
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setInputType(I)V

    .line 539
    return-void
.end method

.method public setLeftView(Lcom/apportable/ui/View;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/apportable/ui/TextField;->mLeftView:Lcom/apportable/ui/View;

    .line 543
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    .line 544
    return-void
.end method

.method public setLeftViewMode(I)V
    .locals 2

    .prologue
    .line 552
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 553
    :cond_0
    const-string v0, "TextField"

    const-string v1, "Not supported style for left view mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-void

    .line 556
    :cond_1
    iput p1, p0, Lcom/apportable/ui/TextField;->mLeftViewMode:I

    .line 557
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    goto :goto_0
.end method

.method public setPlaceholder(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setHint(Ljava/lang/CharSequence;)V

    .line 515
    return-void
.end method

.method public setRightView(Lcom/apportable/ui/View;)V
    .locals 0

    .prologue
    .line 547
    iput-object p1, p0, Lcom/apportable/ui/TextField;->mRightView:Lcom/apportable/ui/View;

    .line 548
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    .line 549
    return-void
.end method

.method public setRightViewMode(I)V
    .locals 2

    .prologue
    .line 562
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 563
    :cond_0
    const-string v0, "TextField"

    const-string v1, "Not supported style for right view mode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-void

    .line 566
    :cond_1
    iput p1, p0, Lcom/apportable/ui/TextField;->mRightViewMode:I

    .line 567
    invoke-direct {p0}, Lcom/apportable/ui/TextField;->resetView()V

    goto :goto_0
.end method

.method public setSecureTextEntry(Z)V
    .locals 2

    .prologue
    .line 528
    iput-boolean p1, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    .line 529
    iget-boolean v0, p0, Lcom/apportable/ui/TextField;->mSecureTextEntry:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setTypeface(Landroid/graphics/Typeface;)V

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    if-eqz p1, :cond_1

    const/16 v0, 0x81

    :goto_0
    invoke-virtual {v1, v0}, Lcom/apportable/ui/TextField$TextFieldLayer;->setInputType(I)V

    .line 535
    return-void

    .line 532
    :cond_1
    const v0, 0x80091

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 441
    if-nez p1, :cond_0

    .line 442
    const-string p1, ""

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setText(Ljava/lang/String;Z)V

    .line 445
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 572
    if-nez p1, :cond_1

    .line 573
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setGravity(I)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    if-ne p1, v1, :cond_2

    .line 576
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setGravity(I)V

    goto :goto_0

    .line 578
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setGravity(I)V

    goto :goto_0
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 465
    iput p1, p0, Lcom/apportable/ui/TextField;->mTextColor:I

    .line 466
    iget-object v0, p0, Lcom/apportable/ui/TextField;->mTextField:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/TextField$TextFieldLayer;->setTextColor(I)V

    .line 467
    return-void
.end method
