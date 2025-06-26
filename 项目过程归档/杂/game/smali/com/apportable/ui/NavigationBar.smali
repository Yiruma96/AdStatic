.class public Lcom/apportable/ui/NavigationBar;
.super Lcom/apportable/ui/View;
.source "NavigationBar.java"


# static fields
.field private static final BLACK_OPAQUE_COLORS:[I

.field private static final BLACK_TRANSLUCENT_COLORS:[I

.field private static DEFAULT_COLOR:I


# instance fields
.field private mCenterItems:Landroid/widget/LinearLayout;

.field private mLeftItems:Landroid/widget/LinearLayout;

.field private mNavigationBar:Landroid/widget/RelativeLayout;

.field private mRightItems:Landroid/widget/LinearLayout;

.field private mStyle:I

.field private mTint:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 31
    const v0, -0xeeeeef

    sput v0, Lcom/apportable/ui/NavigationBar;->DEFAULT_COLOR:I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apportable/ui/NavigationBar;->BLACK_OPAQUE_COLORS:[I

    .line 33
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/apportable/ui/NavigationBar;->BLACK_TRANSLUCENT_COLORS:[I

    return-void

    .line 32
    nop

    :array_0
    .array-data 4
        -0xcccccd
        -0x1000000
    .end array-data

    .line 33
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

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 27
    iput v0, p0, Lcom/apportable/ui/NavigationBar;->mStyle:I

    .line 28
    iput v0, p0, Lcom/apportable/ui/NavigationBar;->mTint:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mTitle:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/apportable/ui/NavigationBar;->init()V

    .line 63
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 27
    iput v0, p0, Lcom/apportable/ui/NavigationBar;->mStyle:I

    .line 28
    iput v0, p0, Lcom/apportable/ui/NavigationBar;->mTint:I

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mTitle:Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Lcom/apportable/ui/NavigationBar;->init()V

    .line 68
    return-void
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/NavigationBar;
    .locals 1

    .prologue
    .line 71
    new-instance v0, Lcom/apportable/ui/NavigationBar;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/NavigationBar;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/NavigationBar;
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/apportable/ui/NavigationBar;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/NavigationBar;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 36
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    .line 37
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    .line 38
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    .line 39
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    .line 41
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 42
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 45
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 46
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49
    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    iget-object v3, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/NavigationBar;->setContentView(Landroid/view/View;)V

    .line 58
    return-void
.end method


# virtual methods
.method public addLeftItem(Lcom/apportable/ui/BarItem;)V
    .locals 3

    .prologue
    .line 116
    if-nez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getLayout()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 120
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public addRightItem(Lcom/apportable/ui/BarItem;)V
    .locals 3

    .prologue
    .line 126
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 129
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getView()Landroid/view/View;

    move-result-object v0

    .line 130
    invoke-virtual {p1}, Lcom/apportable/ui/BarItem;->getLayout()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 131
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 132
    iget-object v2, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public beginAnimations(I)V
    .locals 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 93
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0}, Lcom/apportable/ui/NavigationBar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 96
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0}, Lcom/apportable/ui/NavigationBar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0}, Lcom/apportable/ui/NavigationBar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v4, v3

    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 101
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-static {p0}, Lcom/apportable/ui/NavigationBar;->getLayoutWidth(Lcom/apportable/ui/View;)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v4, v3

    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0

    .line 103
    :cond_2
    if-nez p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 106
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/animation/LayoutAnimationController;

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-direct {v1, v2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0
.end method

.method public endAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 112
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 113
    return-void
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/apportable/ui/NavigationBar;->mStyle:I

    return v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/apportable/ui/NavigationBar;->mTint:I

    return v0
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 80
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 81
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 82
    return-void
.end method

.method public removeLeftItems()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mLeftItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 86
    return-void
.end method

.method public removeRightItems()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mRightItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 90
    return-void
.end method

.method public setStyle(I)V
    .locals 3

    .prologue
    .line 137
    iput p1, p0, Lcom/apportable/ui/NavigationBar;->mStyle:I

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 140
    :pswitch_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/apportable/ui/NavigationBar;->DEFAULT_COLOR:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/NavigationBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 143
    :pswitch_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/apportable/ui/NavigationBar;->BLACK_OPAQUE_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/NavigationBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 146
    :pswitch_2
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/apportable/ui/NavigationBar;->BLACK_TRANSLUCENT_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {p0, v0}, Lcom/apportable/ui/NavigationBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 138
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
    .line 156
    iput p1, p0, Lcom/apportable/ui/NavigationBar;->mTint:I

    .line 157
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mNavigationBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 158
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 165
    iput-object p1, p0, Lcom/apportable/ui/NavigationBar;->mTitle:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 167
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/apportable/ui/NavigationBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 168
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 169
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v1, -0x22111112

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v1, p0, Lcom/apportable/ui/NavigationBar;->mCenterItems:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    return-void
.end method

.method public setTitleView(Lcom/apportable/ui/View;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method
