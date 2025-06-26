.class public Lcom/flurry/sdk/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ao$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ap$a;,
        Lcom/flurry/sdk/ap$c;,
        Lcom/flurry/sdk/ap$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:Lcom/flurry/sdk/ap;


# instance fields
.field a:Lcom/flurry/sdk/ao;

.field private e:J

.field private f:J

.field private g:Z

.field private h:Z

.field private final i:Lcom/flurry/sdk/dt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/dt",
            "<",
            "Lcom/flurry/sdk/ap$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/flurry/sdk/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Lcom/flurry/sdk/dt;

    invoke-direct {v0}, Lcom/flurry/sdk/dt;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    .line 132
    return-void
.end method

.method private a(Lcom/flurry/sdk/ap$a;Lcom/flurry/sdk/ar;)Lcom/flurry/sdk/ap$a;
    .locals 1

    .prologue
    .line 428
    if-nez p1, :cond_1

    .line 429
    sget-object p1, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    .line 461
    :cond_0
    :goto_0
    return-object p1

    .line 432
    :cond_1
    if-eqz p2, :cond_0

    .line 436
    sget-object v0, Lcom/flurry/sdk/ar;->g:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 438
    sget-object p1, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 439
    :cond_2
    sget-object v0, Lcom/flurry/sdk/ar;->f:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 441
    sget-object v0, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    sget-object p1, Lcom/flurry/sdk/ap$a;->e:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 444
    :cond_3
    sget-object v0, Lcom/flurry/sdk/ar;->a:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/flurry/sdk/ar;->e:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 446
    :cond_4
    sget-object v0, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/flurry/sdk/ap$a;->e:Lcom/flurry/sdk/ap$a;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 447
    sget-object p1, Lcom/flurry/sdk/ap$a;->c:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 449
    :cond_5
    sget-object v0, Lcom/flurry/sdk/ar;->b:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/flurry/sdk/ar;->c:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 451
    :cond_6
    sget-object v0, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    :cond_7
    sget-object p1, Lcom/flurry/sdk/ap$a;->b:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 454
    :cond_8
    sget-object v0, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    invoke-virtual {v0, p2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    sget-object v0, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ap$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    sget-object p1, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/ap;
    .locals 2

    .prologue
    .line 114
    const-class v1, Lcom/flurry/sdk/ap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/flurry/sdk/ap;->d:Lcom/flurry/sdk/ap;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/flurry/sdk/ap;

    invoke-direct {v0}, Lcom/flurry/sdk/ap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/ap;->d:Lcom/flurry/sdk/ap;

    .line 117
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ap;->d:Lcom/flurry/sdk/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 774
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-object v0

    .line 778
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 782
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->d()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 783
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 784
    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 809
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v3

    .line 828
    :cond_1
    :goto_0
    return-object v0

    .line 813
    :cond_2
    const-string v0, ""

    .line 816
    :try_start_0
    const-string v1, "\\s*-\\s*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 818
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, p1

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 819
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 820
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 821
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v2, v0

    move-object v0, v1

    .line 824
    goto :goto_1

    .line 827
    :catch_0
    move-exception v0

    move-object v0, v3

    .line 828
    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method private a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 371
    if-nez p1, :cond_1

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 375
    :cond_1
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v2

    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Ljava/lang/String;)Lcom/flurry/sdk/ci;

    move-result-object v2

    .line 376
    if-eqz v2, :cond_2

    move v0, v1

    .line 377
    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 381
    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)Z
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 842
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    const/4 v0, 0x0

    .line 865
    :goto_0
    return v0

    .line 847
    :cond_0
    sget-object v0, Lcom/flurry/sdk/ay;->a:Lcom/flurry/sdk/ay;

    .line 849
    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 850
    if-eqz v1, :cond_1

    .line 851
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 852
    sget-object v0, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: asset is a video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 853
    sget-object v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/ay;

    .line 865
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/flurry/sdk/ao;->a(Ljava/lang/String;Lcom/flurry/sdk/ay;J)Z

    move-result v0

    goto :goto_0

    .line 854
    :cond_2
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 855
    sget-object v0, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: asset is an image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 856
    sget-object v0, Lcom/flurry/sdk/ay;->c:Lcom/flurry/sdk/ay;

    goto :goto_1

    .line 857
    :cond_3
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 858
    sget-object v0, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precaching: asset is text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 859
    sget-object v0, Lcom/flurry/sdk/ay;->d:Lcom/flurry/sdk/ay;

    goto :goto_1

    .line 861
    :cond_4
    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: could not identify media type for asset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 791
    if-nez p1, :cond_0

    move v0, v1

    .line 805
    :goto_0
    return v0

    .line 795
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 796
    goto :goto_0

    .line 799
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 800
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 801
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 805
    goto :goto_0
.end method

.method private b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 749
    invoke-static {}, Lcom/flurry/android/impl/ads/FlurryAdModule;->getInstance()Lcom/flurry/android/impl/ads/FlurryAdModule;

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->g()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/android/impl/ads/FlurryAdModule;->b(Ljava/lang/String;)Lcom/flurry/sdk/ci;

    move-result-object v0

    .line 750
    if-eqz v0, :cond_0

    .line 751
    invoke-virtual {v0}, Lcom/flurry/sdk/ci;->f()Ljava/lang/String;

    move-result-object v0

    .line 754
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 758
    if-nez p1, :cond_1

    .line 770
    :cond_0
    :goto_0
    return-object v0

    .line 762
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 766
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 767
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->c()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 518
    iget-boolean v1, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v1, :cond_1

    .line 531
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 526
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v3, "Precaching: Saving local asset for adUnit."

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 527
    sget-object v1, Lcom/flurry/sdk/ar;->d:Lcom/flurry/sdk/ar;

    iget-object v2, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v2, p1}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/ar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->e(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 833
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 869
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    .line 911
    :cond_0
    :goto_0
    return v0

    .line 873
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v1, "fileStreamCacheDownloaderTmp"

    invoke-static {v1}, Lcom/flurry/sdk/ce;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 880
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 902
    :goto_1
    invoke-static {v0}, Lcom/flurry/sdk/fe;->a(Ljava/io/Closeable;)V

    .line 903
    invoke-static {v1}, Lcom/flurry/sdk/fe;->a(Ljava/io/Closeable;)V

    move v0, v3

    .line 907
    :goto_2
    if-nez v0, :cond_0

    .line 908
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 883
    :cond_2
    :try_start_1
    invoke-static {v4}, Lcom/flurry/sdk/fd;->a(Ljava/io/File;)Z

    move-result v1

    .line 884
    if-nez v1, :cond_3

    .line 885
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Precaching: Error creating directory to save tmp file:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 899
    :catch_0
    move-exception v1

    move-object v3, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 900
    :goto_3
    const/4 v5, 0x6

    :try_start_2
    sget-object v6, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Precaching: Error saving temp file for url:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7, v0}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 902
    invoke-static {v1}, Lcom/flurry/sdk/fe;->a(Ljava/io/Closeable;)V

    .line 903
    invoke-static {v3}, Lcom/flurry/sdk/fe;->a(Ljava/io/Closeable;)V

    move v0, v2

    .line 904
    goto :goto_2

    .line 888
    :cond_3
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 889
    :try_start_4
    iget-object v5, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v5, p1}, Lcom/flurry/sdk/ao;->c(Ljava/lang/String;)Lcom/flurry/sdk/aw$b;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 890
    if-eqz v0, :cond_4

    .line 891
    :try_start_5
    invoke-virtual {v0}, Lcom/flurry/sdk/aw$b;->a()Ljava/io/InputStream;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/flurry/sdk/fe;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 892
    const/4 v5, 0x3

    sget-object v6, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Precaching: Temp asset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " saved to :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 899
    :catch_1
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_3

    .line 894
    :cond_4
    const/4 v5, 0x3

    sget-object v6, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Precaching: Temp asset not saved.  Could not open cache reader: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 902
    :catchall_0
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    :goto_4
    invoke-static {v1}, Lcom/flurry/sdk/fe;->a(Ljava/io/Closeable;)V

    .line 903
    invoke-static {v3}, Lcom/flurry/sdk/fe;->a(Ljava/io/Closeable;)V

    throw v0

    .line 902
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v3, v1

    move-object v1, v0

    move-object v0, v2

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 899
    :catch_2
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_3
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    invoke-static {p1}, Lcom/flurry/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 357
    if-nez p1, :cond_0

    move v0, v1

    .line 367
    :goto_0
    return v0

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 362
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 367
    goto :goto_0
.end method

.method private h(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 8

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 608
    :cond_0
    return-void

    .line 566
    :cond_1
    if-eqz p1, :cond_0

    .line 570
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 571
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v1

    .line 572
    sget-object v3, Lcom/flurry/sdk/ap$c;->a:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 576
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 580
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->j()Ljava/util/List;

    move-result-object v1

    .line 581
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->k()Ljava/util/List;

    move-result-object v3

    .line 583
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 585
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 586
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 590
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v1

    .line 591
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v3, v1}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 592
    invoke-direct {p0, v1}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)V

    .line 595
    :cond_4
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, v3, v1}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 597
    invoke-direct {p0, v1}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)V

    .line 600
    :cond_5
    sget-object v4, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    .line 601
    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 602
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v3, v6}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 603
    invoke-direct {p0, v6}, Lcom/flurry/sdk/ap;->d(Ljava/lang/String;)V

    .line 600
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/ap$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v1, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    invoke-virtual {v0}, Lcom/flurry/sdk/dt;->a()Ljava/util/List;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 5

    .prologue
    .line 553
    :try_start_0
    const-string v0, "fileStreamCacheDownloaderTmp"

    invoke-static {v0}, Lcom/flurry/sdk/ce;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 554
    const/4 v1, 0x3

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Cleaning temp asset directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {v0}, Lcom/flurry/sdk/fd;->b(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_0
    return-void

    .line 556
    :catch_0
    move-exception v0

    .line 557
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Precaching: Error cleaning temp asset directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 535
    iget-boolean v1, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v1, :cond_1

    .line 548
    :cond_0
    :goto_0
    return-object v0

    .line 539
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    new-instance v1, Ljava/io/File;

    const-string v2, "fileStreamCacheDownloaderTmp"

    invoke-static {v2}, Lcom/flurry/sdk/ce;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 545
    goto :goto_0
.end method

.method public declared-synchronized a(JJ)V
    .locals 3

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Initializing AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-wide p1, p0, Lcom/flurry/sdk/ap;->e:J

    .line 142
    iput-wide p3, p0, Lcom/flurry/sdk/ap;->f:J

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/flurry/sdk/ap$b;)V
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dt;->a(Ljava/lang/Object;)V

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ao;->a(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ao;->a(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/flurry/sdk/ar;)V
    .locals 4

    .prologue
    .line 921
    :try_start_0
    invoke-direct {p0}, Lcom/flurry/sdk/ap;->i()Ljava/util/List;

    move-result-object v0

    .line 922
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/ap$b;

    .line 923
    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/ap$b;->a(Ljava/lang/String;Lcom/flurry/sdk/ar;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 925
    :catch_0
    move-exception v0

    .line 926
    const/4 v1, 0x6

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3, v0}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 928
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    if-eqz p2, :cond_0

    .line 262
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Handling ad response"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    iget-wide v0, p0, Lcom/flurry/sdk/ap;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x5

    move v1, v0

    .line 270
    :goto_1
    const/4 v0, 0x0

    .line 271
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 272
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ap;->e(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)I

    move-result v0

    add-int/2addr v0, v2

    .line 273
    if-ge v0, v1, :cond_0

    move v2, v0

    .line 274
    goto :goto_2

    .line 268
    :cond_2
    iget-wide v0, p0, Lcom/flurry/sdk/ap;->e:J

    iget-wide v2, p0, Lcom/flurry/sdk/ap;->f:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    move v1, v0

    goto :goto_1

    .line 278
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 330
    :goto_0
    return v0

    .line 315
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 316
    goto :goto_0

    .line 319
    :cond_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 320
    goto :goto_0

    .line 323
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 324
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v0

    .line 325
    sget-object v3, Lcom/flurry/sdk/ap$c;->b:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/flurry/sdk/ap$c;->c:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 326
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 330
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 724
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    .line 729
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/ao;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 308
    :cond_0
    return-void

    .line 287
    :cond_1
    if-eqz p2, :cond_0

    .line 291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 297
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->h(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V

    .line 296
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 302
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;

    .line 303
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ap;->e(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v1

    .line 304
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    move v1, v0

    .line 305
    goto :goto_1

    :cond_3
    move v0, v2

    .line 303
    goto :goto_2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z

    return v0
.end method

.method public b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 353
    :goto_0
    return v0

    .line 338
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 339
    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 343
    goto :goto_0

    .line 346
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 347
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v0

    .line 348
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/flurry/sdk/ap$c;->b:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v0}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 353
    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/ap$b;)Z
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->i:Lcom/flurry/sdk/dt;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dt;->b(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Lcom/flurry/sdk/ap$a;
    .locals 8

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 389
    sget-object v1, Lcom/flurry/sdk/ap$a;->f:Lcom/flurry/sdk/ap$a;

    .line 424
    :cond_0
    :goto_0
    return-object v1

    .line 392
    :cond_1
    if-nez p1, :cond_2

    .line 393
    sget-object v1, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 396
    :cond_2
    invoke-direct {p0, p1}, Lcom/flurry/sdk/ap;->g(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 397
    sget-object v1, Lcom/flurry/sdk/ap$a;->d:Lcom/flurry/sdk/ap$a;

    goto :goto_0

    .line 400
    :cond_3
    sget-object v0, Lcom/flurry/sdk/ap$a;->a:Lcom/flurry/sdk/ap$a;

    .line 402
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 403
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 407
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 409
    iget-object v4, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v4, v2}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap$a;Lcom/flurry/sdk/ar;)Lcom/flurry/sdk/ap$a;

    move-result-object v1

    .line 412
    :cond_5
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 414
    iget-object v4, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v4, v2}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap$a;Lcom/flurry/sdk/ar;)Lcom/flurry/sdk/ap$a;

    move-result-object v1

    .line 417
    :cond_6
    sget-object v4, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v6, v4, v2

    .line 418
    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 419
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 420
    iget-object v7, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v7, v6}, Lcom/flurry/sdk/ao;->b(Ljava/lang/String;)Lcom/flurry/sdk/ar;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/sdk/ap$a;Lcom/flurry/sdk/ar;)Lcom/flurry/sdk/ap$a;

    move-result-object v1

    .line 417
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized c()V
    .locals 7

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Starting AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/flurry/sdk/ao;

    const-string v1, "fileStreamCacheDownloader"

    iget-wide v2, p0, Lcom/flurry/sdk/ap;->e:J

    iget-wide v4, p0, Lcom/flurry/sdk/ap;->f:J

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/ao;-><init>(Ljava/lang/String;JJZ)V

    iput-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/ao;->a(Lcom/flurry/sdk/ao$a;)V

    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->a()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 3

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 195
    :goto_0
    monitor-exit p0

    return-void

    .line 190
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Stopping AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->b()V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 514
    :goto_0
    return v0

    .line 477
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 478
    goto :goto_0

    .line 481
    :cond_1
    const/4 v0, 0x3

    sget-object v2, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v3, "Precaching: Saving local assets for adUnit."

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-direct {p0}, Lcom/flurry/sdk/ap;->j()V

    .line 485
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 486
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 490
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 492
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ap;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 493
    goto :goto_0

    .line 497
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v2

    .line 498
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 499
    invoke-direct {p0, v2}, Lcom/flurry/sdk/ap;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 500
    goto :goto_0

    .line 504
    :cond_4
    sget-object v4, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v4, v2

    .line 505
    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 506
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 507
    invoke-direct {p0, v6}, Lcom/flurry/sdk/ap;->c(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    move v0, v1

    .line 508
    goto :goto_0

    .line 504
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 514
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)I
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 611
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 670
    :cond_0
    :goto_0
    return v2

    .line 615
    :cond_1
    if-eqz p1, :cond_0

    .line 621
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 622
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v3

    .line 623
    sget-object v5, Lcom/flurry/sdk/ap$c;->a:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v5, v3}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 627
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 631
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->j()Ljava/util/List;

    move-result-object v3

    .line 632
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->k()Ljava/util/List;

    move-result-object v5

    .line 633
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->i()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 635
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 637
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 638
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6, v7}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    :goto_3
    move v1, v0

    .line 668
    goto :goto_1

    .line 645
    :cond_5
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v3

    .line 646
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0, v5, v3}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 647
    invoke-direct {p0, v3, v6, v7}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 648
    add-int/lit8 v1, v1, 0x1

    .line 652
    :cond_6
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v3

    .line 653
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0, v5, v3}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 654
    invoke-direct {p0, v3, v6, v7}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 655
    add-int/lit8 v1, v1, 0x1

    .line 659
    :cond_7
    sget-object v8, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v9, v8

    move v3, v2

    :goto_4
    if-ge v3, v9, :cond_a

    aget-object v10, v8, v3

    .line 660
    invoke-direct {p0, v0, v10}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 661
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-direct {p0, v5, v10}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 662
    invoke-direct {p0, v10, v6, v7}, Lcom/flurry/sdk/ap;->a(Ljava/lang/String;J)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 663
    add-int/lit8 v1, v1, 0x1

    .line 659
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    move v2, v1

    .line 670
    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_3
.end method

.method public declared-synchronized e()V
    .locals 3

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 205
    :goto_0
    monitor-exit p0

    return-void

    .line 202
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Pausing AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .locals 3

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    monitor-exit p0

    return-void

    .line 212
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    sget-object v1, Lcom/flurry/sdk/ap;->b:Ljava/lang/String;

    const-string v2, "Precaching: Resuming AssetCacheManager."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/eo;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;)V
    .locals 8

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_1

    .line 721
    :cond_0
    return-void

    .line 678
    :cond_1
    if-eqz p1, :cond_0

    .line 682
    invoke-virtual {p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdUnit;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;

    .line 683
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->h()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/flurry/sdk/ap$c;->a(I)Lcom/flurry/sdk/ap$c;

    move-result-object v1

    .line 684
    sget-object v3, Lcom/flurry/sdk/ap$c;->a:Lcom/flurry/sdk/ap$c;

    invoke-virtual {v3, v1}, Lcom/flurry/sdk/ap$c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 688
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 692
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->j()Ljava/util/List;

    move-result-object v1

    .line 693
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->k()Ljava/util/List;

    move-result-object v3

    .line 694
    invoke-virtual {v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;->i()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 696
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 698
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 699
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_3
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->b(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v1

    .line 704
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-direct {p0, v3, v1}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 705
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;)V

    .line 708
    :cond_4
    invoke-direct {p0, v0}, Lcom/flurry/sdk/ap;->c(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;)Ljava/lang/String;

    move-result-object v1

    .line 709
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, v3, v1}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 710
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;)V

    .line 713
    :cond_5
    sget-object v4, Lcom/flurry/sdk/ap;->c:[Ljava/lang/String;

    array-length v5, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    .line 714
    invoke-direct {p0, v0, v6}, Lcom/flurry/sdk/ap;->a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdFrame;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 715
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0, v3, v6}, Lcom/flurry/sdk/ap;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 716
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/flurry/sdk/ap;->b(Ljava/lang/String;)V

    .line 713
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public g()V
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    .line 737
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->e()V

    goto :goto_0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/aq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    iget-boolean v0, p0, Lcom/flurry/sdk/ap;->h:Z

    if-nez v0, :cond_0

    .line 742
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 745
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ap;->a:Lcom/flurry/sdk/ao;

    invoke-virtual {v0}, Lcom/flurry/sdk/ao;->h()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
