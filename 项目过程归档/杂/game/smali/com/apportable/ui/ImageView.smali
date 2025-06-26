.class Lcom/apportable/ui/ImageView;
.super Lcom/apportable/ui/View;
.source "ImageView.java"


# instance fields
.field private mContentMode:I

.field private mGrayscaling:Z

.field private mImageHeight:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageWidth:I

.field private mPathStore:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    .line 24
    iput-boolean v1, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    .line 115
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->init()V

    .line 116
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    .line 24
    iput-boolean v1, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    .line 120
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->init()V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/RectF;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1, v1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    .line 23
    iput v1, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    .line 24
    iput-boolean v1, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    .line 126
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->init()V

    .line 127
    return-void
.end method

.method private applyContentMode()V
    .locals 2

    .prologue
    .line 187
    iget v0, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    packed-switch v0, :pswitch_data_0

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->requestLayout()V

    .line 229
    return-void

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 192
    :pswitch_1
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 195
    :pswitch_2
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 198
    :pswitch_3
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 201
    :pswitch_4
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 204
    :pswitch_5
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 207
    :pswitch_6
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 210
    :pswitch_7
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 213
    :pswitch_8
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 216
    :pswitch_9
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 219
    :pswitch_a
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 222
    :pswitch_b
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 225
    :pswitch_c
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static convertToGrayscale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 179
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 181
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 183
    return-object p0
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/ImageView;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/apportable/ui/ImageView;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/ImageView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/ImageView;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/apportable/ui/ImageView;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/ImageView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    .line 36
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/ImageView;->setContentView(Landroid/view/View;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/ImageView;->mUserInteractionEnabled:Z

    .line 38
    return-void
.end method

.method private reloadImage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 159
    :try_start_0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/apportable/ui/ImageView;->setImage(Landroid/graphics/drawable/Drawable;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    const-string v1, "ImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not load image from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->removeImage()V

    goto :goto_0
.end method


# virtual methods
.method public getContentMode()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 246
    invoke-super {p0}, Lcom/apportable/ui/View;->onAttachedToWindow()V

    .line 247
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apportable/ui/ImageView;->reloadImage(Ljava/lang/String;)V

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->applyContentMode()V

    .line 251
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 255
    invoke-super {p0}, Lcom/apportable/ui/View;->onDetachedFromWindow()V

    .line 256
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/apportable/ui/View;->onLayout(ZIIII)V

    .line 44
    sub-int v1, p4, p2

    .line 45
    sub-int v0, p5, p3

    .line 48
    iget v3, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    packed-switch v3, :pswitch_data_0

    move v3, v2

    .line 110
    :goto_0
    iget-object v4, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    add-int/2addr v1, v3

    add-int/2addr v0, v2

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 111
    return-void

    .line 50
    :pswitch_0
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v3, v1, 0x2

    .line 51
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 52
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 53
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    goto :goto_0

    .line 56
    :pswitch_1
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    sub-int v0, v1, v0

    div-int/lit8 v3, v0, 0x2

    .line 58
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 59
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    goto :goto_0

    .line 62
    :pswitch_2
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v3, v1, 0x2

    .line 63
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    sub-int v2, v0, v1

    .line 64
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 65
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    goto :goto_0

    .line 69
    :pswitch_3
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 70
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 71
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    move v5, v3

    move v3, v2

    move v2, v5

    .line 72
    goto :goto_0

    .line 74
    :pswitch_4
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    sub-int v3, v1, v2

    .line 75
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    .line 76
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 77
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    goto :goto_0

    .line 82
    :pswitch_5
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 83
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    move v3, v2

    .line 84
    goto :goto_0

    .line 86
    :pswitch_6
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    sub-int v3, v1, v0

    .line 88
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 89
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    goto :goto_0

    .line 93
    :pswitch_7
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    sub-int v3, v0, v1

    .line 94
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 95
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    move v5, v3

    move v3, v2

    move v2, v5

    .line 96
    goto :goto_0

    .line 98
    :pswitch_8
    iget v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    sub-int v3, v1, v2

    .line 99
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    sub-int v2, v0, v1

    .line 100
    iget v1, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 101
    iget v0, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public removeImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iput v2, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    .line 132
    iput v2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 133
    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->requestLayout()V

    .line 134
    return-void
.end method

.method public setContentMode(I)V
    .locals 0

    .prologue
    .line 236
    iput p1, p0, Lcom/apportable/ui/ImageView;->mContentMode:I

    .line 237
    invoke-direct {p0}, Lcom/apportable/ui/ImageView;->applyContentMode()V

    .line 238
    return-void
.end method

.method public setGrayscalingImage(Z)V
    .locals 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    if-eq p1, v0, :cond_0

    .line 168
    iput-boolean p1, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    .line 170
    :cond_0
    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/apportable/ui/ImageView;->convertToGrayscale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    :cond_1
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;II)V
    .locals 1

    .prologue
    .line 147
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/apportable/ui/ImageView;->setImage(Landroid/graphics/drawable/Drawable;II)V

    .line 148
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    .prologue
    .line 137
    iput p2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 138
    iput p3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    .line 139
    iget-boolean v0, p0, Lcom/apportable/ui/ImageView;->mGrayscaling:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-static {p1}, Lcom/apportable/ui/ImageView;->convertToGrayscale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0}, Lcom/apportable/ui/ImageView;->requestLayout()V

    .line 144
    return-void
.end method

.method public setImage(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 151
    iput-object p1, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    .line 152
    iput p2, p0, Lcom/apportable/ui/ImageView;->mImageWidth:I

    .line 153
    iput p3, p0, Lcom/apportable/ui/ImageView;->mImageHeight:I

    .line 154
    iget-object v0, p0, Lcom/apportable/ui/ImageView;->mPathStore:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apportable/ui/ImageView;->reloadImage(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public setUserInteractionEnabled(Z)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method
