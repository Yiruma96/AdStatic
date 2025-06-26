.class Lcom/apportable/ui/Slider;
.super Lcom/apportable/ui/Control;
.source "Slider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static RANGE:I


# instance fields
.field private mBackgroundImage:Landroid/graphics/drawable/Drawable;

.field private mContinuous:Z

.field private mProgress:I

.field private mProgressImage:Landroid/graphics/drawable/Drawable;

.field private mSlider:Landroid/widget/SeekBar;

.field private mThumbImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0x2710

    sput v0, Lcom/apportable/ui/Slider;->RANGE:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mThumbImage:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    .line 65
    invoke-direct {p0}, Lcom/apportable/ui/Slider;->init()V

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/Control;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 20
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    .line 21
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mThumbImage:Landroid/graphics/drawable/Drawable;

    .line 22
    iput-object v0, p0, Lcom/apportable/ui/Slider;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    .line 70
    invoke-direct {p0}, Lcom/apportable/ui/Slider;->init()V

    .line 71
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Slider;
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/apportable/ui/Slider;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Slider;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Slider;
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/apportable/ui/Slider;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Slider;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Lcom/apportable/ui/Slider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    .line 56
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    sget v1, Lcom/apportable/ui/Slider;->RANGE:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 57
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 58
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    sget v1, Lcom/apportable/ui/Slider;->RANGE:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setContentView(Landroid/view/View;)V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setClipChildren(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public adjustThumbSize(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    invoke-virtual {p0}, Lcom/apportable/ui/Slider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 123
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 124
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    const/4 v2, 0x1

    invoke-static {v0, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 127
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/apportable/ui/Slider;->setThumbImage(Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/SeekBar;->setPadding(IIII)V

    .line 130
    return-void
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/apportable/ui/Slider;->mProgress:I

    return v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .prologue
    .line 75
    iput p2, p0, Lcom/apportable/ui/Slider;->mProgress:I

    .line 76
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/apportable/ui/Slider;->mProgress:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 79
    :cond_0
    iget-boolean v0, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    if-eqz v0, :cond_1

    .line 80
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->sendEvent(I)V

    .line 82
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->sendEvent(I)V

    .line 91
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->sendEvent(I)V

    .line 95
    iget-boolean v0, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    if-nez v0, :cond_0

    .line 96
    const/16 v0, 0x1000

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->sendEvent(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public setBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 172
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V

    .line 173
    return-void
.end method

.method protected setBackgroundImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 159
    iput-object p1, p0, Lcom/apportable/ui/Slider;->mBackgroundImage:Landroid/graphics/drawable/Drawable;

    .line 160
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 165
    :try_start_0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setBackgroundImage(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string v0, "Slider"

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

.method public setClipsToBounds(Z)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public setContinuous(Z)V
    .locals 0

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/apportable/ui/Slider;->mContinuous:Z

    .line 177
    return-void
.end method

.method public setProgressImage(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 114
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 115
    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    const/16 v2, 0x77

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 118
    :goto_0
    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setProgressImage(Landroid/graphics/drawable/Drawable;)V

    .line 119
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected setProgressImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method public setProgressImage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 107
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/16 v2, 0x77

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setProgressImage(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string v0, "Slider"

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

.method public setThumbImage(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 155
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->createDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setThumbImage(Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method

.method protected setThumbImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 133
    iput-object p1, p0, Lcom/apportable/ui/Slider;->mThumbImage:Landroid/graphics/drawable/Drawable;

    .line 134
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 144
    return-void
.end method

.method public setThumbImage(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 148
    :try_start_0
    invoke-static {p1}, Lcom/apportable/utils/ImageUtils;->Drawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Slider;->setThumbImage(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    const-string v0, "Slider"

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

.method public setValue(I)V
    .locals 1

    .prologue
    .line 43
    iput p1, p0, Lcom/apportable/ui/Slider;->mProgress:I

    .line 44
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mProgressImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/Slider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 48
    return-void
.end method
