.class Lcom/apportable/account/Manager$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/account/Manager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/account/Manager;


# direct methods
.method constructor <init>(Lcom/apportable/account/Manager;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/apportable/account/Manager$1;->this$0:Lcom/apportable/account/Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/apportable/account/Manager$1;->this$0:Lcom/apportable/account/Manager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/apportable/account/Manager;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/apportable/account/Manager;->access$002(Lcom/apportable/account/Manager;Landroid/os/Handler;)Landroid/os/Handler;

    .line 31
    return-void
.end method
