.class Lcom/apportable/ui/Label;
.super Lcom/apportable/ui/View;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/Label$TextLabel;,
        Lcom/apportable/ui/Label$Shadow;
    }
.end annotation


# static fields
.field private static final NSLineBreakByCharWrapping:I = 0x1

.field private static final NSLineBreakByClipping:I = 0x2

.field private static final NSLineBreakByTruncatingHead:I = 0x3

.field private static final NSLineBreakByTruncatingMiddle:I = 0x5

.field private static final NSLineBreakByTruncatingTail:I = 0x4

.field private static final NSLineBreakByWordWrapping:I = 0x0

.field public static final TAG:Ljava/lang/String; = "Label"

.field private static final UITextAlignmentCenter:I = 0x1

.field private static final UITextAlignmentLeft:I = 0x0

.field private static final UITextAlignmentRight:I = 0x2

.field private static final UITextAlignmentTopLeft:I = 0x63


# instance fields
.field private mShadowColor:I

.field private mShadowOffsetX:F

.field private mShadowOffsetY:F

.field private mStrokeColor:I

.field private mStrokeWidth:F

.field private mTextView:Lcom/apportable/ui/Label$TextLabel;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 402
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/ui/Label;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 403
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 405
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 395
    iput v2, p0, Lcom/apportable/ui/Label;->mShadowColor:I

    .line 396
    iput v1, p0, Lcom/apportable/ui/Label;->mShadowOffsetX:F

    .line 397
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/apportable/ui/Label;->mShadowOffsetY:F

    .line 398
    iput v2, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    .line 399
    iput v1, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    .line 406
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Label;->setWillNotDraw(Z)V

    .line 407
    new-instance v0, Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {p0}, Lcom/apportable/ui/Label;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apportable/ui/Label$TextLabel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    .line 408
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setText(Ljava/lang/CharSequence;)V

    .line 409
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Label;->setContentView(Landroid/view/View;)V

    .line 410
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Label;
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/apportable/ui/Label;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Label;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Label;
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/apportable/ui/Label;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Label;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private getTruncateAtFromLineBreakMode(I)Landroid/text/TextUtils$TruncateAt;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 485
    packed-switch p1, :pswitch_data_0

    .line 499
    :pswitch_0
    const-string v1, "Label"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: NSLineBreakMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    :pswitch_1
    return-object v0

    .line 487
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 490
    :pswitch_3
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 493
    :pswitch_4
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updateShadow(IFF)V
    .locals 2

    .prologue
    .line 514
    iput p1, p0, Lcom/apportable/ui/Label;->mShadowColor:I

    .line 515
    iput p2, p0, Lcom/apportable/ui/Label;->mShadowOffsetX:F

    .line 516
    iput p3, p0, Lcom/apportable/ui/Label;->mShadowOffsetY:F

    .line 517
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/apportable/ui/Label$TextLabel;->setShadowLayer(FFFI)V

    .line 518
    return-void
.end method


# virtual methods
.method public getSizeThatFits()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 530
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    .line 531
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 532
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 530
    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->measure(II)V

    .line 533
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    .line 534
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 535
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 533
    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->measure(II)V

    .line 536
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v1}, Lcom/apportable/ui/Label$TextLabel;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v2}, Lcom/apportable/ui/Label$TextLabel;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public setAdjustsFontSizeToFitWidth(Z)V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setAdjustsFontSizeToFitWidth(Z)V

    .line 511
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;F)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/apportable/ui/Label$TextLabel;->setTextSize(IF)V

    .line 425
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setTypeface(Landroid/graphics/Typeface;)V

    .line 426
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v0}, Lcom/apportable/ui/Label$TextLabel;->refitTextIfNeeded()V

    .line 427
    return-void
.end method

.method public setLineBreakMode(I)V
    .locals 2

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/apportable/ui/Label;->getTruncateAtFromLineBreakMode(I)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    .line 506
    iget-object v1, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v1, v0}, Lcom/apportable/ui/Label$TextLabel;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 507
    return-void
.end method

.method public setLineSpacing(FF)V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v0, p1, p2}, Lcom/apportable/ui/Label$TextLabel;->setLineSpacing(FF)V

    .line 541
    return-void
.end method

.method public setMinimumFontSize(F)V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setMinimumFontSize(F)V

    .line 431
    return-void
.end method

.method public setNumberOfLines(I)V
    .locals 1

    .prologue
    .line 469
    if-nez p1, :cond_0

    .line 471
    const p1, 0x7fffffff

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setNumberOfLines(I)V

    .line 474
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setMaxLines(I)V

    .line 475
    return-void
.end method

.method public setShadowColor(I)V
    .locals 2

    .prologue
    .line 521
    iget v0, p0, Lcom/apportable/ui/Label;->mShadowOffsetX:F

    iget v1, p0, Lcom/apportable/ui/Label;->mShadowOffsetY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/apportable/ui/Label;->updateShadow(IFF)V

    .line 522
    return-void
.end method

.method public setShadowOffset(FF)V
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/apportable/ui/Label;->mShadowColor:I

    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/ui/Label;->updateShadow(IFF)V

    .line 526
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 3

    .prologue
    .line 438
    iget v0, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    if-eq v0, p1, :cond_0

    .line 439
    iput p1, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    .line 440
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    iget v1, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    iget v2, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->setStroke(FI)V

    .line 442
    :cond_0
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 3

    .prologue
    .line 445
    iget v0, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 446
    iput p1, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    .line 447
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    iget v1, p0, Lcom/apportable/ui/Label;->mStrokeWidth:F

    iget v2, p0, Lcom/apportable/ui/Label;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->setStroke(FI)V

    .line 449
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setText(Ljava/lang/CharSequence;)V

    .line 421
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    .prologue
    .line 452
    sparse-switch p1, :sswitch_data_0

    .line 466
    :goto_0
    return-void

    .line 454
    :sswitch_0
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setGravity(I)V

    goto :goto_0

    .line 457
    :sswitch_1
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setGravity(I)V

    goto :goto_0

    .line 460
    :sswitch_2
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setGravity(I)V

    goto :goto_0

    .line 463
    :sswitch_3
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setGravity(I)V

    goto :goto_0

    .line 452
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x63 -> :sswitch_3
    .end sparse-switch
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/apportable/ui/Label;->mTextView:Lcom/apportable/ui/Label$TextLabel;

    invoke-virtual {v0, p1}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    .line 435
    return-void
.end method
