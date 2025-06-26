.class Lcom/apportable/activity/GdbServerService$1;
.super Ljava/lang/Object;
.source "GdbServerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/GdbServerService;->startGdbServer(Ljava/lang/String;I)Ljava/lang/Process;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/GdbServerService;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/apportable/activity/GdbServerService;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apportable/activity/GdbServerService$1;->this$0:Lcom/apportable/activity/GdbServerService;

    iput-object p2, p0, Lcom/apportable/activity/GdbServerService$1;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/apportable/activity/GdbServerService$1;->val$port:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService$1;->this$0:Lcom/apportable/activity/GdbServerService;

    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/apportable/activity/GdbServerService$1;->val$name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tcp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/apportable/activity/GdbServerService$1;->val$port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "--attach"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 70
    # setter for: Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;
    invoke-static {v0, v1}, Lcom/apportable/activity/GdbServerService;->access$002(Lcom/apportable/activity/GdbServerService;Ljava/lang/Process;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    # getter for: Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/activity/GdbServerService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IOException failed to start gdbserver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
