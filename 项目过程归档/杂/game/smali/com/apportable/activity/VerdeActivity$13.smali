.class Lcom/apportable/activity/VerdeActivity$13;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onNewIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$13;->this$0:Lcom/apportable/activity/VerdeActivity;

    iput-object p2, p0, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 660
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$13;->this$0:Lcom/apportable/activity/VerdeActivity;

    new-instance v1, Lcom/apportable/activity/VerdeActivity$13$1;

    invoke-direct {v1, p0}, Lcom/apportable/activity/VerdeActivity$13$1;-><init>(Lcom/apportable/activity/VerdeActivity$13;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/apportable/activity/VerdeActivity;->runOnThread(Ljava/lang/Runnable;I)V

    .line 692
    return-void
.end method
