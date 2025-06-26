.class Lcom/apportable/social/FacebookService$3;
.super Ljava/lang/Object;
.source "FacebookService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/social/FacebookService;->request(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/social/FacebookService;

.field final synthetic val$graphPath:Ljava/lang/String;

.field final synthetic val$parameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/apportable/social/FacebookService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/apportable/social/FacebookService$3;->this$0:Lcom/apportable/social/FacebookService;

    iput-object p2, p0, Lcom/apportable/social/FacebookService$3;->val$graphPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/apportable/social/FacebookService$3;->val$parameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 117
    new-instance v0, Lcom/facebook/Request;

    iget-object v1, p0, Lcom/apportable/social/FacebookService$3;->this$0:Lcom/apportable/social/FacebookService;

    # getter for: Lcom/apportable/social/FacebookService;->mSession:Lcom/facebook/Session;
    invoke-static {v1}, Lcom/apportable/social/FacebookService;->access$000(Lcom/apportable/social/FacebookService;)Lcom/facebook/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/apportable/social/FacebookService$3;->val$graphPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/apportable/social/FacebookService$3;->val$parameters:Landroid/os/Bundle;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/apportable/social/FacebookService$3;->this$0:Lcom/apportable/social/FacebookService;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 118
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 119
    return-void
.end method
