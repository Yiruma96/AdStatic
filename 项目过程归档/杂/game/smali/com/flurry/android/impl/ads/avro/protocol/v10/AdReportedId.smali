.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;
.super Lcom/flurry/sdk/gw;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$1;,
        Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;
    }
.end annotation


# static fields
.field public static final SCHEMA$:Lcom/flurry/sdk/fn;


# instance fields
.field public a:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/nio/ByteBuffer;
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

    const-string v1, "{\"type\":\"record\",\"name\":\"AdReportedId\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"fields\":[{\"name\":\"type\",\"type\":\"int\"},{\"name\":\"id\",\"type\":\"bytes\"}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fn$q;->a(Ljava/lang/String;)Lcom/flurry/sdk/fn;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;->SCHEMA$:Lcom/flurry/sdk/fn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/flurry/sdk/gw;-><init>()V

    .line 79
    return-void
.end method

.method public static b()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$Builder;-><init>(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId$1;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/fn;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;->SCHEMA$:Lcom/flurry/sdk/fn;

    return-object v0
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 15
    packed-switch p1, :pswitch_data_0

    .line 18
    new-instance v0, Lcom/flurry/sdk/fk;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :pswitch_0
    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 17
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;->b:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 24
    packed-switch p1, :pswitch_data_0

    .line 27
    new-instance v0, Lcom/flurry/sdk/fk;

    const-string v1, "Bad index"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :pswitch_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;->a:I

    .line 29
    :goto_0
    return-void

    .line 26
    :pswitch_1
    check-cast p2, Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;->b:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
