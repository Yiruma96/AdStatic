.class public Lcom/apportable/flurry/FlurryAdsShim;
.super Ljava/lang/Object;
.source "FlurryAdsShim.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FlurryAdsShim"

.field private static shim:Lcom/apportable/flurry/FlurryAdsShim;


# instance fields
.field private flurryAdListener:Lcom/flurry/android/FlurryAdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/flurry/FlurryAdsShim;->shim:Lcom/apportable/flurry/FlurryAdsShim;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/apportable/flurry/FlurryAdsShim$1;

    invoke-direct {v0, p0}, Lcom/apportable/flurry/FlurryAdsShim$1;-><init>(Lcom/apportable/flurry/FlurryAdsShim;)V

    iput-object v0, p0, Lcom/apportable/flurry/FlurryAdsShim;->flurryAdListener:Lcom/flurry/android/FlurryAdListener;

    .line 33
    iget-object v0, p0, Lcom/apportable/flurry/FlurryAdsShim;->flurryAdListener:Lcom/flurry/android/FlurryAdListener;

    invoke-static {v0}, Lcom/flurry/android/FlurryAds;->setAdListener(Lcom/flurry/android/FlurryAdListener;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
    .locals 1

    .prologue
    .line 13
    invoke-static {p0, p1}, Lcom/apportable/flurry/FlurryAdsShim;->nativeShouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/apportable/flurry/FlurryAdsShim;->nativeOnAdClosed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/apportable/flurry/FlurryAdsShim;->nativeOnApplicationExit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/apportable/flurry/FlurryAdsShim;->nativeOnRendered(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/apportable/flurry/FlurryAdsShim;->nativeOnRenderFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/apportable/flurry/FlurryAdsShim;->nativeSpaceDidReceiveAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/apportable/flurry/FlurryAdsShim;->nativeSpaceDidFailToReceiveAd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/apportable/flurry/FlurryAdsShim;->nativeOnAdClicked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/apportable/flurry/FlurryAdsShim;->nativeOnAdOpened(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/apportable/flurry/FlurryAdsShim;->nativeOnVideoCompleted(Ljava/lang/String;)V

    return-void
.end method

.method public static fetchAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;I)V
    .locals 3

    .prologue
    .line 43
    const-string v0, "FlurryAdsShim"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchAd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->FULLSCREEN:Lcom/flurry/android/FlurryAdSize;

    .line 45
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 46
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_TOP:Lcom/flurry/android/FlurryAdSize;

    .line 50
    :cond_0
    :goto_0
    invoke-static {p0, p1, p2, v0}, Lcom/flurry/android/FlurryAds;->fetchAd(Landroid/content/Context;Ljava/lang/String;Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;)V

    .line 51
    return-void

    .line 47
    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 48
    sget-object v0, Lcom/flurry/android/FlurryAdSize;->BANNER_BOTTOM:Lcom/flurry/android/FlurryAdSize;

    goto :goto_0
.end method

.method public static initializeShim()V
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/apportable/flurry/FlurryAdsShim;->shim:Lcom/apportable/flurry/FlurryAdsShim;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/apportable/flurry/FlurryAdsShim;

    invoke-direct {v0}, Lcom/apportable/flurry/FlurryAdsShim;-><init>()V

    sput-object v0, Lcom/apportable/flurry/FlurryAdsShim;->shim:Lcom/apportable/flurry/FlurryAdsShim;

    .line 40
    :cond_0
    return-void
.end method

.method private static native nativeOnAdClicked(Ljava/lang/String;)V
.end method

.method private static native nativeOnAdClosed(Ljava/lang/String;)V
.end method

.method private static native nativeOnAdOpened(Ljava/lang/String;)V
.end method

.method private static native nativeOnApplicationExit(Ljava/lang/String;)V
.end method

.method private static native nativeOnRenderFailed(Ljava/lang/String;)V
.end method

.method private static native nativeOnRendered(Ljava/lang/String;)V
.end method

.method private static native nativeOnVideoCompleted(Ljava/lang/String;)V
.end method

.method private static native nativeShouldDisplayAd(Ljava/lang/String;Lcom/flurry/android/FlurryAdType;)Z
.end method

.method private static native nativeSpaceDidFailToReceiveAd(Ljava/lang/String;)V
.end method

.method private static native nativeSpaceDidReceiveAd(Ljava/lang/String;)V
.end method
