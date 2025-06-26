.class public Lcom/apportable/utils/ClipColorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ClipColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/utils/ClipColorDrawable$ColorState;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V

    .line 43
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/apportable/utils/ClipColorDrawable;->setColor(I)V

    .line 53
    return-void
.end method

.method private constructor <init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mPaint:Landroid/graphics/Paint;

    .line 56
    new-instance v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;

    invoke-direct {v0, p1}, Lcom/apportable/utils/ClipColorDrawable$ColorState;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V

    iput-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;Lcom/apportable/utils/ClipColorDrawable$1;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 67
    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 68
    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v1, v1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v1, v1, 0x18

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v2, v2, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 70
    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/utils/ClipColorDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 72
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 73
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v1, v1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mChangingConfigurations:I

    .line 143
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    ushr-int/lit8 v0, v0, 0x18

    sparse-switch v0, :sswitch_data_0

    .line 137
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 133
    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 135
    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    .line 131
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 112
    shr-int/lit8 v0, p1, 0x7

    add-int/2addr v0, p1

    .line 113
    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v1, v1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    ushr-int/lit8 v1, v1, 0x18

    .line 114
    mul-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    .line 115
    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v1, v1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    .line 116
    iget-object v2, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget-object v3, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v3, v3, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    shl-int/lit8 v3, v3, 0x8

    ushr-int/lit8 v3, v3, 0x8

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v3

    iput v0, v2, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    .line 117
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    if-eq v1, v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->invalidateSelf()V

    .line 120
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget v0, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    if-eq v0, p1, :cond_1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/apportable/utils/ClipColorDrawable;->invalidateSelf()V

    .line 93
    iget-object v0, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iget-object v1, p0, Lcom/apportable/utils/ClipColorDrawable;->mState:Lcom/apportable/utils/ClipColorDrawable$ColorState;

    iput p1, v1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    iput p1, v0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    .line 95
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
