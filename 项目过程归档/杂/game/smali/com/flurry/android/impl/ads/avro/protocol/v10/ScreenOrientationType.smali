.class public final enum Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;",
        ">;"
    }
.end annotation


# static fields
.field public static final SCHEMA$:Lcom/flurry/sdk/fn;

.field public static final enum a:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

.field public static final enum b:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

.field public static final enum c:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

.field private static final synthetic d:[Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->a:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    new-instance v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    new-instance v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    sget-object v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->a:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->b:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->c:Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->d:[Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    .line 10
    new-instance v0, Lcom/flurry/sdk/fn$q;

    invoke-direct {v0}, Lcom/flurry/sdk/fn$q;-><init>()V

    const-string v1, "{\"type\":\"enum\",\"name\":\"ScreenOrientationType\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"symbols\":[\"PORTRAIT\",\"LANDSCAPE\",\"UNKNOWN\"]}"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fn$q;->a(Ljava/lang/String;)Lcom/flurry/sdk/fn;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->SCHEMA$:Lcom/flurry/sdk/fn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    return-object v0
.end method

.method public static values()[Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->d:[Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    invoke-virtual {v0}, [Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/android/impl/ads/avro/protocol/v10/ScreenOrientationType;

    return-object v0
.end method
