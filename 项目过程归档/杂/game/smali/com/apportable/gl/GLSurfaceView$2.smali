.class Lcom/apportable/gl/GLSurfaceView$2;
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
    .line 103
    iput-object p1, p0, Lcom/apportable/gl/GLSurfaceView$2;->this$0:Lcom/apportable/gl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/apportable/gl/GLSurfaceView$2;->this$0:Lcom/apportable/gl/GLSurfaceView;

    const/4 v1, 0x1

    # setter for: Lcom/apportable/gl/GLSurfaceView;->mCanDispatchDraw:Z
    invoke-static {v0, v1}, Lcom/apportable/gl/GLSurfaceView;->access$702(Lcom/apportable/gl/GLSurfaceView;Z)Z

    .line 107
    return-void
.end method
