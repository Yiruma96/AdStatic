.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse$Builder;
.super Lcom/flurry/sdk/gx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/gx",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;->SCHEMA$:Lcom/flurry/sdk/fn;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gx;-><init>(Lcom/flurry/sdk/fn;)V

    .line 107
    return-void
.end method
