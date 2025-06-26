.class Lcom/apportable/flurry/FlurryAdsShim$1;
.super Ljava/lang/Object;
.source "FlurryAdsShim.java"

# interfaces
.implements Lcom/flurry/android/FlurryAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/flurry/FlurryAdsShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/flurry/FlurryAdsShim;


# direct methods
.method constructor <init>(Lcom/apportable/flurry/FlurryAdsShim;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/apportable/flurry/FlurryAdsShim$1;->this$0:Lcom/apportable/flurry/FlurryAdsShim;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdClicked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeOnAdClicked(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apportable/flurry/FlurryAdsShim;->access$700(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onAdClosed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdClosed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeOnAdClosed(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apportable/flurry/FlurryAdsShim;->access$100(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onAdOpened(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 113
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdOpened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeOnAdOpened(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apportable/flurry/FlurryAdsShim;->access$800(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onApplicationExit(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationExit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeOnApplicationExit(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apportable/flurry/FlurryAdsShim;->access$200(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public onRenderFailed(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 85
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderFailed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeOnRenderFailed(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apportable/flurry/FlurryAdsShim;->access$400(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onRendered(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 78
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRendered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeOnRendered(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apportable/flurry/FlurryAdsShim;->access$300(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public onVideoCompleted(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 120
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeOnVideoCompleted(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apportable/flurry/FlurryAdsShim;->access$900(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public shouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    .locals 3

    .prologue
    .line 57
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldDisplayAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeShouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    invoke-static {p1, p2}, Lcom/apportable/flurry/FlurryAdsShim;->access$000(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z

    move-result v0

    return v0
.end method

.method public spaceDidFailToReceiveAd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 99
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceDidFailToReceiveAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeSpaceDidFailToReceiveAd(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apportable/flurry/FlurryAdsShim;->access$600(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public spaceDidReceiveAd(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 92
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spaceDidReceiveAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    # invokes: Lcom/apportable/flurry/FlurryAdsShim;->nativeSpaceDidReceiveAd(Ljava/lang/String;)V
    invoke-static {p1}, Lcom/apportable/flurry/FlurryAdsShim;->access$500(Ljava/lang/String;)V

    .line 94
    return-void
.end method
