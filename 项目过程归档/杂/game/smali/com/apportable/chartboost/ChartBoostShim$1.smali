.class final Lcom/apportable/chartboost/ChartBoostShim$1;
.super Ljava/lang/Object;
.source "ChartBoostShim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/chartboost/ChartBoostShim;->onCreate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$appSignature:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/apportable/chartboost/ChartBoostShim$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/apportable/chartboost/ChartBoostShim$1;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/apportable/chartboost/ChartBoostShim$1;->val$appSignature:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/apportable/chartboost/ChartBoostShim$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/apportable/chartboost/ChartBoostShim$1;->val$appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/apportable/chartboost/ChartBoostShim$1;->val$appSignature:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Chartboost;->startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    # getter for: Lcom/apportable/chartboost/ChartBoostShim;->shim:Lcom/apportable/chartboost/ChartBoostShim;
    invoke-static {}, Lcom/apportable/chartboost/ChartBoostShim;->access$000()Lcom/apportable/chartboost/ChartBoostShim;

    move-result-object v0

    # getter for: Lcom/apportable/chartboost/ChartBoostShim;->chartboostDelegate:Lcom/chartboost/sdk/ChartboostDelegate;
    invoke-static {v0}, Lcom/apportable/chartboost/ChartBoostShim;->access$100(Lcom/apportable/chartboost/ChartBoostShim;)Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 47
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setImpressionsUseActivities(Z)V

    .line 48
    iget-object v0, p0, Lcom/apportable/chartboost/ChartBoostShim$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;)V

    .line 49
    return-void
.end method
