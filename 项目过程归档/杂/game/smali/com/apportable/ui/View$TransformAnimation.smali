.class Lcom/apportable/ui/View$TransformAnimation;
.super Landroid/view/animation/Animation;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformAnimation"
.end annotation


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Lcom/apportable/ui/View;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/View;Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/apportable/ui/View$TransformAnimation;->this$0:Lcom/apportable/ui/View;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/apportable/ui/View$TransformAnimation;->mMatrix:Landroid/graphics/Matrix;

    .line 172
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/View$TransformAnimation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 186
    return-void
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/apportable/ui/View$TransformAnimation;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/apportable/ui/View$TransformAnimation;->mMatrix:Landroid/graphics/Matrix;

    .line 176
    return-void
.end method
