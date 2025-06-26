.class Lcom/apportable/activity/BackgroundLibraryLoader$1;
.super Ljava/lang/Object;
.source "BackgroundLibraryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/BackgroundLibraryLoader;->load(Landroid/app/Activity;Lcom/apportable/activity/BackgroundLibraryLoader$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCallingThread:Landroid/os/Handler;

.field final synthetic this$0:Lcom/apportable/activity/BackgroundLibraryLoader;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/BackgroundLibraryLoader;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 30
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->this$0:Lcom/apportable/activity/BackgroundLibraryLoader;

    iput-object p2, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->mCallingThread:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/apportable/LibraryManager;->loadLibraries(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->mCallingThread:Landroid/os/Handler;

    new-instance v2, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;

    invoke-direct {v2, p0, v0}, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;-><init>(Lcom/apportable/activity/BackgroundLibraryLoader$1;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method
