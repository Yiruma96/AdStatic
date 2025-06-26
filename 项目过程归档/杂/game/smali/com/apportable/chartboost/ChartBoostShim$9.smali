.class Lcom/apportable/chartboost/ChartBoostShim$9;
.super Lcom/chartboost/sdk/ChartboostDelegate;
.source "ChartBoostShim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/chartboost/ChartBoostShim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/chartboost/ChartBoostShim;


# direct methods
.method constructor <init>(Lcom/apportable/chartboost/ChartBoostShim;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/apportable/chartboost/ChartBoostShim$9;->this$0:Lcom/apportable/chartboost/ChartBoostShim;

    invoke-direct {p0}, Lcom/chartboost/sdk/ChartboostDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 263
    const-string v0, "ChartBoostShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didCacheInterstitial, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidCacheInterstitial(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public didCacheMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 324
    const-string v0, "ChartBoostShim"

    const-string v1, "didCacheMoreApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidCacheMoreApps(Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 249
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidClickInterstitial(Ljava/lang/String;)V

    .line 250
    const-string v0, "ChartBoostShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didClickInterstitial, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method public didClickMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 310
    const-string v0, "ChartBoostShim"

    const-string v1, "didClickMoreApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidClickMoreApps(Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 242
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidCloseInterstitial(Ljava/lang/String;)V

    .line 243
    const-string v0, "ChartBoostShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didCloseInterstitial, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method public didCloseMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 303
    const-string v0, "ChartBoostShim"

    const-string v1, "didCloseMoreApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidCloseMoreApps(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 235
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidDismissInterstitial(Ljava/lang/String;)V

    .line 236
    const-string v0, "ChartBoostShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didDismissInterstitial, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public didDismissMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 296
    const-string v0, "ChartBoostShim"

    const-string v1, "didDismissMoreApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidDismissMoreApps(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public didDisplayInterstitial(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 256
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidDisplayInterstitial(Ljava/lang/String;)V

    .line 257
    const-string v0, "ChartBoostShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didDisplayInterstitial, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    return-void
.end method

.method public didDisplayMoreApps(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 318
    const-string v0, "ChartBoostShim"

    const-string v1, "didShowMoreApps"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3

    .prologue
    .line 228
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidFailToLoadInterstitial(Ljava/lang/String;I)V

    .line 229
    const-string v0, "ChartBoostShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didFailToLoadInterstitial, location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 3

    .prologue
    .line 289
    const-string v0, "ChartBoostShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didFailToLoadMoreApps, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ordinal()I

    move-result v0

    invoke-static {p1, v0}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidFailToLoadMoreApps(Ljava/lang/String;I)V

    .line 291
    return-void
.end method

.method public didFailToRecordClick(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;)V
    .locals 3

    .prologue
    .line 202
    const-string v0, "ChartBoostShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "didFailToRecordClick location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidFailToRecordClick(Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method public didPauseClickForConfirmation()V
    .locals 4

    .prologue
    .line 194
    invoke-static {}, Lcom/apportable/chartboost/ChartBoostShim;->nativeDidPauseClickForConfirmation()Z

    move-result v0

    .line 195
    const-string v1, "ChartBoostShim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didPauseClickForConfirmation, result= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->didPassAgeGate(Z)V

    .line 197
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 220
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeShouldDisplayInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 221
    const-string v1, "ChartBoostShim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldDisplayInterstitial, location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v0
.end method

.method public shouldDisplayMoreApps(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 281
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeShouldDisplayMoreApps(Ljava/lang/String;)Z

    move-result v0

    .line 282
    const-string v1, "ChartBoostShim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldDisplayMoreApps, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 212
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeShouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    .line 213
    const-string v1, "ChartBoostShim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldRequestInterstitial, location="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v0
.end method

.method public shouldRequestMoreApps(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 273
    invoke-static {p1}, Lcom/apportable/chartboost/ChartBoostShim;->nativeShouldRequestMoreApps(Ljava/lang/String;)Z

    move-result v0

    .line 274
    const-string v1, "ChartBoostShim"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldRequestMoreApps, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return v0
.end method
