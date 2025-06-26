.class Lcom/apportable/ui/PickerView;
.super Lcom/apportable/ui/View;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/ui/PickerView$PickerAdapter;
    }
.end annotation


# instance fields
.field private isInitialized:Z

.field private mNumberOfComponents:I

.field private mNumberOfRowsByComponent:[I

.field private mPickerView:Landroid/widget/LinearLayout;

.field private mRowHeightByComponent:[I

.field private mWidthByComponent:[I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;I)V

    .line 77
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/PickerView;->setContentView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/graphics/RectF;)V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/ui/View;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    .line 83
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/apportable/ui/PickerView;->setContentView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/ui/PickerView;)[I
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I

    return-object v0
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/PickerView;
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/apportable/ui/PickerView;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/PickerView;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static create(Landroid/content/Context;ILandroid/graphics/RectF;)Lcom/apportable/ui/PickerView;
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/apportable/ui/PickerView;

    invoke-direct {v0, p0, p1, p2}, Lcom/apportable/ui/PickerView;-><init>(Landroid/content/Context;ILandroid/graphics/RectF;)V

    return-object v0
.end method

.method private initComponents()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-boolean v0, p0, Lcom/apportable/ui/PickerView;->isInitialized:Z

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/PickerView;->isInitialized:Z

    .line 55
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfRowsByComponent:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mWidthByComponent:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I

    if-nez v0, :cond_1

    .line 73
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    .line 59
    :goto_0
    iget v2, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    if-ge v0, v2, :cond_0

    .line 60
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/apportable/ui/PickerView;->mWidthByComponent:[I

    aget v3, v3, v0

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    new-instance v3, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/apportable/ui/PickerView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 64
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setHorizontalScrollBarEnabled(Z)V

    .line 67
    new-instance v4, Lcom/apportable/ui/PickerView$PickerAdapter;

    invoke-direct {v4, p0, p0, v0}, Lcom/apportable/ui/PickerView$PickerAdapter;-><init>(Lcom/apportable/ui/PickerView;Lcom/apportable/ui/PickerView;I)V

    .line 68
    iget-object v5, p0, Lcom/apportable/ui/PickerView;->mNumberOfRowsByComponent:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/apportable/ui/PickerView$PickerAdapter;->setNumberOfRowsInComponent(I)V

    .line 69
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    iget-object v4, p0, Lcom/apportable/ui/PickerView;->mPickerView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public native numberOfComponents(I)I
.end method

.method public native numberOfRowsInComponent(II)I
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/apportable/ui/View;->onAttachedToWindow()V

    .line 90
    invoke-direct {p0}, Lcom/apportable/ui/PickerView;->initComponents()V

    .line 91
    return-void
.end method

.method public reloadData()V
    .locals 3

    .prologue
    .line 37
    iget v0, p0, Lcom/apportable/ui/PickerView;->mObject:I

    invoke-virtual {p0, v0}, Lcom/apportable/ui/PickerView;->numberOfComponents(I)I

    move-result v0

    iput v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    .line 38
    iget v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfRowsByComponent:[I

    .line 39
    iget v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mWidthByComponent:[I

    .line 40
    iget v0, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I

    .line 42
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/apportable/ui/PickerView;->mNumberOfComponents:I

    if-ge v0, v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/apportable/ui/PickerView;->mNumberOfRowsByComponent:[I

    iget v2, p0, Lcom/apportable/ui/PickerView;->mObject:I

    invoke-virtual {p0, v2, v0}, Lcom/apportable/ui/PickerView;->numberOfRowsInComponent(II)I

    move-result v2

    aput v2, v1, v0

    .line 44
    iget-object v1, p0, Lcom/apportable/ui/PickerView;->mWidthByComponent:[I

    iget v2, p0, Lcom/apportable/ui/PickerView;->mObject:I

    invoke-virtual {p0, v2, v0}, Lcom/apportable/ui/PickerView;->widthForComponent(II)I

    move-result v2

    aput v2, v1, v0

    .line 45
    iget-object v1, p0, Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I

    iget v2, p0, Lcom/apportable/ui/PickerView;->mObject:I

    invoke-virtual {p0, v2, v0}, Lcom/apportable/ui/PickerView;->rowHeightForComponent(II)I

    move-result v2

    aput v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public native rowHeightForComponent(II)I
.end method

.method public native widthForComponent(II)I
.end method
