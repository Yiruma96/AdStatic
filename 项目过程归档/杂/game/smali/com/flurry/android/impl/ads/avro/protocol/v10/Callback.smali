.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;
.super Lcom/flurry/sdk/gw;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/gv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback$1;,
        Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback$Builder;
    }
.end annotation


# static fields
.field public static final SCHEMA$:Lcom/flurry/sdk/fn;


# instance fields
.field public a:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

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

    const-string v1, "{\"type\":\"record\",\"name\":\"Callback\",\"namespace\":\"com.flurry.android.impl.ads.avro.protocol.v10\",\"fields\":[{\"name\":\"event\",\"type\":\"string\"},{\"name\":\"actions\",\"type\":{\"type\":\"array\",\"items\":\"string\"}}]}"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/fn$q;->a(Ljava/lang/String;)Lcom/flurry/sdk/fn;

    move-result-object v0

    sput-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->SCHEMA$:Lcom/flurry/sdk/fn;

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


# virtual methods
.method public a()Lcom/flurry/sdk/fn;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->SCHEMA$:Lcom/flurry/sdk/fn;

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
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->a:Ljava/lang/CharSequence;

    .line 17
    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->b:Ljava/util/List;

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
    check-cast p2, Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->a:Ljava/lang/CharSequence;

    .line 29
    :goto_0
    return-void

    .line 26
    :pswitch_1
    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->b:Ljava/util/List;

    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->a:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Callback;->b:Ljava/util/List;

    return-object v0
.end method
