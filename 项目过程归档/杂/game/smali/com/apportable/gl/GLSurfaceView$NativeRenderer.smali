.class Lcom/apportable/gl/GLSurfaceView$NativeRenderer;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/gl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NativeRenderer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/gl/GLSurfaceView;


# direct methods
.method private constructor <init>(Lcom/apportable/gl/GLSurfaceView;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView$NativeRenderer;->this$0:Lcom/apportable/gl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/apportable/gl/GLSurfaceView$NativeRenderer;-><init>(Lcom/apportable/gl/GLSurfaceView;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .prologue
    .line 58
    # invokes: Lcom/apportable/gl/GLSurfaceView;->nativeOnSurfaceChanged()V
    invoke-static {}, Lcom/apportable/gl/GLSurfaceView;->access$100()V

    .line 59
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 52
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 53
    # invokes: Lcom/apportable/gl/GLSurfaceView;->nativeInit()V
    invoke-static {}, Lcom/apportable/gl/GLSurfaceView;->access$000()V

    .line 54
    return-void
.end method
