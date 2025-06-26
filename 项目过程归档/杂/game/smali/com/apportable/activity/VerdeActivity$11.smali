.class Lcom/apportable/activity/VerdeActivity$11;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$11;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$11;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityDestroy(Lcom/apportable/activity/VerdeActivity;)V

    .line 414
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnDestroy()V
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$1300()V

    .line 415
    return-void
.end method
