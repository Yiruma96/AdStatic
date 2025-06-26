.class Lcom/apportable/ui/PickerView$PickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PickerAdapter"
.end annotation


# instance fields
.field private mComponentNumber:I

.field private mNumberOfRowsInComponent:I

.field private mOwner:Lcom/apportable/ui/PickerView;

.field final synthetic this$0:Lcom/apportable/ui/PickerView;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/PickerView;Lcom/apportable/ui/PickerView;I)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->this$0:Lcom/apportable/ui/PickerView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    .line 100
    iput p3, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mComponentNumber:I

    .line 101
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/apportable/ui/PickerView$PickerAdapter;->getNumberOfRowsInComponent()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 120
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNumberOfRowsInComponent()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mNumberOfRowsInComponent:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    .line 125
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    check-cast p2, Lcom/apportable/ui/PickerViewCell;

    invoke-direct {v6, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/apportable/ui/PickerViewCell;

    iget-object v1, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    invoke-virtual {v1}, Lcom/apportable/ui/PickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    iget v3, v2, Lcom/apportable/ui/PickerView;->mObject:I

    iget-object v2, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    # getter for: Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I
    invoke-static {v2}, Lcom/apportable/ui/PickerView;->access$000(Lcom/apportable/ui/PickerView;)[I

    move-result-object v2

    iget v4, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mComponentNumber:I

    aget v2, v2, v4

    int-to-float v4, v2

    iget v5, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mComponentNumber:I

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/apportable/ui/PickerViewCell;-><init>(Landroid/content/Context;IIFI)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 132
    :goto_0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/ui/PickerViewCell;

    invoke-virtual {v0}, Lcom/apportable/ui/PickerViewCell;->loadView()V

    .line 133
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/ui/PickerViewCell;

    iget-object v1, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mOwner:Lcom/apportable/ui/PickerView;

    # getter for: Lcom/apportable/ui/PickerView;->mRowHeightByComponent:[I
    invoke-static {v1}, Lcom/apportable/ui/PickerView;->access$000(Lcom/apportable/ui/PickerView;)[I

    move-result-object v1

    iget v2, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mComponentNumber:I

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/apportable/ui/PickerViewCell;->prepareForReuse(IF)V

    goto :goto_0
.end method

.method public setNumberOfRowsInComponent(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/apportable/ui/PickerView$PickerAdapter;->mNumberOfRowsInComponent:I

    .line 105
    return-void
.end method
