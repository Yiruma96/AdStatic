.class Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;
.super Landroid/widget/FrameLayout;
.source "VerdeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/activity/VerdeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntermediateViewGroup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->this$0:Lcom/apportable/activity/VerdeActivity;

    .line 275
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 276
    return-void
.end method

.method static synthetic access$601(Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public removeView(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;->this$0:Lcom/apportable/activity/VerdeActivity;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;

    invoke-direct {v1, p0, p1}, Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup$1;-><init>(Lcom/apportable/activity/VerdeActivity$IntermediateViewGroup;Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/apportable/activity/VerdeActivity;->runOnThread(Ljava/lang/Runnable;I)V

    .line 286
    return-void
.end method
