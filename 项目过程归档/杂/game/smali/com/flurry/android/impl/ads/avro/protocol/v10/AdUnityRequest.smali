.class public interface abstract Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnityRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnityRequest$Callback;
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/fm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "{\"protocol\":\"AdUnityRequest\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"types\":[{\"type\":\"record\",\"name\":\"AdReportedId\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]},{\"type\":\"record\",\"name\":\"Location\",\"fields\":[{\"name\":\"lat\",\"type\":\"float\",\"default\":0.0},{\"name\":\"lon\",\"type\":\"float\",\"default\":0.0}]},{\"type\":\"enum\",\"name\":\"ScreenOrientationType\",\"symbols\":[\"PORTRAIT\",\"LANDSCAPE\",\"UNKNOWN\"]},{\"type\":\"record\",\"name\":\"AdViewContainer\",\"fields\":[{\"name\":\"viewWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"viewHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"screenWidth\",\"type\":\"int\",\"default\":0},{\"name\":\"screenHeight\",\"type\":\"int\",\"default\":0},{\"name\":\"density\",\"type\":\"float\",\"default\":1.0},{\"name\":\"screenOrientation\",\"type\":\"ScreenOrientationType\",\"default\":\"UNKNOWN\"}]},{\"type\":\"record\",\"name\":\"TestAds\",\"fields\":[{\"name\":\"adspacePlacement\",\"type\":\"int\",\"default\":0}]},{\"type\":\"record\",\"name\":\"FrequencyCapInfo\",\"fields\":[{\"name\":\"idHash\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"serveTime\",\"type\":\"long\"},{\"name\":\"expirationTime\",\"type\":\"long\"},{\"name\":\"views\",\"type\":\"int\"},{\"name\":\"newCap\",\"type\":\"int\"},{\"name\":\"previousCap\",\"type\":\"int\"},{\"name\":\"previousCapType\",\"type\":\"int\"}]},{\"type\":\"record\",\"name\":\"TargetingOverride\",\"fields\":[{\"name\":\"ageRange\",\"type\":\"int\",\"default\":-2},{\"name\":\"gender\",\"type\":\"int\",\"default\":-2},{\"name\":\"personas\",\"type\":{\"type\":\"array\",\"items\":\"int\"},\"default\":[]}]},{\"type\":\"record\",\"name\":\"AdRequest\",\"fields\":[{\"name\":\"apiKey\",\"type\":\"string\"},{\"name\":\"agentVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"adSpaceName\",\"type\":\"string\"},{\"name\":\"sessionId\",\"type\":\"long\"},{\"name\":\"adReportedIds\",\"type\":{\"type\":\"array\",\"items\":\"AdReportedId\"}},{\"name\":\"location\",\"type\":\"Location\",\"default\":\"null\"},{\"name\":\"testDevice\",\"type\":\"boolean\",\"default\":false},{\"name\":\"bindings\",\"type\":{\"type\":\"array\",\"items\":\"int\"}},{\"name\":\"adViewContainer\",\"type\":\"AdViewContainer\",\"default\":\"null\"},{\"name\":\"locale\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"timezone\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"osVersion\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"devicePlatform\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"testAds\",\"type\":\"TestAds\",\"default\":\"null\"},{\"name\":\"keywords\",\"type\":{\"type\":\"map\",\"values\":\"string\"},\"default\":[]},{\"name\":\"refresh\",\"type\":\"boolean\",\"default\":false},{\"name\":\"canDoSKAppStore\",\"type\":\"boolean\",\"default\":false},{\"name\":\"networkStatus\",\"type\":\"int\",\"default\":1},{\"name\":\"frequencyCapInfos\",\"type\":{\"type\":\"array\",\"items\":\"FrequencyCapInfo\"}},{\"name\":\"adTrackingEnabled\",\"type\":\"boolean\"},{\"name\":\"preferredLanguage\",\"type\":\"string\"},{\"name\":\"bcat\",\"type\":{\"type\":\"array\",\"items\":\"string\"}},{\"name\":\"userAgent\",\"type\":\"string\",\"default\":\"null\"},{\"name\":\"targetingOverride\",\"type\":\"TargetingOverride\",\"default\":[]},{\"name\":\"sendConfiguration\",\"type\":\"boolean\",\"default\":false},{\"name\":\"origins\",\"type\":{\"type\":\"array\",\"items\":\"string\"},\"default\":[]},{\"name\":\"renderTime\",\"type\":\"boolean\",\"default\":false},{\"name\":\"clientSideRtbPayload\",\"type\":{\"type\":\"map\",\"values\":\"string\"},\"default\":[]}]}],\"messages\":{}}"

    invoke-static {v0}, Lcom/flurry/sdk/fm;->a(Ljava/lang/String;)Lcom/flurry/sdk/fm;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnityRequest;->a:Lcom/flurry/sdk/fm;

    return-void
.end method
