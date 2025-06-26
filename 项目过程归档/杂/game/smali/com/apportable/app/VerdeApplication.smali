.class public Lcom/apportable/app/VerdeApplication;
.super Landroid/app/Application;
.source "VerdeApplication.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sApp:Lcom/apportable/app/VerdeApplication;


# instance fields
.field private mGLView:Lcom/apportable/gl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "APPLICATION"

    sput-object v0, Lcom/apportable/app/VerdeApplication;->TAG:Ljava/lang/String;

    .line 21
    invoke-static {}, Lcom/apportable/Lifecycle;->onApplicationConstruct()V

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/app/VerdeApplication;->mGLView:Lcom/apportable/gl/GLSurfaceView;

    .line 25
    sput-object p0, Lcom/apportable/app/VerdeApplication;->sApp:Lcom/apportable/app/VerdeApplication;

    .line 26
    invoke-static {p0}, Lcom/apportable/Lifecycle;->onApplicationInit(Lcom/apportable/app/VerdeApplication;)V

    .line 27
    return-void
.end method

.method public static getApplication()Lcom/apportable/app/VerdeApplication;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/apportable/app/VerdeApplication;->sApp:Lcom/apportable/app/VerdeApplication;

    return-object v0
.end method

.method private loadLifecycleListeners()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    const-string v3, "apportable.app.lifecycle_listeners"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    const-string v0, "apportable.app.lifecycle_listeners"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 80
    :goto_0
    if-eqz v3, :cond_0

    .line 81
    array-length v4, v3

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 83
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/Lifecycle$Listener;

    .line 85
    invoke-static {v0}, Lcom/apportable/Lifecycle;->addLifecycleListener(Lcom/apportable/Lifecycle$Listener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    sget-object v6, Lcom/apportable/app/VerdeApplication;->TAG:Ljava/lang/String;

    const-string v7, "Failed to register Lifecycle Listener %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 91
    :cond_0
    return-void

    :cond_1
    move-object v3, v0

    goto :goto_0
.end method


# virtual methods
.method public getSurface()Lcom/apportable/gl/GLSurfaceView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/apportable/app/VerdeApplication;->mGLView:Lcom/apportable/gl/GLSurfaceView;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/apportable/gl/GLSurfaceView;

    invoke-direct {v0, p0}, Lcom/apportable/gl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/app/VerdeApplication;->mGLView:Lcom/apportable/gl/GLSurfaceView;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/apportable/app/VerdeApplication;->mGLView:Lcom/apportable/gl/GLSurfaceView;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 67
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/apportable/Lifecycle;->onApplicationConfigurationChanged(Lcom/apportable/app/VerdeApplication;Landroid/content/res/Configuration;)V

    .line 44
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 45
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 36
    sget-object v0, Lcom/apportable/app/VerdeApplication;->TAG:Ljava/lang/String;

    const-string v1, "Loading lifecycle listeners"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-direct {p0}, Lcom/apportable/app/VerdeApplication;->loadLifecycleListeners()V

    .line 38
    invoke-static {p0}, Lcom/apportable/Lifecycle;->onApplicationCreate(Lcom/apportable/app/VerdeApplication;)V

    .line 39
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/apportable/Lifecycle;->onApplicationLowMemory(Lcom/apportable/app/VerdeApplication;)V

    .line 50
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 51
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 55
    invoke-static {p0}, Lcom/apportable/Lifecycle;->onApplicationTerminate(Lcom/apportable/app/VerdeApplication;)V

    .line 56
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 57
    return-void
.end method
