.class public Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
.super Lcom/flurry/sdk/gx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/gx",
        "<",
        "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/CharSequence;

.field private b:Ljava/lang/CharSequence;

.field private c:Ljava/lang/CharSequence;

.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Ljava/lang/CharSequence;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/CharSequence;

.field private x:Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;

.field private y:Z

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 581
    sget-object v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->SCHEMA$:Lcom/flurry/sdk/fn;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gx;-><init>(Lcom/flurry/sdk/fn;)V

    .line 582
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$1;)V
    .locals 0

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x11

    .line 1134
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1135
    iput p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->r:I

    .line 1136
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1137
    return-object p0
.end method

.method public a(J)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 788
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 789
    iput-wide p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->d:J

    .line 790
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 791
    return-object p0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 911
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 912
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

    .line 913
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 914
    return-object p0
.end method

.method public a(Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 837
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 838
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

    .line 839
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 840
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 713
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 714
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a:Ljava/lang/CharSequence;

    .line 715
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 716
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdReportedId;",
            ">;)",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 812
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 813
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->e:Ljava/util/List;

    .line 814
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 815
    return-object p0
.end method

.method public a(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 862
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 863
    iput-boolean p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->g:Z

    .line 864
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 865
    return-object p0
.end method

.method public a()Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;
    .locals 3

    .prologue
    .line 1401
    :try_start_0
    new-instance v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;

    invoke-direct {v2}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;-><init>()V

    .line 1402
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->a:Ljava/lang/CharSequence;

    .line 1403
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b:Ljava/lang/CharSequence;

    :goto_1
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->b:Ljava/lang/CharSequence;

    .line 1404
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c:Ljava/lang/CharSequence;

    :goto_2
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->c:Ljava/lang/CharSequence;

    .line 1405
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->d:J

    :goto_3
    iput-wide v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->d:J

    .line 1406
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->e:Ljava/util/List;

    :goto_4
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->e:Ljava/util/List;

    .line 1407
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

    :goto_5
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->f:Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

    .line 1408
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->g:Z

    :goto_6
    iput-boolean v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->g:Z

    .line 1409
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x7

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->h:Ljava/util/List;

    :goto_7
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->h:Ljava/util/List;

    .line 1410
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

    :goto_8
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->i:Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

    .line 1411
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x9

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->j:Ljava/lang/CharSequence;

    :goto_9
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->j:Ljava/lang/CharSequence;

    .line 1412
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0xa

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->k:Ljava/lang/CharSequence;

    :goto_a
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->k:Ljava/lang/CharSequence;

    .line 1413
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0xb

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->l:Ljava/lang/CharSequence;

    :goto_b
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->l:Ljava/lang/CharSequence;

    .line 1414
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0xc

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->m:Ljava/lang/CharSequence;

    :goto_c
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->m:Ljava/lang/CharSequence;

    .line 1415
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0xd

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->n:Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;

    :goto_d
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->n:Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;

    .line 1416
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0xe

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->o:Ljava/util/Map;

    :goto_e
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->o:Ljava/util/Map;

    .line 1417
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0xf

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->p:Z

    :goto_f
    iput-boolean v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->p:Z

    .line 1418
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x10

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->q:Z

    :goto_10
    iput-boolean v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->q:Z

    .line 1419
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x11

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->r:I

    :goto_11
    iput v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->r:I

    .line 1420
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x12

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->s:Ljava/util/List;

    :goto_12
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->s:Ljava/util/List;

    .line 1421
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x13

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->t:Z

    :goto_13
    iput-boolean v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->t:Z

    .line 1422
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x14

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->u:Ljava/lang/CharSequence;

    :goto_14
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->u:Ljava/lang/CharSequence;

    .line 1423
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x15

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->v:Ljava/util/List;

    :goto_15
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->v:Ljava/util/List;

    .line 1424
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x16

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->w:Ljava/lang/CharSequence;

    :goto_16
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->w:Ljava/lang/CharSequence;

    .line 1425
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x17

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->x:Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;

    :goto_17
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->x:Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;

    .line 1426
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x18

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->y:Z

    :goto_18
    iput-boolean v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->y:Z

    .line 1427
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x19

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->z:Ljava/util/List;

    :goto_19
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->z:Ljava/util/List;

    .line 1428
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x1a

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->A:Z

    :goto_1a
    iput-boolean v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->A:Z

    .line 1429
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/16 v1, 0x1b

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->B:Ljava/util/Map;

    :goto_1b
    iput-object v0, v2, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest;->B:Ljava/util/Map;

    .line 1430
    return-object v2

    .line 1402
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1403
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 1404
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_2

    .line 1405
    :cond_3
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto/16 :goto_3

    .line 1406
    :cond_4
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_4

    .line 1407
    :cond_5
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/Location;

    goto/16 :goto_5

    .line 1408
    :cond_6
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_6

    .line 1409
    :cond_7
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_7

    .line 1410
    :cond_8
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdViewContainer;

    goto/16 :goto_8

    .line 1411
    :cond_9
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_9

    .line 1412
    :cond_a
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_a

    .line 1413
    :cond_b
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_b

    .line 1414
    :cond_c
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_c

    .line 1415
    :cond_d
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TestAds;

    goto/16 :goto_d

    .line 1416
    :cond_e
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0xe

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto/16 :goto_e

    .line 1417
    :cond_f
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0xf

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_f

    .line 1418
    :cond_10
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x10

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_10

    .line 1419
    :cond_11
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x11

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_11

    .line 1420
    :cond_12
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x12

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_12

    .line 1421
    :cond_13
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x13

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_13

    .line 1422
    :cond_14
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_14

    .line 1423
    :cond_15
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x15

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_15

    .line 1424
    :cond_16
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x16

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto/16 :goto_16

    .line 1425
    :cond_17
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x17

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/android/impl/ads/avro/protocol/v10/TargetingOverride;

    goto/16 :goto_17

    .line 1426
    :cond_18
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x18

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_18

    .line 1427
    :cond_19
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x19

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_19

    .line 1428
    :cond_1a
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x1a

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto/16 :goto_1a

    .line 1429
    :cond_1b
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    const/16 v1, 0x1b

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1b

    .line 1431
    :catch_0
    move-exception v0

    .line 1432
    new-instance v1, Lcom/flurry/sdk/fk;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/fk;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 738
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 739
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b:Ljava/lang/CharSequence;

    .line 740
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    .line 741
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x7

    .line 886
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 887
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->h:Ljava/util/List;

    .line 888
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 889
    return-object p0
.end method

.method public b(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 1110
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1111
    iput-boolean p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->q:Z

    .line 1112
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1113
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 763
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 764
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c:Ljava/lang/CharSequence;

    .line 765
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 766
    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/FrequencyCapInfo;",
            ">;)",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x12

    .line 1158
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1159
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->s:Ljava/util/List;

    .line 1160
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1161
    return-object p0
.end method

.method public c(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x13

    .line 1183
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1184
    iput-boolean p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->t:Z

    .line 1185
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1186
    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 936
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 937
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->j:Ljava/lang/CharSequence;

    .line 938
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 939
    return-object p0
.end method

.method public d(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x15

    .line 1232
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1233
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->v:Ljava/util/List;

    .line 1234
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1235
    return-object p0
.end method

.method public d(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x18

    .line 1307
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1308
    iput-boolean p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->y:Z

    .line 1309
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1310
    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 961
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 962
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->k:Ljava/lang/CharSequence;

    .line 963
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 964
    return-object p0
.end method

.method public e(Ljava/util/List;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x19

    .line 1331
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1332
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->z:Ljava/util/List;

    .line 1333
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1334
    return-object p0
.end method

.method public e(Z)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x1a

    .line 1356
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1357
    iput-boolean p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->A:Z

    .line 1358
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1359
    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 986
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 987
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->l:Ljava/lang/CharSequence;

    .line 988
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 989
    return-object p0
.end method

.method public g(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 1011
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1012
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->m:Ljava/lang/CharSequence;

    .line 1013
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1014
    return-object p0
.end method

.method public h(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x14

    .line 1207
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1208
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->u:Ljava/lang/CharSequence;

    .line 1209
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1210
    return-object p0
.end method

.method public i(Ljava/lang/CharSequence;)Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;
    .locals 3

    .prologue
    const/16 v2, 0x16

    .line 1257
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->b()[Lcom/flurry/sdk/fn$f;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {p0, v0, p1}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V

    .line 1258
    iput-object p1, p0, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->w:Ljava/lang/CharSequence;

    .line 1259
    invoke-virtual {p0}, Lcom/flurry/android/impl/ads/avro/protocol/v10/AdRequest$Builder;->c()[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    .line 1260
    return-object p0
.end method
