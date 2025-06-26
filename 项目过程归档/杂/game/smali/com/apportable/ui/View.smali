.class public Lcom/apportable/ui/View;
.super Landroid/widget/AbsoluteLayout;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/View$TransformAnimation;
    }
.end annotation


# static fields
.field public static final UIViewContentModeBottom:I = 0x6

.field public static final UIViewContentModeBottomLeft:I = 0xb

.field public static final UIViewContentModeBottomRight:I = 0xc

.field public static final UIViewContentModeCenter:I = 0x4

.field public static final UIViewContentModeLeft:I = 0x7

.field public static final UIViewContentModeRedraw:I = 0x3

.field public static final UIViewContentModeRight:I = 0x8

.field public static final UIViewContentModeScaleAspectFill:I = 0x2

.field public static final UIViewContentModeScaleAspectFit:I = 0x1

.field public static final UIViewContentModeScaleToFill:I = 0x0

.field public static final UIViewContentModeTop:I = 0x5

.field public static final UIViewContentModeTopLeft:I = 0x9

.field public static final UIViewContentModeTopRight:I = 0xa


# instance fields
.field private mAttachedToWindow:Z

.field private mClipsToBounds:Z

.field private mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

.field private mHasContentView:Z

.field private mHidden:Z

.field private mHiddenByAlpha:Z

.field private mNeedsDisplay:Z

.field private mNeedsLayout:Z

.field public mObject:I

.field private mTransform:Landroid/graphics/Matrix;

.field protected mUserInteractionEnabled:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 71
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 47
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mUserInteractionEnabled:Z

    .line 48
    iput-boolean v1, p0, Lcom/apportable/ui/View;->mClipsToBounds:Z

    .line 51
    iput-boolean v1, p0, Lcom/apportable/ui/View;->mHidden:Z

    .line 52
    iput-boolean v1, p0, Lcom/apportable/ui/View;->mHiddenByAlpha:Z

    .line 53
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    .line 54
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    .line 56
    iput-boolean v1, p0, Lcom/apportable/ui/View;->mAttachedToWindow:Z

    .line 75
    new-instance v2, Lcom/apportable/utils/DrawBitmap;

    invoke-direct {v2, p1}, Lcom/apportable/utils/DrawBitmap;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    .line 76
    iput p2, p0, Lcom/apportable/ui/View;->mObject:I

    .line 77
    invoke-virtual {p0, p3}, Lcom/apportable/ui/View;->setFrame(Landroid/graphics/RectF;)V

    .line 78
    invoke-direct {p0, p2}, Lcom/apportable/ui/View;->isDrawRectImplemented(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setWillNotDraw(Z)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/apportable/ui/View;->setClipChildren(Z)V

    .line 81
    invoke-virtual {p0, v1}, Lcom/apportable/ui/View;->setAnimationCacheEnabled(Z)V

    .line 82
    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method private native callDrawRect(I)V
.end method

.method private native callLayoutSubviews(I)V
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/View;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/apportable/ui/View;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/View;
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/apportable/ui/View;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private native getDescription(I)Ljava/lang/String;
.end method

.method public static getLayoutHeight(Lcom/apportable/ui/View;)I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLayoutWidth(Lcom/apportable/ui/View;)I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isDrawRectImplemented(I)Z
.end method

.method private native nativeSetFrame(IIII)V
.end method

.method private translateSubviewIndex(I)I
    .locals 1

    .prologue
    .line 124
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHasContentView:Z

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private updateInternalHidden()V
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHiddenByAlpha:Z

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/apportable/ui/View;->clearAnimation()V

    .line 320
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setVisibility(I)V

    .line 327
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setTransform(Landroid/graphics/Matrix;)V

    .line 325
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public _setAlpha(F)V
    .locals 4

    .prologue
    .line 309
    float-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/View;->mHiddenByAlpha:Z

    .line 314
    :goto_0
    invoke-direct {p0}, Lcom/apportable/ui/View;->updateInternalHidden()V

    .line 315
    return-void

    .line 312
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/View;->mHiddenByAlpha:Z

    goto :goto_0
.end method

.method public _setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/apportable/ui/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Lcom/apportable/utils/ClipColorDrawable;

    invoke-direct {v0, p1}, Lcom/apportable/utils/ClipColorDrawable;-><init>(I)V

    .line 292
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    :cond_0
    return-void
.end method

.method public addSubview(Lcom/apportable/ui/View;)V
    .locals 1

    .prologue
    .line 220
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/apportable/ui/View;->insertSubview(Lcom/apportable/ui/View;I)V

    .line 221
    return-void
.end method

.method public captureBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 116
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 118
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v4, v4, v2, v3}, Lcom/apportable/ui/View;->layout(IIII)V

    .line 119
    invoke-virtual {p0, v1}, Lcom/apportable/ui/View;->draw(Landroid/graphics/Canvas;)V

    .line 120
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mUserInteractionEnabled:Z

    if-eqz v0, :cond_0

    .line 415
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 337
    iget-boolean v2, p0, Lcom/apportable/ui/View;->mClipsToBounds:Z

    .line 339
    if-eqz v2, :cond_1

    .line 340
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    .line 341
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/apportable/ui/View;->getHeight()I

    move-result v4

    invoke-virtual {p1, v1, v1, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 343
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    .line 344
    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 347
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public getDrawBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    invoke-virtual {v0, p1, p2}, Lcom/apportable/utils/DrawBitmap;->get(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 372
    :goto_0
    return-object v0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 372
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSubviewsGroup()Landroid/view/ViewGroup;
    .locals 0

    .prologue
    .line 216
    return-object p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/apportable/ui/View;->mObject:I

    invoke-direct {p0, v0}, Lcom/apportable/ui/View;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertSubview(Lcom/apportable/ui/View;I)V
    .locals 3

    .prologue
    .line 228
    invoke-direct {p0, p2}, Lcom/apportable/ui/View;->translateSubviewIndex(I)I

    move-result v0

    .line 229
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 230
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 231
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public invalidateObject()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/apportable/ui/View;->mObject:I

    .line 94
    return-void
.end method

.method public layoutIfNeeded()V
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/apportable/ui/View;->forceLayout()V

    .line 265
    :cond_0
    return-void
.end method

.method public moveSubview(II)V
    .locals 4

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/apportable/ui/View;->translateSubviewIndex(I)I

    move-result v1

    .line 239
    invoke-direct {p0, p2}, Lcom/apportable/ui/View;->translateSubviewIndex(I)I

    move-result v0

    .line 240
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 242
    add-int/lit8 v0, v0, -0x1

    .line 244
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 245
    if-ne v2, p0, :cond_1

    .line 246
    invoke-virtual {p0, v1}, Lcom/apportable/ui/View;->detachViewFromParent(I)V

    .line 247
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1}, Lcom/apportable/ui/View;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 254
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 252
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected notifyTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public object()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/apportable/ui/View;->mObject:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    .line 353
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 354
    iput-boolean v0, p0, Lcom/apportable/ui/View;->mAttachedToWindow:Z

    .line 355
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setTransform(Landroid/graphics/Matrix;)V

    .line 356
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    invoke-virtual {v0}, Lcom/apportable/utils/DrawBitmap;->recycle()V

    .line 361
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/View;->mAttachedToWindow:Z

    .line 363
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/apportable/ui/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/apportable/ui/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 389
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 390
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/apportable/ui/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 391
    iget-boolean v1, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    invoke-static {}, Lcom/apportable/utils/DrawBitmap;->usingSharedDrawBitmap()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    :cond_2
    iget v1, p0, Lcom/apportable/ui/View;->mObject:I

    invoke-direct {p0, v1}, Lcom/apportable/ui/View;->callDrawRect(I)V

    .line 393
    iput-boolean v3, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    .line 395
    :cond_3
    iget-object v1, p0, Lcom/apportable/ui/View;->mDrawBitmap:Lcom/apportable/utils/DrawBitmap;

    invoke-virtual {v1, p1}, Lcom/apportable/utils/DrawBitmap;->draw(Landroid/graphics/Canvas;)V

    .line 396
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 269
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsoluteLayout;->onLayout(ZIIII)V

    .line 270
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    if-eqz v0, :cond_0

    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    .line 272
    iget v0, p0, Lcom/apportable/ui/View;->mObject:I

    invoke-direct {p0, v0}, Lcom/apportable/ui/View;->callLayoutSubviews(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removeSubview(Lcom/apportable/ui/View;)V
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 225
    return-void
.end method

.method public setBounds(Landroid/graphics/RectF;)V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public setClipsToBounds(Z)V
    .locals 0

    .prologue
    .line 330
    iput-boolean p1, p0, Lcom/apportable/ui/View;->mClipsToBounds:Z

    .line 331
    invoke-virtual {p0, p1}, Lcom/apportable/ui/View;->setClipChildren(Z)V

    .line 332
    invoke-virtual {p0}, Lcom/apportable/ui/View;->invalidate()V

    .line 333
    return-void
.end method

.method protected setContentView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 106
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHasContentView:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, v3}, Lcom/apportable/ui/View;->removeViewAt(I)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getSubviewsGroup()Landroid/view/ViewGroup;

    move-result-object v0

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/View;->mHasContentView:Z

    .line 113
    return-void
.end method

.method public setDebugTag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/apportable/ui/View;->setTag(Ljava/lang/Object;)V

    .line 401
    return-void
.end method

.method public setFrame(Landroid/graphics/RectF;)V
    .locals 5

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 142
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 145
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 146
    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 147
    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 148
    iget v1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    add-int/2addr v0, v4

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/apportable/ui/View;->nativeSetFrame(IIII)V

    .line 149
    invoke-virtual {p0}, Lcom/apportable/ui/View;->requestLayout()V

    .line 160
    :goto_0
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->setTransform(Landroid/graphics/Matrix;)V

    .line 161
    return-void

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    .line 154
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    .line 155
    iget v2, p1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    .line 156
    iget v3, p1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    .line 157
    new-instance v4, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 158
    invoke-virtual {p0, v4}, Lcom/apportable/ui/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setHidden(Z)V
    .locals 0

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/apportable/ui/View;->mHidden:Z

    .line 298
    invoke-direct {p0}, Lcom/apportable/ui/View;->updateInternalHidden()V

    .line 299
    return-void
.end method

.method public setNeedsDisplay()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    .line 279
    invoke-virtual {p0}, Lcom/apportable/ui/View;->postInvalidate()V

    .line 280
    return-void
.end method

.method public setNeedsDisplayInRect(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsDisplay:Z

    .line 284
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 285
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 286
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/apportable/ui/View;->postInvalidate(IIII)V

    .line 287
    return-void
.end method

.method public setNeedsLayout()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/View;->mNeedsLayout:Z

    .line 258
    invoke-virtual {p0}, Lcom/apportable/ui/View;->requestLayout()V

    .line 259
    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 191
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mHidden:Z

    if-nez v0, :cond_0

    .line 192
    iget-boolean v0, p0, Lcom/apportable/ui/View;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    .line 193
    if-nez p1, :cond_1

    .line 194
    iget-object v0, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/apportable/ui/View;->clearAnimation()V

    .line 211
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/apportable/ui/View;->mTransform:Landroid/graphics/Matrix;

    .line 212
    return-void

    .line 198
    :cond_1
    invoke-virtual {p0}, Lcom/apportable/ui/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 201
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 202
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 203
    iget v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget v0, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 204
    new-instance v0, Lcom/apportable/ui/View$TransformAnimation;

    invoke-direct {v0, p0, v1}, Lcom/apportable/ui/View$TransformAnimation;-><init>(Lcom/apportable/ui/View;Landroid/graphics/Matrix;)V

    .line 205
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 206
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 207
    invoke-virtual {p0, v0}, Lcom/apportable/ui/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setUserInteractionEnabled(Z)V
    .locals 0

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/apportable/ui/View;->mUserInteractionEnabled:Z

    .line 410
    return-void
.end method
