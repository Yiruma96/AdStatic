.class Lcom/apportable/account/Manager$2;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/account/Manager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/apportable/account/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/account/Manager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$authTokenType:Ljava/lang/String;

.field final synthetic val$callback:Lcom/apportable/account/Callback;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/apportable/account/Manager;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/apportable/account/Callback;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/apportable/account/Manager$2;->this$0:Lcom/apportable/account/Manager;

    iput-object p2, p0, Lcom/apportable/account/Manager$2;->val$account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/apportable/account/Manager$2;->val$authTokenType:Ljava/lang/String;

    iput-object p4, p0, Lcom/apportable/account/Manager$2;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/apportable/account/Manager$2;->val$callback:Lcom/apportable/account/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 48
    # getter for: Lcom/apportable/account/Manager;->sManager:Landroid/accounts/AccountManager;
    invoke-static {}, Lcom/apportable/account/Manager;->access$200()Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/account/Manager$2;->val$account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/apportable/account/Manager$2;->val$authTokenType:Ljava/lang/String;

    iget-object v3, p0, Lcom/apportable/account/Manager$2;->val$options:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/apportable/account/Manager$2;->this$0:Lcom/apportable/account/Manager;

    # getter for: Lcom/apportable/account/Manager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/apportable/account/Manager;->access$100(Lcom/apportable/account/Manager;)Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    iget-object v5, p0, Lcom/apportable/account/Manager$2;->val$callback:Lcom/apportable/account/Callback;

    iget-object v6, p0, Lcom/apportable/account/Manager$2;->this$0:Lcom/apportable/account/Manager;

    # getter for: Lcom/apportable/account/Manager;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/apportable/account/Manager;->access$000(Lcom/apportable/account/Manager;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/apportable/account/Manager$2;->val$callback:Lcom/apportable/account/Callback;

    invoke-virtual {v1, v0}, Lcom/apportable/account/Callback;->run(Landroid/accounts/AccountManagerFuture;)V

    .line 53
    :cond_0
    return-void
.end method
