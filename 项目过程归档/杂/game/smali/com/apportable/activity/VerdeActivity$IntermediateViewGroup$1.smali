.class Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->removeView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;->this$1:Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;

    iput-object p2, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;->this$1:Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;

    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;->val$view:Landroid/view/View;

    # invokes: Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->access$601(Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;Landroid/view/View;)V

    .line 284
    return-void
.end method
