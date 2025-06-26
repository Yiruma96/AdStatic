.class public Lcom/apportable/utils/RunLoop;
.super Ljava/lang/Object;
.source "RunLoop.java"


# static fields
.field private static STOP_MESSAGE:I

.field private static sBlankMessage:Landroid/os/Message;

.field private static sHandler:Landroid/os/Handler;

.field private static unified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apportable/utils/RunLoop;->unified:Z

    .line 16
    const v0, 0x299d85

    sput v0, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 10
    sget v0, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isUnifiedThreadModel()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/apportable/utils/RunLoop;->unified:Z

    return v0
.end method

.method private static native nativeNext(Landroid/os/MessageQueue;)Landroid/os/Message;
.end method

.method public static prepare()V
    .locals 2

    .prologue
    .line 21
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;

    .line 23
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    sput-object v0, Lcom/apportable/utils/RunLoop;->sBlankMessage:Landroid/os/Message;

    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apportable/utils/RunLoop;->unified:Z

    .line 27
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/apportable/utils/RunLoop$1;

    invoke-direct {v1}, Lcom/apportable/utils/RunLoop$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 38
    return-void
.end method

.method public static processMessages()V
    .locals 4

    .prologue
    .line 45
    sget-object v0, Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;

    sget v1, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 47
    sget v1, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 48
    sget-object v1, Lcom/apportable/utils/RunLoop;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 50
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 53
    :goto_0
    invoke-static {v0}, Lcom/apportable/utils/RunLoop;->nativeNext(Landroid/os/MessageQueue;)Landroid/os/Message;

    move-result-object v1

    .line 54
    if-nez v1, :cond_1

    .line 66
    :goto_1
    return-void

    .line 58
    :cond_1
    iget v2, v1, Landroid/os/Message;->what:I

    sget v3, Lcom/apportable/utils/RunLoop;->STOP_MESSAGE:I

    if-ne v2, v3, :cond_2

    .line 59
    invoke-static {v1}, Lcom/apportable/utils/RunLoop;->recycleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 64
    invoke-static {v1}, Lcom/apportable/utils/RunLoop;->recycleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private static recycleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/apportable/utils/RunLoop;->sBlankMessage:Landroid/os/Message;

    invoke-virtual {p0, v0}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 72
    invoke-virtual {p0}, Landroid/os/Message;->recycle()V

    .line 74
    return-void
.end method
