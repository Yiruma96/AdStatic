.class final Lcom/apportable/utils/ClipColorDrawable$ColorState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "ClipColorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/utils/ClipColorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorState"
.end annotation


# instance fields
.field mBaseColor:I

.field mChangingConfigurations:I

.field mUseColor:I


# direct methods
.method constructor <init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iget v0, p1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    iput v0, p0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mBaseColor:I

    .line 154
    iget v0, p1, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    iput v0, p0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mUseColor:I

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/apportable/utils/ClipColorDrawable$ColorState;->mChangingConfigurations:I

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lcom/apportable/utils/ClipColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;Lcom/apportable/utils/ClipColorDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lcom/apportable/utils/ClipColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apportable/utils/ClipColorDrawable;-><init>(Lcom/apportable/utils/ClipColorDrawable$ColorState;Lcom/apportable/utils/ClipColorDrawable$1;)V

    return-object v0
.end method
