.class Lcom/apportable/social/FacebookService$1;
.super Ljava/lang/Object;
.source "FacebookService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/social/FacebookService;->authenticate(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/social/FacebookService;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$allowUI:Z


# direct methods
.method constructor <init>(Lcom/apportable/social/FacebookService;Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/apportable/social/FacebookService$1;->this$0:Lcom/apportable/social/FacebookService;

    iput-object p2, p0, Lcom/apportable/social/FacebookService$1;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/apportable/social/FacebookService$1;->val$allowUI:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/apportable/social/FacebookService$1;->this$0:Lcom/apportable/social/FacebookService;

    iget-object v1, p0, Lcom/apportable/social/FacebookService$1;->val$activity:Landroid/app/Activity;

    iget-boolean v2, p0, Lcom/apportable/social/FacebookService$1;->val$allowUI:Z

    iget-object v3, p0, Lcom/apportable/social/FacebookService$1;->this$0:Lcom/apportable/social/FacebookService;

    invoke-static {v1, v2, v3}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    move-result-object v1

    # setter for: Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;
    invoke-static {v0, v1}, Lcom/apportable/social/FacebookService;->access$002(Lcom/apportable/social/FacebookService;Lcom/facebook/Session;)Lcom/facebook/Session;

    .line 71
    iget-object v0, p0, Lcom/apportable/social/FacebookService$1;->this$0:Lcom/apportable/social/FacebookService;

    # getter for: Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;
    invoke-static {v0}, Lcom/apportable/social/FacebookService;->access$000(Lcom/apportable/social/FacebookService;)Lcom/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/apportable/social/FacebookService$1;->this$0:Lcom/apportable/social/FacebookService;

    sget-object v1, Lcom/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/facebook/SessionState;

    invoke-virtual {v0, v4, v1, v4}, Lcom/apportable/social/FacebookService;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 75
    :cond_0
    return-void
.end method
