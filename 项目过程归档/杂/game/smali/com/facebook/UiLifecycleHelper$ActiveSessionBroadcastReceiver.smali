.class Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiLifecycleHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/UiLifecycleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActiveSessionBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/UiLifecycleHelper;


# direct methods
.method private constructor <init>(Lcom/facebook/UiLifecycleHelper;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/UiLifecycleHelper;Lcom/facebook/UiLifecycleHelper$1;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;-><init>(Lcom/facebook/UiLifecycleHelper;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 240
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/facebook/UiLifecycleHelper$ActiveSessionBroadcastReceiver;->this$0:Lcom/facebook/UiLifecycleHelper;

    # getter for: Lcom/facebook/UiLifecycleHelper;->callback:Lcom/facebook/Session$StatusCallback;
    invoke-static {v1}, Lcom/facebook/UiLifecycleHelper;->access$100(Lcom/facebook/UiLifecycleHelper;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0
.end method
