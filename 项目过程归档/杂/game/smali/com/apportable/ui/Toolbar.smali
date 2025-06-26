.class public Lcom/apportable/ui/Toolbar;
.super Lcom/apportable/ui/View;
.source "Toolbar.java"


# static fields
.field private static final BLACK_OPAQUE_COLORS:[I

.field public static final BLACK_OPAQUE_STYLE:I = 0x1

.field public static final BLACK_STYLE:I = 0x1

.field private static final BLACK_TRANSLUCENT_COLORS:[I

.field public static final BLACK_TRANSLUCENT_STYLE:I = 0x2

.field private static DEFAULT_COLOR:I

.field public static final DEFAULT_STYLE:I


# instance fields
.field private mStyle:I

.field private mTint:I

.field private mToolbar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 24
    const v0, -0xeeeeef

    sput v0, Lcom/apportable/ui/Toolbar;->DEFAULT_COLOR:I

    .line 25
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apportable/ui/Toolbar;->BLACK_OPAQUE_COLORS:[I

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/apportable/ui/Toolbar;->BLACK_TRANSLUCENT_COLORS:[I

    return-void

    .line 25
    nop

    :array_0
    .array-data 4
        -0xcccccd
        -0x1000000
    .end array-data

    .line 26
    :array_1
    .array-data 4
        -0x33cccccd    # -4.6976204E7f
        -0x23000000
    .end array-data
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 29
    iput v0, p0, Lcom/apportable/ui/Toolbar;->mStyle:I

    .line 30
    iput v0, p0, Lcom/apportable/ui/Toolbar;->mTint:I

    .line 40
    invoke-direct {p0}, Lcom/apportable/ui/Toolbar;->init()V

    .line 41
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 29
    iput v0, p0, Lcom/apportable/ui/Toolbar;->mStyle:I

    .line 30
    iput v0, p0, Lcom/apportable/ui/Toolbar;->mTint:I

    .line 45
    invoke-direct {p0}, Lcom/apportable/ui/Toolbar;->init()V

    .line 46
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Toolbar;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/apportable/ui/Toolbar;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Toolbar;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/Toolbar;
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/apportable/ui/Toolbar;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/Toolbar;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/apportable/ui/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    .line 34
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Toolbar;->setContentView(Landroid/view/View;)V

    .line 36
    return-void
.end method


# virtual methods
.method public addItem(Lcom/apportable/ui/BarItem;)V
    .locals 3

    .prologue
    .line 69
    if-nez p1, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getLayout()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 73
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 74
    iget-object v2, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public beginAnimations()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0}, Lcom/apportable/ui/Toolbar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 62
    return-void
.end method

.method public endAnimations()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 66
    return-void
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/apportable/ui/Toolbar;->mStyle:I

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/apportable/ui/Toolbar;->mTint:I

    return v0
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 58
    return-void
.end method

.method public setStyle(I)V
    .locals 3

    .prologue
    .line 79
    iput p1, p0, Lcom/apportable/ui/Toolbar;->mStyle:I

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 82
    :pswitch_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/apportable/ui/Toolbar;->DEFAULT_COLOR:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 85
    :pswitch_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/apportable/ui/Toolbar;->BLACK_OPAQUE_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 89
    :pswitch_2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/apportable/ui/Toolbar;->BLACK_TRANSLUCENT_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTintColor(I)V
    .locals 1

    .prologue
    .line 100
    iput p1, p0, Lcom/apportable/ui/Toolbar;->mTint:I

    .line 101
    iget-object v0, p0, Lcom/apportable/ui/Toolbar;->mToolbar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 102
    return-void
.end method
