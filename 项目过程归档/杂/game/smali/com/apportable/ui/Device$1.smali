.class Lcom/apportable/ui/Device$1;
.super Lcom/apportable/ApportableOrientationEventListener;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Device;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastEvent:J

.field private mCurrentOrientation:I

.field final synthetic this$0:Lcom/apportable/ui/Device;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Device;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/apportable/ui/Device$1;->this$0:Lcom/apportable/ui/Device;

    invoke-direct {p0, p2}, Lcom/apportable/ApportableOrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, -0x2

    iput v0, p0, Lcom/apportable/ui/Device$1;->mCurrentOrientation:I

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/apportable/ui/Device$1;->lastEvent:J

    return-void
.end method


# virtual methods
.method public onOrientationChangedWithCompatibilityAdjustments(I)V
    .locals 6

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    iget v2, p0, Lcom/apportable/ui/Device$1;->mCurrentOrientation:I

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/apportable/ui/Device$1;->this$0:Lcom/apportable/ui/Device;

    # getter for: Lcom/apportable/ui/Device;->mObject:I
    invoke-static {v2}, Lcom/apportable/ui/Device;->access$000(Lcom/apportable/ui/Device;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/apportable/ui/Device$1;->lastEvent:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 59
    iput-wide v0, p0, Lcom/apportable/ui/Device$1;->lastEvent:J

    .line 60
    iput p1, p0, Lcom/apportable/ui/Device$1;->mCurrentOrientation:I

    .line 61
    iget-object v0, p0, Lcom/apportable/ui/Device$1;->this$0:Lcom/apportable/ui/Device;

    iget-object v1, p0, Lcom/apportable/ui/Device$1;->this$0:Lcom/apportable/ui/Device;

    # getter for: Lcom/apportable/ui/Device;->mObject:I
    invoke-static {v1}, Lcom/apportable/ui/Device;->access$000(Lcom/apportable/ui/Device;)I

    move-result v1

    # invokes: Lcom/apportable/ui/Device;->nativeOnOrientationChanged(II)V
    invoke-static {v0, v1, p1}, Lcom/apportable/ui/Device;->access$100(Lcom/apportable/ui/Device;II)V

    .line 63
    :cond_0
    return-void
.end method
