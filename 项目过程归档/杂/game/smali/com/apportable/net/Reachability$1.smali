.class Lcom/apportable/net/Reachability$1;
.super Ljava/lang/Object;
.source "Reachability.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/net/Reachability;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/net/Reachability;


# direct methods
.method constructor <init>(Lcom/apportable/net/Reachability;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    iget-object v1, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    # getter for: Lcom/apportable/net/Reachability;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/apportable/net/Reachability;->access$000(Lcom/apportable/net/Reachability;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/apportable/net/Reachability;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 55
    iget-object v0, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    # getter for: Lcom/apportable/net/Reachability;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/apportable/net/Reachability;->access$000(Lcom/apportable/net/Reachability;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/apportable/net/Reachability$1;->this$0:Lcom/apportable/net/Reachability;

    # invokes: Lcom/apportable/net/Reachability;->didStart()V
    invoke-static {v0}, Lcom/apportable/net/Reachability;->access$100(Lcom/apportable/net/Reachability;)V

    .line 57
    return-void
.end method
