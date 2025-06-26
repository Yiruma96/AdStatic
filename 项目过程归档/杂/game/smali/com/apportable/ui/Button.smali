.class Lcom/apportable/ui/Button;
.super Lcom/apportable/ui/Control;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/Button$DrawableState;,
        Lcom/apportable/ui/Button$UIButtonType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

.field private mBackgroundHeight:I

.field private mBackgroundWidth:I

.field private mButton:Landroid/widget/Button;

.field private mButtonType:I

.field private mContentEdgeInsetBottom:I

.field private mContentEdgeInsetLeft:I

.field private mContentEdgeInsetRight:I

.field private mContentEdgeInsetTop:I

.field private mContentMode:I

.field private mEnabled:Z

.field private mFontSize:F

.field private mHandler:Landroid/os/Handler;

.field private mHighlighted:Z

.field private mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

.field private mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

.field private mImageEdgeInsetBottom:I

.field private mImageEdgeInsetLeft:I

.field private mImageEdgeInsetRight:I

.field private mImageEdgeInsetTop:I

.field private mSelected:Z

.field private mShadowColor:I

.field private mShadowOffsetX:F

.field private mShadowOffsetY:F

.field private mText:Ljava/lang/String;

.field private mTextAlignment:I

.field private mTextColor:I

.field private mTintColor:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUseSystemTheme:Z

.field private touchUpInsideEvent:Ljava/lang/Runnable;

.field private touchUpOutsideEvent:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "com.apportable.ui.Button"

    sput-object v0, Lcom/apportable/ui/Button;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;I)V

    .line 24
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/apportable/ui/Button;->mTypeface:Landroid/graphics/Typeface;

    .line 25
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/apportable/ui/Button;->mFontSize:F

    .line 26
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mSelected:Z

    .line 27
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mHighlighted:Z

    .line 28
    iput-boolean v3, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    .line 29
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mUseSystemTheme:Z

    .line 30
    iput v1, p0, Lcom/apportable/ui/Button;->mContentMode:I

    .line 31
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/apportable/ui/Button;->mTextColor:I

    .line 32
    iput v3, p0, Lcom/apportable/ui/Button;->mTextAlignment:I

    .line 33
    iput v1, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 48
    iput v1, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    .line 49
    iput v1, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    .line 51
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    .line 52
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    .line 53
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    .line 54
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    .line 56
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    .line 57
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    .line 58
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    .line 59
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    .line 83
    new-instance v0, Lcom/apportable/ui/Button$1;

    invoke-direct {v0, p0}, Lcom/apportable/ui/Button$1;-><init>(Lcom/apportable/ui/Button;)V

    iput-object v0, p0, Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/apportable/ui/Button$2;

    invoke-direct {v0, p0}, Lcom/apportable/ui/Button$2;-><init>(Lcom/apportable/ui/Button;)V

    iput-object v0, p0, Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;

    .line 149
    invoke-direct {p0}, Lcom/apportable/ui/Button;->init()V

    .line 150
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 24
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/apportable/ui/Button;->mTypeface:Landroid/graphics/Typeface;

    .line 25
    const/high16 v0, 0x41880000    # 17.0f

    iput v0, p0, Lcom/apportable/ui/Button;->mFontSize:F

    .line 26
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mSelected:Z

    .line 27
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mHighlighted:Z

    .line 28
    iput-boolean v3, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    .line 29
    iput-boolean v1, p0, Lcom/apportable/ui/Button;->mUseSystemTheme:Z

    .line 30
    iput v1, p0, Lcom/apportable/ui/Button;->mContentMode:I

    .line 31
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/apportable/ui/Button;->mTextColor:I

    .line 32
    iput v3, p0, Lcom/apportable/ui/Button;->mTextAlignment:I

    .line 33
    iput v1, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    .line 35
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 39
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 44
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 45
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 48
    iput v1, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    .line 49
    iput v1, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    .line 51
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    .line 52
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    .line 53
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    .line 54
    iput v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    .line 56
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    .line 57
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    .line 58
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    .line 59
    iput v1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    .line 83
    new-instance v0, Lcom/apportable/ui/Button$1;

    invoke-direct {v0, p0}, Lcom/apportable/ui/Button$1;-><init>(Lcom/apportable/ui/Button;)V

    iput-object v0, p0, Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;

    .line 89
    new-instance v0, Lcom/apportable/ui/Button$2;

    invoke-direct {v0, p0}, Lcom/apportable/ui/Button$2;-><init>(Lcom/apportable/ui/Button;)V

    iput-object v0, p0, Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;

    .line 154
    invoke-direct {p0}, Lcom/apportable/ui/Button;->init()V

    .line 155
    return-void
.end method

.method private _contentModeIsAdjacent()Z
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/apportable/ui/Button;->mContentMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/apportable/ui/Button;->mContentMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/apportable/ui/Button;->mContentMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/apportable/ui/Button;->mContentMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 259
    :cond_0
    const/4 v0, 0x1

    .line 261
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 274
    if-nez p1, :cond_9

    .line 275
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 277
    :goto_0
    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/apportable/ui/Button;->_contentModeIsAdjacent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    :cond_0
    :goto_1
    return-object p2

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    .line 285
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    .line 294
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 295
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 297
    if-lez v0, :cond_6

    .line 298
    invoke-virtual {p0}, Lcom/apportable/ui/Button;->getWidth()I

    move-result v3

    .line 299
    invoke-virtual {p0}, Lcom/apportable/ui/Button;->getHeight()I

    move-result v5

    .line 303
    iget v4, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    if-ge v0, v4, :cond_8

    iget v4, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    if-eqz v4, :cond_8

    .line 305
    iget v4, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    sub-int v0, v4, v0

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v0, v3

    move v4, v0

    .line 307
    :goto_3
    iget v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    if-ge v2, v0, :cond_7

    iget v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    if-eqz v0, :cond_7

    .line 309
    iget v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    sub-int/2addr v0, v2

    mul-int/2addr v0, v5

    iget v2, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v0, v2

    move v5, v0

    .line 312
    :goto_4
    if-nez v5, :cond_3

    if-nez v4, :cond_3

    iget v0, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    if-eqz v0, :cond_6

    .line 322
    :cond_3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    add-int/2addr v2, v4

    iget v3, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    add-int/2addr v3, v5

    iget v7, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    add-int/2addr v3, v7

    iget v7, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    add-int/2addr v4, v7

    iget v7, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    add-int/2addr v4, v7

    iget v7, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    add-int/2addr v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 329
    :goto_5
    if-nez p2, :cond_5

    move-object p2, v0

    .line 330
    goto/16 :goto_1

    .line 287
    :cond_4
    if-eqz p2, :cond_2

    .line 288
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    .line 289
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    goto/16 :goto_2

    .line 332
    :cond_5
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object p2, v1, v6

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 333
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_5

    :cond_7
    move v5, v6

    goto :goto_4

    :cond_8
    move v4, v6

    goto :goto_3

    :cond_9
    move-object v1, p1

    goto/16 :goto_0
.end method

.method private _setBackgroundDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 372
    if-nez p2, :cond_1

    .line 373
    iput-object p1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 374
    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundWidth:I

    .line 375
    iput v0, p0, Lcom/apportable/ui/Button;->mBackgroundHeight:I

    .line 383
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    .line 384
    return-void

    .line 376
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 377
    iput-object p1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 378
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 379
    iput-object p1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 380
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 381
    iput-object p1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private _setIconDrawable(Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 399
    if-nez p2, :cond_6

    .line 400
    iput-object p1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    .line 408
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_contentModeIsAdjacent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 411
    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 415
    :cond_1
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 416
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 417
    new-array v2, v4, [I

    const v3, 0x10100a1

    aput v3, v2, v5

    iget-object v3, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 418
    :cond_2
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 419
    new-array v2, v4, [I

    const v3, 0x10100a7

    aput v3, v2, v5

    iget-object v3, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 420
    :cond_3
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 421
    new-array v2, v4, [I

    const v3, -0x101009e

    aput v3, v2, v5

    iget-object v3, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 422
    :cond_4
    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 423
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    iget-object v3, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 425
    :cond_5
    :goto_1
    iget v2, p0, Lcom/apportable/ui/Button;->mContentMode:I

    packed-switch v2, :pswitch_data_0

    .line 439
    sget-object v0, Lcom/apportable/ui/Button;->TAG:Ljava/lang/String;

    const-string v1, "contentMode is not adjacent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_2
    return-void

    .line 401
    :cond_6
    if-ne p2, v4, :cond_7

    .line 402
    iput-object p1, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 403
    :cond_7
    const/4 v0, 0x4

    if-ne p2, v0, :cond_8

    .line 404
    iput-object p1, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 405
    :cond_8
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 406
    iput-object p1, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 427
    :pswitch_0
    iget-object v2, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v1, v1, v0, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 430
    :pswitch_1
    iget-object v2, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v1, v1, v1, v0}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 433
    :pswitch_2
    iget-object v2, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 436
    :pswitch_3
    iget-object v2, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 442
    :cond_9
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    goto :goto_2

    :cond_a
    move-object v0, v1

    goto :goto_1

    .line 425
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private _setText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lcom/apportable/ui/Button;->mText:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 160
    return-void
.end method

.method private _updateBackgroundDrawable()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 338
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 342
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableSelected:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Selected:Lcom/apportable/ui/Button$DrawableState;

    invoke-direct {p0, v2}, Lcom/apportable/ui/Button;->createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->_layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_0

    .line 344
    new-array v2, v5, [I

    const v3, 0x10100a1

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Highlighted:Lcom/apportable/ui/Button$DrawableState;

    invoke-direct {p0, v2}, Lcom/apportable/ui/Button;->createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->_layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_1

    .line 350
    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Highlighted:Lcom/apportable/ui/Button$DrawableState;

    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->dimDrawableForState(Landroid/graphics/drawable/Drawable;Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 351
    new-array v2, v5, [I

    const v3, 0x10100a7

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    invoke-direct {p0, v2}, Lcom/apportable/ui/Button;->createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->_layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_2

    .line 357
    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->dimDrawableForState(Landroid/graphics/drawable/Drawable;Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 358
    new-array v2, v5, [I

    const v3, -0x101009e

    aput v3, v2, v4

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    invoke-direct {p0, v2}, Lcom/apportable/ui/Button;->createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/apportable/ui/Button;->_layerIconOnBackground(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 363
    if-eqz v1, :cond_3

    .line 364
    sget-object v2, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    iget v0, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    iget v1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    iget v2, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    iget v3, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/apportable/ui/Button;->setContentEdgeInsets(IIII)V

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apportable/ui/Button;->touchUpOutsideEvent:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/Button;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apportable/ui/Button;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/apportable/ui/Button;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apportable/ui/Button;->touchUpInsideEvent:Ljava/lang/Runnable;

    return-object v0
.end method

.method private native clicked(I)V
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Button;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/apportable/ui/Button;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Button;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Button;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/apportable/ui/Button;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Button;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private createBackgroundDrawable(Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 180
    const/4 v0, 0x0

    .line 182
    sget-object v1, Lcom/apportable/ui/Button$4;->$SwitchMap$com$apportable$ui$Button$DrawableState:[I

    invoke-virtual {p1}, Lcom/apportable/ui/Button$DrawableState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 189
    :goto_0
    if-eqz v0, :cond_0

    .line 216
    :goto_1
    return-object v0

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 184
    :pswitch_1
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableSelected:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 185
    :pswitch_2
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 186
    :pswitch_3
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 194
    :cond_0
    iget v0, p0, Lcom/apportable/ui/Button;->mButtonType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 195
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 196
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 197
    const/4 v1, 0x2

    const v2, -0x777778

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 198
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 199
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Selected:Lcom/apportable/ui/Button$DrawableState;

    if-ne p1, v1, :cond_2

    .line 200
    :cond_1
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 202
    :cond_2
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 203
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 205
    :cond_3
    iget-object v1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 206
    iget v1, p0, Lcom/apportable/ui/Button;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 211
    :cond_4
    sget-object v0, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    if-ne p1, v0, :cond_5

    .line 212
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_1

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/apportable/utils/ImageUtils;->copy(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private dimDrawableForState(Landroid/graphics/drawable/Drawable;Lcom/apportable/ui/Button$DrawableState;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 220
    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    if-ne p2, v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-object p1

    .line 226
    :cond_1
    sget-object v1, Lcom/apportable/ui/Button$4;->$SwitchMap$com$apportable$ui$Button$DrawableState:[I

    invoke-virtual {p2}, Lcom/apportable/ui/Button$DrawableState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    .line 237
    :goto_1
    iget v2, p0, Lcom/apportable/ui/Button;->mButtonType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 241
    :cond_2
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lcom/apportable/ui/Button$DrawableState;->Highlighted:Lcom/apportable/ui/Button$DrawableState;

    if-ne p2, v0, :cond_3

    .line 243
    new-instance v0, Lcom/apportable/utils/DimDrawable;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-direct {v0, p1, v1}, Lcom/apportable/utils/DimDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object p1, v0

    goto :goto_0

    .line 228
    :pswitch_0
    iget-object v1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableDisabled:Landroid/graphics/drawable/Drawable;

    .line 229
    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableDisabled:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 232
    :pswitch_1
    iget-object v1, p0, Lcom/apportable/ui/Button;->mBackgroundDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    .line 233
    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableHighlighted:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 244
    :cond_3
    sget-object v0, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    if-ne p2, v0, :cond_0

    .line 245
    new-instance v0, Lcom/apportable/utils/DimDrawable;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, p1, v1}, Lcom/apportable/utils/DimDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    move-object p1, v0

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 105
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/apportable/ui/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setMaxLines(I)V

    .line 107
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setHorizontallyScrolling(Z)V

    .line 108
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 109
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 110
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/apportable/ui/Button$3;

    invoke-direct {v1, p0}, Lcom/apportable/ui/Button$3;-><init>(Lcom/apportable/ui/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Button;->setContentView(Landroid/view/View;)V

    .line 144
    const/16 v0, 0xff

    const/4 v1, 0x5

    const/16 v2, 0x86

    const/16 v3, 0xf4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/apportable/ui/Button;->mTintColor:I

    .line 145
    return-void
.end method

.method private updateShadow(IFF)V
    .locals 2

    .prologue
    .line 528
    iput p1, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    .line 529
    iput p2, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    .line 530
    iput p3, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    .line 531
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 532
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    if-nez v0, :cond_0

    .line 584
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    return v0
.end method

.method public getHighlighted()Z
    .locals 1

    .prologue
    .line 475
    iget-boolean v0, p0, Lcom/apportable/ui/Button;->mHighlighted:Z

    return v0
.end method

.method public getSelected()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/apportable/ui/Button;->mSelected:Z

    return v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    return v0
.end method

.method public getShadowOffsetX()F
    .locals 1

    .prologue
    .line 547
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    return v0
.end method

.method public getShadowOffsetY()F
    .locals 1

    .prologue
    .line 551
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    return v0
.end method

.method public getTextAlignment()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/apportable/ui/Button;->mTextAlignment:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Lcom/apportable/ui/Button;->mTextColor:I

    return v0
.end method

.method public getTextForState(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/apportable/ui/Button;->mText:Ljava/lang/String;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 267
    invoke-super/range {p0 .. p5}, Lcom/apportable/ui/Control;->onLayout(ZIIII)V

    .line 268
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    .line 271
    :cond_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 387
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/apportable/ui/Button;->_setBackgroundDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 388
    return-void
.end method

.method public setBackgroundDrawable(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 392
    :try_start_0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/apportable/ui/Button;->_setBackgroundDrawable(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .line 394
    sget-object v0, Lcom/apportable/ui/Button;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load image from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setButtonType(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lcom/apportable/ui/Button;->mButtonType:I

    .line 97
    return-void
.end method

.method public setContentEdgeInsets(IIII)V
    .locals 1

    .prologue
    .line 562
    iput p1, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetLeft:I

    .line 563
    iput p2, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetTop:I

    .line 564
    iput p3, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetRight:I

    .line 565
    iput p4, p0, Lcom/apportable/ui/Button;->mContentEdgeInsetBottom:I

    .line 567
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/Button;->setPadding(IIII)V

    .line 568
    return-void
.end method

.method public setContentMode(I)V
    .locals 2

    .prologue
    .line 495
    iput p1, p0, Lcom/apportable/ui/Button;->mContentMode:I

    .line 496
    iget-object v0, p0, Lcom/apportable/ui/Button;->mIconDrawableNormal:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/apportable/ui/Button;->_setIconDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 497
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0, p1}, Lcom/apportable/ui/Control;->setEnabled(Z)V

    .line 481
    iput-boolean p1, p0, Lcom/apportable/ui/Button;->mEnabled:Z

    .line 482
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 483
    return-void
.end method

.method public setFont(Landroid/graphics/Typeface;F)V
    .locals 2

    .prologue
    .line 555
    iput-object p1, p0, Lcom/apportable/ui/Button;->mTypeface:Landroid/graphics/Typeface;

    .line 556
    iput p2, p0, Lcom/apportable/ui/Button;->mFontSize:F

    .line 557
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-static {p2}, Lcom/apportable/utils/ScreenUtils;->convertPixelsToDp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 558
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 559
    return-void
.end method

.method public setHighlighted(Z)V
    .locals 1

    .prologue
    .line 469
    iput-boolean p1, p0, Lcom/apportable/ui/Button;->mHighlighted:Z

    .line 470
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setPressed(Z)V

    .line 471
    return-void
.end method

.method public setIconDrawable(Landroid/graphics/Bitmap;I)V
    .locals 1

    .prologue
    .line 456
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/apportable/utils/ImageUtils;->createDrawableWithInferredStates(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/apportable/ui/Button;->_setIconDrawable(Landroid/graphics/drawable/Drawable;I)V

    .line 457
    return-void
.end method

.method public setIconDrawable(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 449
    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/apportable/ui/Button;->_setIconDrawable(Landroid/graphics/drawable/Drawable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_1
    return-void

    .line 449
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    sget-object v0, Lcom/apportable/ui/Button;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not load image from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setImageEdgeInsets(IIII)V
    .locals 0

    .prologue
    .line 572
    iput p1, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetLeft:I

    .line 573
    iput p2, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetTop:I

    .line 574
    iput p3, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetRight:I

    .line 575
    iput p4, p0, Lcom/apportable/ui/Button;->mImageEdgeInsetBottom:I

    .line 576
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    .line 577
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/apportable/ui/Button;->mSelected:Z

    .line 465
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setSelected(Z)V

    .line 466
    return-void
.end method

.method public setShadowColor(I)V
    .locals 2

    .prologue
    .line 535
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowOffsetX:F

    iget v1, p0, Lcom/apportable/ui/Button;->mShadowOffsetY:F

    invoke-direct {p0, p1, v0, v1}, Lcom/apportable/ui/Button;->updateShadow(IFF)V

    .line 536
    return-void
.end method

.method public setShadowOffset(FF)V
    .locals 1

    .prologue
    .line 543
    iget v0, p0, Lcom/apportable/ui/Button;->mShadowColor:I

    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/ui/Button;->updateShadow(IFF)V

    .line 544
    return-void
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/apportable/ui/Button;->_setText(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setTextAlignment(I)V
    .locals 2

    .prologue
    .line 509
    iput p1, p0, Lcom/apportable/ui/Button;->mTextAlignment:I

    .line 510
    packed-switch p1, :pswitch_data_0

    .line 521
    :goto_0
    return-void

    .line 512
    :pswitch_0
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_0

    .line 515
    :pswitch_1
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_0

    .line 518
    :pswitch_2
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_0

    .line 510
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTextColor(I)V
    .locals 1

    .prologue
    .line 500
    iput p1, p0, Lcom/apportable/ui/Button;->mTextColor:I

    .line 501
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 502
    return-void
.end method

.method public setTintColor(I)V
    .locals 0

    .prologue
    .line 100
    iput p1, p0, Lcom/apportable/ui/Button;->mTintColor:I

    .line 101
    invoke-direct {p0}, Lcom/apportable/ui/Button;->_updateBackgroundDrawable()V

    .line 102
    return-void
.end method

.method public useSystemUi(Z)V
    .locals 2

    .prologue
    .line 490
    iput-boolean p1, p0, Lcom/apportable/ui/Button;->mUseSystemTheme:Z

    .line 491
    iget-object v0, p0, Lcom/apportable/ui/Button;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    return-void
.end method
