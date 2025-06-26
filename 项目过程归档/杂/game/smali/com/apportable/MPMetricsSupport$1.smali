.class final Lcom/apportable/MPMetricsSupport$1;
.super Ljava/lang/Object;
.source "MPMetricsSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/MPMetricsSupport;->getTrackingProperties()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$superProperties:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/apportable/MPMetricsSupport$1;->val$superProperties:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    .line 104
    # invokes: Lcom/apportable/MPMetricsSupport;->getAdvertisingID(Lcom/apportable/activity/VerdeActivity;)Ljava/lang/String;
    invoke-static {v0}, Lcom/apportable/MPMetricsSupport;->access$000(Lcom/apportable/activity/VerdeActivity;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, Lcom/apportable/MPMetricsSupport$1;->val$superProperties:Ljava/util/HashMap;

    const-string v2, "advertising_id"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    return-void
.end method
