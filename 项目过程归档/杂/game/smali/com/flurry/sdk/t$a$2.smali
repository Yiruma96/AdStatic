.class Lcom/flurry/sdk/t$a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/w$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/t$a;->b(Landroid/view/ViewGroup;Lcom/flurry/android/FlurryAdSize;ZLcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/w$a",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/t$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/t$a;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/flurry/sdk/t$a$2;->a:Lcom/flurry/sdk/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    const/4 v3, 0x0

    const/4 v6, 0x3

    .line 294
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 295
    if-eqz p2, :cond_5

    .line 296
    invoke-static {}, Lcom/flurry/sdk/eo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Lcom/flurry/sdk/jq;

    invoke-direct {v0}, Lcom/flurry/sdk/jq;-><init>()V

    .line 298
    sget-object v2, Lcom/flurry/sdk/ju$a;->m:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/ju$a;Z)Lcom/flurry/sdk/jq;

    .line 299
    sget-object v2, Lcom/flurry/sdk/ju$a;->b:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/ju$a;Z)Lcom/flurry/sdk/jq;

    .line 300
    sget-object v2, Lcom/flurry/sdk/ju$a;->c:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v2, v3}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/ju$a;Z)Lcom/flurry/sdk/jq;

    .line 304
    const/4 v2, 0x3

    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received ad response (injectable): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/jq;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received ad response (not injectable): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;->d()Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_1

    .line 318
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad server responded with configuration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Lcom/flurry/sdk/t$a$2;->a:Lcom/flurry/sdk/t$a;

    iget-object v2, v2, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v2, v0}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;)Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;

    .line 324
    iget-object v2, p0, Lcom/flurry/sdk/t$a$2;->a:Lcom/flurry/sdk/t$a;

    iget-object v2, v2, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v2}, Lcom/flurry/sdk/t;->a(Lcom/flurry/sdk/t;)Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;->c()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v4, v3

    mul-long/2addr v4, v8

    const-wide/16 v6, 0x4b4

    mul-long/2addr v4, v6

    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/Configuration;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v6, v8

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/flurry/android/impl/ads/FlurryAdModule;->a(JJ)V

    .line 327
    iget-object v0, p0, Lcom/flurry/sdk/t$a$2;->a:Lcom/flurry/sdk/t$a;

    iget-object v0, v0, Lcom/flurry/sdk/t$a;->a:Lcom/flurry/sdk/t;

    invoke-static {v0}, Lcom/flurry/sdk/t;->c(Lcom/flurry/sdk/t;)V

    .line 330
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 331
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ad server responded with the following error(s):"

    invoke-static {v0, v2}, Lcom/flurry/sdk/eo;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 333
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/flurry/sdk/eo;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    :catch_0
    move-exception v0

    .line 309
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not serialize ad response for injection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v2, v0}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received ad response (not injectable): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v0, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_2
    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 338
    invoke-virtual {p2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;->b()Ljava/util/List;

    move-result-object v0

    .line 341
    :goto_2
    iget-object v1, p0, Lcom/flurry/sdk/t$a$2;->a:Lcom/flurry/sdk/t$a;

    invoke-static {v1}, Lcom/flurry/sdk/t$a;->a(Lcom/flurry/sdk/t$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 342
    invoke-static {}, Lcom/flurry/sdk/t;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ad server responded but sent no ad units."

    invoke-static {v1, v2}, Lcom/flurry/sdk/eo;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/flurry/sdk/t$a$2;->a:Lcom/flurry/sdk/t$a;

    invoke-static {v1, v0}, Lcom/flurry/sdk/t$a;->a(Lcom/flurry/sdk/t$a;Ljava/util/List;)Ljava/util/List;

    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/t$a$2;->a:Lcom/flurry/sdk/t$a;

    sget-object v1, Lcom/flurry/sdk/t$b;->d:Lcom/flurry/sdk/t$b;

    invoke-static {v0, v1}, Lcom/flurry/sdk/t$a;->a(Lcom/flurry/sdk/t$a;Lcom/flurry/sdk/t$b;)V

    .line 350
    invoke-static {}, Lcom/flurry/sdk/do;->a()Lcom/flurry/sdk/do;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/t$a$2$1;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/t$a$2$1;-><init>(Lcom/flurry/sdk/t$a$2;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/do;->c(Ljava/lang/Runnable;)V

    .line 356
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_3
.end method

.method public bridge synthetic a(ILcom/flurry/sdk/gw;)V
    .locals 0

    .prologue
    .line 291
    check-cast p2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;

    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/t$a$2;->a(ILcom/flurry/android/impl/ads/avro/protocol/v10/AdResponse;)V

    return-void
.end method
