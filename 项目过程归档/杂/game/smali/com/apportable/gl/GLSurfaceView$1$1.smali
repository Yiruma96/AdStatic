.class Lcom/apportable/gl/GLSurfaceView$1$1;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/gl/GLSurfaceView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/gl/GLSurfaceView$1;


# direct methods
.method constructor <init>(Lcom/apportable/gl/GLSurfaceView$1;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView$1$1;->this$1:Lcom/apportable/gl/GLSurfaceView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$1$1;->this$1:Lcom/apportable/gl/GLSurfaceView$1;

    iget-object v0, v0, Lcom/apportable/gl/GLSurfaceView$1;->this$0:Lcom/apportable/gl/GLSurfaceView;

    invoke-virtual {v0}, Lcom/apportable/gl/GLSurfaceView;->readySurface()V

    .line 97
    return-void
.end method
