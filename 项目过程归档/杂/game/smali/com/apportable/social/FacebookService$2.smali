.class Lcom/apportable/social/FacebookService$2;
.super Ljava/lang/Object;
.source "FacebookService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/social/FacebookService;->request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/social/FacebookService;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$frictionless:Z

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$toUsers:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/social/FacebookService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/apportable/social/FacebookService$2;->this$0:Lcom/apportable/social/FacebookService;

    iput-object p2, p0, Lcom/apportable/social/FacebookService$2;->val$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/apportable/social/FacebookService$2;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/apportable/social/FacebookService$2;->val$data:Ljava/lang/String;

    iput-object p5, p0, Lcom/apportable/social/FacebookService$2;->val$toUsers:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/apportable/social/FacebookService$2;->val$frictionless:Z

    iput-object p7, p0, Lcom/apportable/social/FacebookService$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 88
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 89
    const-string v0, "title"

    iget-object v2, p0, Lcom/apportable/social/FacebookService$2;->val$title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v0, "message"

    iget-object v2, p0, Lcom/apportable/social/FacebookService$2;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v0, "data"

    iget-object v2, p0, Lcom/apportable/social/FacebookService$2;->val$data:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/apportable/social/FacebookService$2;->val$toUsers:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "to"

    iget-object v2, p0, Lcom/apportable/social/FacebookService$2;->val$toUsers:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/apportable/social/FacebookService$2;->val$frictionless:Z

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "frictionless"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    :try_start_0
    new-instance v0, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    iget-object v2, p0, Lcom/apportable/social/FacebookService$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/apportable/social/FacebookService$2;->this$0:Lcom/apportable/social/FacebookService;

    # getter for: Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;
    invoke-static {v3}, Lcom/apportable/social/FacebookService;->access$000(Lcom/apportable/social/FacebookService;)Lcom/facebook/Session;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    .line 101
    iget-object v2, p0, Lcom/apportable/social/FacebookService$2;->this$0:Lcom/apportable/social/FacebookService;

    invoke-virtual {v0, v2}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    .line 102
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    iget-object v2, p0, Lcom/apportable/social/FacebookService$2;->this$0:Lcom/apportable/social/FacebookService;

    invoke-virtual {v2, v1, v0}, Lcom/apportable/social/FacebookService;->onFailure(Landroid/os/Bundle;Ljava/lang/Exception;)V

    goto :goto_0
.end method
