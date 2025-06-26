.class Lcom/apportable/activity/BackgroundLibraryLoader$1$1;
.super Ljava/lang/Object;
.source "BackgroundLibraryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/BackgroundLibraryLoader$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/activity/BackgroundLibraryLoader$1;

.field final synthetic val$loadError:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/apportable/activity/BackgroundLibraryLoader$1;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;->this$1:Lcom/apportable/activity/BackgroundLibraryLoader$1;

    iput-object p2, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;->val$loadError:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;->this$1:Lcom/apportable/activity/BackgroundLibraryLoader$1;

    iget-object v0, v0, Lcom/apportable/activity/BackgroundLibraryLoader$1;->this$0:Lcom/apportable/activity/BackgroundLibraryLoader;

    iget-object v1, p0, Lcom/apportable/activity/BackgroundLibraryLoader$1$1;->val$loadError:Ljava/lang/Throwable;

    # invokes: Lcom/apportable/activity/BackgroundLibraryLoader;->loadFinished(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lcom/apportable/activity/BackgroundLibraryLoader;->access$000(Lcom/apportable/activity/BackgroundLibraryLoader;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method
