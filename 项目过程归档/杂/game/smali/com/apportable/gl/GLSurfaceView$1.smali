.class Lcom/apportable/gl/GLSurfaceView$1;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/gl/GLSurfaceView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/gl/GLSurfaceView;


# direct methods
.method constructor <init>(Lcom/apportable/gl/GLSurfaceView;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    new-instance v1, Lcom/apportable/gl/GLSurfaceView$EglHelper;

    iget-object v2, p0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/apportable/gl/GLSurfaceView$EglHelper;-><init>(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$1;)V

    # setter for: Lcom/apportable/gl/GLSurfaceView;->mEglHelper:Lcom/apportable/gl/GLSurfaceView$EglHelper;
    invoke-static {v0, v1}, Lcom/apportable/gl/GLSurfaceView;->access$502(Lcom/apportable/gl/GLSurfaceView;Lcom/apportable/gl/GLSurfaceView$EglHelper;)Lcom/apportable/gl/GLSurfaceView$EglHelper;

    .line 92
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView;->readySurface()V

    .line 93
    new-instance v0, Lcom/apportable/gl/GLSurfaceView$1$1;

    invoke-direct {v0, p0}, Lcom/apportable/gl/GLSurfaceView$1$1;-><init>(Lcom/apportable/gl/GLSurfaceView$1;)V

    invoke-static {v0}, Lcom/apportable/MainThread;->addTickAction(Ljava/lang/Runnable;)V

    .line 99
    invoke-static {}, Lcom/apportable/MainThread;->goNative()V

    .line 100
    return-void
.end method
