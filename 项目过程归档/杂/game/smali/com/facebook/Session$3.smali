.class Lcom/facebook/Session$3;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;

.field final synthetic val$exception:Ljava/lang/Exception;

.field final synthetic val$newState:Lcom/facebook/SessionState;


# direct methods
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 1299
    iput-object p1, p0, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;

    iput-object p2, p0, Lcom/facebook/Session$3;->val$newState:Lcom/facebook/SessionState;

    iput-object p3, p0, Lcom/facebook/Session$3;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;

    # getter for: Lcom/facebook/Session;->callbacks:Ljava/util/List;
    invoke-static {v0}, Lcom/facebook/Session;->access$800(Lcom/facebook/Session;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Session$StatusCallback;

    .line 1302
    new-instance v2, Lcom/facebook/Session$3$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/Session$3$1;-><init>(Lcom/facebook/Session$3;Lcom/facebook/Session$StatusCallback;)V

    .line 1309
    iget-object v0, p0, Lcom/facebook/Session$3;->this$0:Lcom/facebook/Session;

    # getter for: Lcom/facebook/Session;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/facebook/Session;->access$900(Lcom/facebook/Session;)Landroid/os/Handler;

    move-result-object v0

    # invokes: Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    invoke-static {v0, v2}, Lcom/facebook/Session;->access$1000(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1311
    :cond_0
    return-void
.end method
