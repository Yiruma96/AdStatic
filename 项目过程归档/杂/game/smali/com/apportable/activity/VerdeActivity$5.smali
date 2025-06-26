.class Lcom/apportable/activity/VerdeActivity$5;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$5;->this$0:Lcom/apportable/activity/VerdeActivity;

    iput-object p2, p0, Lcom/apportable/activity/VerdeActivity$5;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/apportable/activity/VerdeActivity$5;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 294
    invoke-static {}, Lcom/apportable/ui/Window;->getKeyWindowDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    .line 296
    new-instance v1, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;

    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$5;->this$0:Lcom/apportable/activity/VerdeActivity;

    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$5;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {v1, v2, v3}, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;-><init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Context;)V

    .line 297
    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$5;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->addView(Landroid/view/View;)V

    .line 298
    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$5;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    :cond_0
    return-void
.end method
