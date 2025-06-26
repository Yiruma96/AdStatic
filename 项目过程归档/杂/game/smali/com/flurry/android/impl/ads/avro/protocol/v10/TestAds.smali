.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;
.super Lcom/flurry/sdk/gw;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$1;,
        Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$Builder;
    }
.end annotation


# static fields
.field public static final SCHEMA$:Lcom/flurry/sdk/fn;


# instance fields
.field public a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/flurry/sdk/fn$q;

    invoke-direct {v0}, Lcom/flurry/sdk/fn$q;-><init>()V

    const-string v1, "{\"type\":\"record\",\"name\":\"TestAds\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"fields\":[{\"name\":\"adspacePlacement\",\"type\":\"int\",\"default\":0}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fn$q;->a(Ljava/lang/String;)Lcom/flurry/sdk/fn;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;->SCHEMA$:Lcom/flurry/sdk/fn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/sdk/gw;-><init>()V

    .line 61
    return-void
.end method

.method public static b()Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$Builder;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$Builder;-><init>(Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/fn;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;->SCHEMA$:Lcom/flurry/sdk/fn;

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 14
    packed-switch p1, :pswitch_data_0

    .line 16
    new-instance v0, Lcom/flurry/sdk/fk;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :pswitch_0
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 22
    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance v0, Lcom/flurry/sdk/fk;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;->a:I

    .line 26
    return-void

    .line 22
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
