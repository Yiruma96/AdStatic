.class Lcom/apportable/activity/VerdeActivity$13$1;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/activity/VerdeActivity$13;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity$13;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 663
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnNewIntent(Landroid/content/Intent;)V
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$1500(Landroid/content/Intent;)V

    .line 665
    const/4 v0, 0x0

    .line 668
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    iget-object v1, v1, Lcom/apportable/activity/VerdeActivity$13;->this$0:Lcom/apportable/activity/VerdeActivity;

    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    iget-object v2, v2, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/apportable/activity/VerdeActivity;->setIntent(Landroid/content/Intent;)V

    .line 670
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    iget-object v1, v1, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 674
    :cond_0
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    iget-object v1, v1, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    const-string v2, "ACCESS_TOKEN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    iget-object v1, v1, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    const-string v2, "ACCESS_TOKEN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    iget-object v2, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    iget-object v2, v2, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    const-string v3, "ACCESS_SECRET"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 679
    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$13$1;->this$1:Lcom/apportable/activity/VerdeActivity$13;

    iget-object v3, v3, Lcom/apportable/activity/VerdeActivity$13;->val$intent:Landroid/content/Intent;

    const-string v4, "UID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oauth_token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&oauth_token_secret="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 681
    if-eqz v0, :cond_1

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    :cond_1
    if-eqz v0, :cond_2

    .line 688
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeHandleUri(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$400(Ljava/lang/String;)V

    .line 690
    :cond_2
    return-void
.end method
