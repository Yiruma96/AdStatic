.class Lcom/apportable/activity/VerdeActivity$12;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$12;->this$0:Lcom/apportable/activity/VerdeActivity;

    iput-object p2, p0, Lcom/apportable/activity/VerdeActivity$12;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$12;->val$newConfig:Landroid/content/res/Configuration;

    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnConfigurationChanged(Landroid/content/res/Configuration;)V
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$1400(Landroid/content/res/Configuration;)V

    .line 437
    return-void
.end method
