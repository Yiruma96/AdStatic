.class public Lcom/apportable/gl/GLSurfaceView;
.super Landroid/view/SurfaceView;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apportable/gl/GLSurfaceView$EglHelper;,
        Lcom/apportable/gl/GLSurfaceView$DefaultWindowSurfaceFactory;,
        Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;,
        Lcom/apportable/gl/GLSurfaceView$NativeRenderer;
    }
.end annotation


# static fields
.field private static final LOG_EGL:Z = true

.field private static final LOG_PAUSE_RESUME:Z = true

.field private static final LOG_RENDERER:Z = true

.field private static final LOG_RENDERER_DRAW_FRAME:Z = true

.field private static final LOG_SURFACE:Z = true

.field private static final LOG_THREADS:Z = true


# instance fields
.field private volatile mCanDispatchDraw:Z

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

.field private mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

.field private mExited:Z

.field private mFakeLayout:Z

.field private mFixedHeight:I

.field private mFixedWidth:I

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHandler:Landroid/os/Handler;

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mLock:Ljava/lang/Object;

.field private mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

.field private mSizeChanged:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-boolean v3, p0, Lcom/apportable/gl/GLSurfaceView;->mCanDispatchDraw:Z

    .line 793
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    .line 794
    iput-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 796
    iput-boolean v4, p0, Lcom/apportable/gl/GLSurfaceView;->mSizeChanged:Z

    .line 802
    iput v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    .line 803
    iput v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    .line 70
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 71
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 72
    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 74
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "apportable.opengles2"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x2

    iput v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextClientVersion:I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 80
    new-instance v0, Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lcom/apportable/gl/GLSurfaceView$DefaultContextFactory;-><init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 83
    new-instance v0, Lcom/apportable/gl/GLSurfaceView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lcom/apportable/gl/GLSurfaceView$DefaultWindowSurfaceFactory;-><init>(Lcom/apportable/gl/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    .line 86
    :cond_2
    new-instance v0, Lcom/apportable/gl/GLSurfaceView$NativeRenderer;

    invoke-direct {v0, p0, v2}, Lcom/apportable/gl/GLSurfaceView$NativeRenderer;-><init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V

    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    .line 88
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/apportable/gl/GLSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/apportable/gl/GLSurfaceView$1;-><init>(Lcom/apportable/gl/GLSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    new-instance v0, Lcom/apportable/gl/GLSurfaceView$2;

    invoke-direct {v0, p0}, Lcom/apportable/gl/GLSurfaceView$2;-><init>(Lcom/apportable/gl/GLSurfaceView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v0, v2, v3}, Lcom/apportable/gl/GLSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/apportable/gl/GLSurfaceView;->nativeInit()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/apportable/gl/GLSurfaceView;->nativeOnSurfaceChanged()V

    return-void
.end method

.method static synthetic access$1000(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLWindowSurfaceFactory:Landroid/opengl/GLSurfaceView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$502(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$EglHelper;)Lcom/apportable/gl/GLSurfaceView$EglHelper;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    return-object p1
.end method

.method static synthetic access$702(Lcom/apportable/gl/GLSurfaceView;Z)Z
    .locals 0

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/apportable/gl/GLSurfaceView;->mCanDispatchDraw:Z

    return p1
.end method

.method static synthetic access$800(Lcom/apportable/gl/GLSurfaceView;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$900(Lcom/apportable/gl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$EGLContextFactory;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEGLContextFactory:Landroid/opengl/GLSurfaceView$EGLContextFactory;

    return-object v0
.end method

.method private static native nativeInit()V
.end method

.method private static native nativeOnSurfaceChanged()V
.end method


# virtual methods
.method public createSharedContext(ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .prologue
    .line 761
    .line 762
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0, p1, p2}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->createSharedContext(ILjavax/microedition/khronos/egl/EGLContext;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 764
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 765
    monitor-exit v1

    .line 766
    return-object v0

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 3

    .prologue
    .line 770
    .line 771
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 772
    :try_start_0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0, p1}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->destroyContext(Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 773
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 774
    monitor-exit v1

    .line 775
    return v0

    .line 774
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 3

    .prologue
    .line 741
    .line 742
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->getPrimaryContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    .line 744
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 745
    monitor-exit v1

    .line 746
    return-object v0

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeCurrentContext(Ljavax/microedition/khronos/egl/EGLContext;)Z
    .locals 3

    .prologue
    .line 751
    .line 752
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 753
    :try_start_0
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0, p1}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->makeCurrentContext(Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    .line 754
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 755
    monitor-exit v1

    .line 756
    return v0

    .line 755
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLayout(ZIIII)V
    .locals 3

    .prologue
    .line 119
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFakeLayout:Z

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    if-lez v0, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFakeLayout:Z

    .line 129
    add-int/lit8 v0, p4, 0x1

    add-int/lit8 v1, p5, 0x1

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/apportable/gl/GLSurfaceView;->layout(IIII)V

    .line 132
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    iget v2, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 133
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/apportable/gl/GLSurfaceView;->layout(IIII)V

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFakeLayout:Z

    .line 136
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public onWindowResize(II)V
    .locals 2

    .prologue
    .line 714
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 715
    :try_start_0
    iput p1, p0, Lcom/apportable/gl/GLSurfaceView;->mWidth:I

    .line 716
    iput p2, p0, Lcom/apportable/gl/GLSurfaceView;->mHeight:I

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mSizeChanged:Z

    .line 718
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 719
    monitor-exit v1

    .line 720
    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public readySurface()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 572
    .line 578
    iget-object v6, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    monitor-enter v6

    move v0, v4

    move v1, v4

    move v2, v4

    .line 581
    :goto_0
    :try_start_0
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    if-nez v5, :cond_1

    .line 583
    const-string v5, "GLThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noticed surfaceView surface lost tid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    if-eqz v5, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->stopEglSurfaceLocked()V

    .line 588
    :cond_0
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    .line 589
    iget-object v5, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 593
    :cond_1
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    if-eqz v5, :cond_2

    .line 595
    const-string v5, "GLThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "noticed surfaceView surface acquired tid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    .line 598
    iget-object v5, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 602
    :cond_2
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lcom/apportable/gl/GLSurfaceView;->mWidth:I

    if-lez v5, :cond_6

    iget v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHeight:I

    if-lez v5, :cond_6

    .line 605
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglContext:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_3

    .line 607
    :try_start_1
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v2}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglContext:Z

    .line 614
    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    move v2, v3

    .line 617
    :cond_3
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglContext:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    if-nez v5, :cond_4

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    move v0, v3

    move v1, v3

    .line 623
    :cond_4
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    if-eqz v5, :cond_6

    .line 624
    iget-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mSizeChanged:Z

    if-eqz v5, :cond_9

    .line 626
    iget v4, p0, Lcom/apportable/gl/GLSurfaceView;->mWidth:I

    .line 627
    iget v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHeight:I

    .line 628
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/apportable/gl/GLSurfaceView;->mSizeChanged:Z

    move v5, v4

    move v4, v0

    .line 630
    :goto_1
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 647
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 649
    if-eqz v1, :cond_7

    .line 651
    const-string v0, "GLThread"

    const-string v1, "egl createSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    iput-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 654
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    if-nez v0, :cond_7

    .line 676
    :cond_5
    :goto_2
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    :try_start_3
    throw v0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 637
    :cond_6
    :try_start_4
    const-string v5, "GLThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "waiting tid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 641
    :try_start_5
    iget-object v5, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 643
    :catch_1
    move-exception v5

    goto/16 :goto_0

    .line 661
    :cond_7
    if-eqz v2, :cond_8

    .line 663
    const-string v0, "GLThread"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    iget-object v2, v2, Lcom/apportable/gl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v0, v1, v2}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 669
    :cond_8
    if-eqz v3, :cond_5

    .line 671
    const-string v0, "GLThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;

    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, v1, v5, v4}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    goto :goto_2

    :cond_9
    move v3, v0

    move v5, v4

    goto/16 :goto_1
.end method

.method public setFixedSize(II)V
    .locals 1

    .prologue
    .line 112
    iput p1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    .line 113
    iput p2, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    .line 114
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 115
    return-void
.end method

.method public stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHaveEglSurface:Z

    .line 567
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 569
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mFakeLayout:Z

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/apportable/gl/GLSurfaceView;->onWindowResize(II)V

    .line 163
    invoke-static {p1, p2, p3, p4}, Lcom/apportable/Lifecycle;->onContextSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mCanDispatchDraw:Z

    goto :goto_0
.end method

.method public surfaceCreated()V
    .locals 4

    .prologue
    .line 679
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 681
    :try_start_0
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceCreated tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    .line 684
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 685
    :goto_0
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 687
    :try_start_1
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 692
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 693
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->surfaceCreated()V

    .line 142
    invoke-static {p1}, Lcom/apportable/Lifecycle;->onContextSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 145
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T210"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T211"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-T215"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedWidth:I

    iget v2, p0, Lcom/apportable/gl/GLSurfaceView;->mFixedHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 148
    :cond_1
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 4

    .prologue
    .line 696
    iget-object v1, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 698
    :try_start_0
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surfaceDestroyed tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mHasSurface:Z

    .line 702
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 703
    :goto_0
    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mWaitingForSurface:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apportable/gl/GLSurfaceView;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 705
    :try_start_1
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 710
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 711
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .prologue
    .line 153
    invoke-static {p1}, Lcom/apportable/Lifecycle;->onContextSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 154
    invoke-virtual {p0}, Lcom/apportable/gl/GLSurfaceView;->surfaceDestroyed()V

    .line 155
    return-void
.end method

.method public swapBuffers()Z
    .locals 4

    .prologue
    .line 724
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView$EglHelper;->swap()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    const-string v0, "Shared Context"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lost context on thread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v0, 0x0

    .line 732
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
