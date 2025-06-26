.class Lcom/apportable/utils/PixelsDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ImageUtils.java"


# instance fields
.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPixels:[I

.field private mWidth:I


# direct methods
.method public constructor <init>([III)V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 258
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/apportable/utils/PixelsDrawable;->mPaint:Landroid/graphics/Paint;

    .line 209
    iput-object p1, p0, Lcom/apportable/utils/PixelsDrawable;->mPixels:[I

    .line 210
    iput p2, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicWidth:I

    iput p2, p0, Lcom/apportable/utils/PixelsDrawable;->mWidth:I

    .line 211
    iput p3, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicHeight:I

    iput p3, p0, Lcom/apportable/utils/PixelsDrawable;->mHeight:I

    .line 212
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/apportable/utils/PixelsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 217
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/apportable/utils/PixelsDrawable;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/apportable/utils/PixelsDrawable;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 219
    iget-object v1, p0, Lcom/apportable/utils/PixelsDrawable;->mPixels:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/apportable/utils/PixelsDrawable;->mWidth:I

    iget v6, p0, Lcom/apportable/utils/PixelsDrawable;->mWidth:I

    iget v7, p0, Lcom/apportable/utils/PixelsDrawable;->mHeight:I

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/apportable/utils/PixelsDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v5, v4

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 220
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 221
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/apportable/utils/PixelsDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/apportable/utils/PixelsDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 236
    return-void
.end method

.method public setIntrinsicSize(II)V
    .locals 0

    .prologue
    .line 239
    iput p1, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicWidth:I

    .line 240
    iput p2, p0, Lcom/apportable/utils/PixelsDrawable;->mIntrinsicHeight:I

    .line 241
    return-void
.end method
