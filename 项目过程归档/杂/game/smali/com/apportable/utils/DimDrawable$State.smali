.class Lcom/apportable/utils/DimDrawable$State;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DimDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/utils/DimDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private mChangingConfigurations:I

.field private mDimAmount:F

.field private mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;FI)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/apportable/utils/DimDrawable$State;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 162
    iput p2, p0, Lcom/apportable/utils/DimDrawable$State;->mDimAmount:F

    .line 163
    iput p3, p0, Lcom/apportable/utils/DimDrawable$State;->mChangingConfigurations:I

    .line 164
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/apportable/utils/DimDrawable$State;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable$State;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/apportable/utils/DimDrawable;

    iget v2, p0, Lcom/apportable/utils/DimDrawable$State;->mDimAmount:F

    invoke-direct {v1, v0, v2}, Lcom/apportable/utils/DimDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v1
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/apportable/utils/DimDrawable$State;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/apportable/utils/DimDrawable;

    iget v2, p0, Lcom/apportable/utils/DimDrawable$State;->mDimAmount:F

    invoke-direct {v1, v0, v2}, Lcom/apportable/utils/DimDrawable;-><init>(Landroid/graphics/drawable/Drawable;F)V

    return-object v1
.end method
