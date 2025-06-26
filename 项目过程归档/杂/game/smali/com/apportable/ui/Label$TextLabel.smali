.class Lcom/apportable/ui/Label$TextLabel;
.super Landroid/widget/TextView;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Label;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextLabel"
.end annotation


# instance fields
.field private adjustFontSize:Z

.field private adjustTextSizeToStroke:Z

.field private canvasStore:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private foregroundDrawable:Landroid/graphics/drawable/Drawable;

.field private frozen:Z

.field private initialized:Z

.field private innerShadows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apportable/ui/Label$Shadow;",
            ">;"
        }
    .end annotation
.end field

.field private lockedCompoundPadding:[I

.field private mNumberOfLines:I

.field private mTestPaint:Landroid/graphics/Paint;

.field private minimumFontSize:F

.field private outerShadows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/apportable/ui/Label$Shadow;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColor:I

.field private strokeJoin:Landroid/graphics/Paint$Join;

.field private strokeMiter:F

.field private strokeWidth:F

.field private tempBitmap:Landroid/graphics/Bitmap;

.field private tempCanvas:Landroid/graphics/Canvas;

.field private textSizeBeforeStrokeAdjustment:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->outerShadows:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->canvasStore:Ljava/util/WeakHashMap;

    .line 73
    iput-boolean v1, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    .line 74
    iput-boolean v1, p0, Lcom/apportable/ui/Label$TextLabel;->initialized:Z

    .line 75
    iput-boolean v1, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    .line 77
    iput-boolean v1, p0, Lcom/apportable/ui/Label$TextLabel;->adjustTextSizeToStroke:Z

    .line 80
    const/4 v0, 0x1

    iput v0, p0, Lcom/apportable/ui/Label$TextLabel;->mNumberOfLines:I

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 86
    return-void
.end method

.method private adjustDaTextSizeToDaStroke()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 96
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustTextSizeToStroke:Z

    if-eqz v0, :cond_0

    .line 97
    iget v0, p0, Lcom/apportable/ui/Label$TextLabel;->textSizeBeforeStrokeAdjustment:F

    invoke-virtual {p0, v3, v0}, Lcom/apportable/ui/Label$TextLabel;->setTextSize(IF)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getTextSize()F

    move-result v0

    iput v0, p0, Lcom/apportable/ui/Label$TextLabel;->textSizeBeforeStrokeAdjustment:F

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustTextSizeToStroke:Z

    .line 101
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/apportable/ui/Label$TextLabel;->strokeWidth:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/apportable/ui/Label$TextLabel;->setTextSize(IF)V

    .line 102
    return-void
.end method

.method private generateTempCanvas()V
    .locals 5

    .prologue
    .line 277
    const-string v0, "%dx%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 278
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->canvasStore:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 279
    if-eqz v0, :cond_0

    .line 280
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    .line 281
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    .line 288
    :goto_0
    return-void

    .line 283
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    .line 284
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    .line 285
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 286
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->canvasStore:Ljava/util/WeakHashMap;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private refitText(Ljava/lang/String;II)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 110
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaddingLeft()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaddingRight()I

    move-result v1

    sub-int v4, v0, v1

    .line 116
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaddingTop()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 117
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getTextSize()F

    move-result v3

    .line 118
    iget v1, p0, Lcom/apportable/ui/Label$TextLabel;->minimumFontSize:F

    .line 121
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 123
    :goto_1
    sub-float v0, v3, v1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 124
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 126
    add-float v0, v3, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    .line 127
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->mTestPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, p1, v8, v7, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 130
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-nez v0, :cond_3

    .line 152
    :cond_2
    invoke-virtual {p0, v8, v1}, Lcom/apportable/ui/Label$TextLabel;->setTextSize(IF)V

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int v0, v5, v0

    .line 137
    if-nez v0, :cond_4

    .line 138
    const/4 v0, 0x1

    .line 141
    :cond_4
    iget v7, p0, Lcom/apportable/ui/Label$TextLabel;->mNumberOfLines:I

    if-le v0, v7, :cond_5

    .line 142
    iget v0, p0, Lcom/apportable/ui/Label$TextLabel;->mNumberOfLines:I

    .line 144
    :cond_5
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int v0, v6, v0

    if-lt v0, v4, :cond_6

    move v0, v1

    :goto_2
    move v1, v0

    move v3, v2

    .line 150
    goto :goto_1

    :cond_6
    move v0, v2

    move v2, v3

    .line 148
    goto :goto_2
.end method


# virtual methods
.method public addInnerShadow(FFFI)V
    .locals 2

    .prologue
    .line 177
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 178
    const p1, 0x38d1b717    # 1.0E-4f

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    new-instance v1, Lcom/apportable/ui/Label$Shadow;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/apportable/ui/Label$Shadow;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-void
.end method

.method public addOuterShadow(FFFI)V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 171
    const p1, 0x38d1b717    # 1.0E-4f

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->outerShadows:Ljava/util/ArrayList;

    new-instance v1, Lcom/apportable/ui/Label$Shadow;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/apportable/ui/Label$Shadow;-><init>(FFFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method public clearInnerShadows()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 185
    return-void
.end method

.method public clearOuterShadows()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->outerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 189
    return-void
.end method

.method public freeze()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 291
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundPaddingLeft()I

    move-result v2

    aput v2, v0, v1

    .line 293
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundPaddingRight()I

    move-result v1

    aput v1, v0, v3

    const/4 v1, 0x2

    .line 294
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundPaddingTop()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 295
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundPaddingBottom()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    .line 297
    iput-boolean v3, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    .line 298
    return-void
.end method

.method public getCompoundPaddingBottom()I
    .locals 2

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingTop()I
    .locals 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->lockedCompoundPadding:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCurrentTextColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    .line 333
    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 343
    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidate(Landroid/graphics/Rect;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->freeze()V

    .line 204
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 205
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 206
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getCurrentTextColor()I

    move-result v3

    .line 208
    invoke-virtual {p0, v10, v10, v10, v10}, Lcom/apportable/ui/Label$TextLabel;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->outerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/ui/Label$Shadow;

    .line 211
    iget v5, v0, Lcom/apportable/ui/Label$Shadow;->r:F

    iget v6, v0, Lcom/apportable/ui/Label$Shadow;->dx:F

    iget v7, v0, Lcom/apportable/ui/Label$Shadow;->dy:F

    iget v0, v0, Lcom/apportable/ui/Label$Shadow;->color:I

    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/apportable/ui/Label$TextLabel;->setShadowLayer(FFFI)V

    .line 212
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0, v9, v9, v9, v11}, Lcom/apportable/ui/Label$TextLabel;->setShadowLayer(FFFI)V

    .line 215
    invoke-virtual {p0, v3}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    .line 217
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 218
    invoke-direct {p0}, Lcom/apportable/ui/Label$TextLabel;->generateTempCanvas()V

    .line 219
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 220
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 221
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 222
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 223
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 224
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 225
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v11, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 228
    :cond_1
    iget v0, p0, Lcom/apportable/ui/Label$TextLabel;->strokeColor:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/apportable/ui/Label$TextLabel;->strokeWidth:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_2

    .line 229
    invoke-direct {p0}, Lcom/apportable/ui/Label$TextLabel;->adjustDaTextSizeToDaStroke()V

    .line 230
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 231
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    iget-object v4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 233
    iget v4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeMiter:F

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeMiter(F)V

    .line 234
    iget v4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeColor:I

    invoke-virtual {p0, v4}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    .line 235
    iget v4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeWidth:F

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 236
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 237
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 238
    invoke-virtual {p0, v3}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    .line 240
    :cond_2
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 241
    invoke-direct {p0}, Lcom/apportable/ui/Label$TextLabel;->generateTempCanvas()V

    .line 242
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 243
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->innerShadows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/ui/Label$Shadow;

    .line 244
    iget v6, v0, Lcom/apportable/ui/Label$Shadow;->color:I

    invoke-virtual {p0, v6}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    .line 245
    iget-object v6, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v6}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 246
    const/high16 v6, -0x1000000

    invoke-virtual {p0, v6}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    .line 247
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 248
    new-instance v6, Landroid/graphics/BlurMaskFilter;

    iget v7, v0, Lcom/apportable/ui/Label$Shadow;->r:F

    sget-object v8, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v6, v7, v8}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v4, v6}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 250
    iget-object v6, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    .line 251
    iget-object v6, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    iget v7, v0, Lcom/apportable/ui/Label$Shadow;->dx:F

    iget v0, v0, Lcom/apportable/ui/Label$Shadow;->dy:F

    invoke-virtual {v6, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 252
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 253
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 254
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v9, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 255
    iget-object v0, p0, Lcom/apportable/ui/Label$TextLabel;->tempCanvas:Landroid/graphics/Canvas;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v11, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 257
    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 258
    invoke-virtual {v4, v10}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 259
    invoke-virtual {p0, v3}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    .line 260
    invoke-virtual {p0, v9, v9, v9, v11}, Lcom/apportable/ui/Label$TextLabel;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 265
    :cond_3
    if-eqz v2, :cond_4

    .line 266
    aget-object v0, v2, v11

    const/4 v4, 0x1

    aget-object v4, v2, v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    const/4 v6, 0x3

    aget-object v2, v2, v6

    invoke-virtual {p0, v0, v4, v5, v2}, Lcom/apportable/ui/Label$TextLabel;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 268
    :cond_4
    invoke-virtual {p0, v1}, Lcom/apportable/ui/Label$TextLabel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 269
    invoke-virtual {p0, v3}, Lcom/apportable/ui/Label$TextLabel;->setTextColor(I)V

    .line 271
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->unfreeze()V

    .line 273
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 274
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 368
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 369
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 371
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getMeasuredHeight()I

    move-result v1

    .line 373
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lcom/apportable/ui/Label$TextLabel;->refitText(Ljava/lang/String;II)V

    .line 374
    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setMeasuredDimension(II)V

    .line 376
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 385
    if-eq p1, p3, :cond_0

    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/apportable/ui/Label$TextLabel;->refitText(Ljava/lang/String;II)V

    .line 388
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 380
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->refitTextIfNeeded()V

    .line 381
    return-void
.end method

.method public postInvalidate()V
    .locals 1

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 323
    :cond_0
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->postInvalidate(IIII)V

    .line 328
    :cond_0
    return-void
.end method

.method public refitTextIfNeeded()V
    .locals 3

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/apportable/ui/Label$TextLabel;->refitText(Ljava/lang/String;II)V

    .line 159
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 318
    :cond_0
    return-void
.end method

.method public setAdjustsFontSizeToFitWidth(Z)V
    .locals 0

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/apportable/ui/Label$TextLabel;->adjustFontSize:Z

    .line 306
    return-void
.end method

.method public setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/apportable/ui/Label$TextLabel;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    return-void
.end method

.method public setMinimumFontSize(F)V
    .locals 0

    .prologue
    .line 309
    iput p1, p0, Lcom/apportable/ui/Label$TextLabel;->minimumFontSize:F

    .line 310
    invoke-virtual {p0}, Lcom/apportable/ui/Label$TextLabel;->refitTextIfNeeded()V

    .line 311
    return-void
.end method

.method public setNumberOfLines(I)V
    .locals 0

    .prologue
    .line 162
    iput p1, p0, Lcom/apportable/ui/Label$TextLabel;->mNumberOfLines:I

    .line 163
    return-void
.end method

.method public setStroke(FI)V
    .locals 2

    .prologue
    .line 166
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/apportable/ui/Label$TextLabel;->setStroke(FILandroid/graphics/Paint$Join;F)V

    .line 167
    return-void
.end method

.method public setStroke(FILandroid/graphics/Paint$Join;F)V
    .locals 0

    .prologue
    .line 89
    iput p1, p0, Lcom/apportable/ui/Label$TextLabel;->strokeWidth:F

    .line 90
    iput p2, p0, Lcom/apportable/ui/Label$TextLabel;->strokeColor:I

    .line 91
    iput-object p3, p0, Lcom/apportable/ui/Label$TextLabel;->strokeJoin:Landroid/graphics/Paint$Join;

    .line 92
    iput p4, p0, Lcom/apportable/ui/Label$TextLabel;->strokeMiter:F

    .line 93
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/Label$TextLabel;->frozen:Z

    .line 302
    return-void
.end method
