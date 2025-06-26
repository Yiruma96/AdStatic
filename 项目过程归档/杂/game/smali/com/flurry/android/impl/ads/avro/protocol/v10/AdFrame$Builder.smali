.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame$Builder;
.super Lcom/flurry/sdk/gx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/gx",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->SCHEMA$:Lcom/flurry/sdk/fn;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gx;-><init>(Lcom/flurry/sdk/fn;)V

    .line 240
    return-void
.end method
