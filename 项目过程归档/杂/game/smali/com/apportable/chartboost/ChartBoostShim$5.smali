.class final Lcom/apportable/chartboost/ChartBoostShim$5;
.super Ljava/lang/Object;
.source "ChartBoostShim.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/chartboost/ChartBoostShim;->setShouldDisplayLoadingViewForMoreApps(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$shouldDisplay:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/apportable/chartboost/ChartBoostShim$5;->val$shouldDisplay:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/apportable/chartboost/ChartBoostShim$5;->val$shouldDisplay:Z

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->setShouldDisplayLoadingViewForMoreApps(Z)V

    .line 156
    return-void
.end method
