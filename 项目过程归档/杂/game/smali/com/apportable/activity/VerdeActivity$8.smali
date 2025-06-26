.class Lcom/apportable/activity/VerdeActivity$8;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onPause()V
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
    .line 365
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$8;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 368
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnPause()V
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$1000()V

    .line 369
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$8;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityPause(Lcom/apportable/activity/VerdeActivity;)V

    .line 370
    return-void
.end method
