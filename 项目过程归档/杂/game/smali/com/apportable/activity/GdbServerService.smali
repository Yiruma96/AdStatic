.class public Lcom/apportable/activity/GdbServerService;
.super Landroid/app/Service;
.source "GdbServerService.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mProcess:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "GdbServerService"

    sput-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/apportable/activity/GdbServerService;Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private killGdbServer(I)V
    .locals 5

    .prologue
    .line 86
    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "kill"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-9"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    const-string v1, "IOException failed to kill gdbserver"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startGdbServer(Ljava/lang/String;I)Ljava/lang/Process;
    .locals 2

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/apportable/activity/GdbServerService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/apportable/activity/GdbServerService$1;-><init>(Lcom/apportable/activity/GdbServerService;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 15
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    const-string v1, "in OnDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 23
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 24
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 27
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/apportable/activity/GdbServerService;->mProcess:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 30
    :cond_0
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    const-string v0, "gdbserver_port"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get gdbserver_port"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 36
    :cond_1
    const-string v1, "gdbserver_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get gdbserver_name"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/apportable/activity/GdbServerService;->startGdbServer(Ljava/lang/String;I)Ljava/lang/Process;

    goto :goto_0

    .line 44
    :cond_3
    const-string v1, "kill"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 45
    const-string v0, "gdbserver_pid"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 46
    if-nez v0, :cond_4

    .line 47
    sget-object v0, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to get gdbserver_pid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 49
    :cond_4
    invoke-direct {p0, v0}, Lcom/apportable/activity/GdbServerService;->killGdbServer(I)V

    goto :goto_0

    .line 53
    :cond_5
    sget-object v1, Lcom/apportable/activity/GdbServerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
