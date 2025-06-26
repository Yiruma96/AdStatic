.class final Lcom/apportable/utils/RunLoop$1;
.super Ljava/lang/Object;
.source "RunLoop.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/utils/RunLoop;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 2

    .prologue
    .line 30
    # getter for: Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/apportable/utils/RunLoop;->access$100()Landroid/os/Handler;

    move-result-object v0

    # getter for: Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I
    invoke-static {}, Lcom/apportable/utils/RunLoop;->access$000()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 32
    # getter for: Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I
    invoke-static {}, Lcom/apportable/utils/RunLoop;->access$000()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 33
    # getter for: Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/apportable/utils/RunLoop;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 35
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
