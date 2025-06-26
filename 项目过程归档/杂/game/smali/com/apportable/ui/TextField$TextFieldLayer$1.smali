.class Lcom/apportable/ui/TextField$TextFieldLayer$1;
.super Ljava/lang/Object;
.source "TextField.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/TextField$TextFieldLayer;-><init>(Lcom/apportable/ui/TextField;Landroid/content/Context;Lcom/apportable/ui/TextField;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

.field final synthetic val$this$0:Lcom/apportable/ui/TextField;


# direct methods
.method constructor <init>(Lcom/apportable/ui/TextField$TextFieldLayer;Lcom/apportable/ui/TextField;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    iput-object p2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->val$this$0:Lcom/apportable/ui/TextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 135
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 136
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apportable/activity/VerdeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    iget-object v1, v1, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    # invokes: Lcom/apportable/ui/TextField;->actionBarWillShow(I)V
    invoke-static {v1, v0}, Lcom/apportable/ui/TextField;->access$400(Lcom/apportable/ui/TextField;I)V

    .line 139
    :cond_0
    return v3
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 155
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apportable/activity/VerdeActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    iget-object v1, v1, Lcom/apportable/ui/TextField$TextFieldLayer;->this$0:Lcom/apportable/ui/TextField;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    iget-object v2, p0, Lcom/apportable/ui/TextField$TextFieldLayer$1;->this$1:Lcom/apportable/ui/TextField$TextFieldLayer;

    invoke-virtual {v2}, Lcom/apportable/ui/TextField$TextFieldLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    # invokes: Lcom/apportable/ui/TextField;->actionBarWillHide(I)V
    invoke-static {v1, v0}, Lcom/apportable/ui/TextField;->access$500(Lcom/apportable/ui/TextField;I)V

    .line 158
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method
