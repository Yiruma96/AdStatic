.class public final Lcom/flurry/sdk/sm;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/sm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/flurry/sdk/sm;

    invoke-direct {v0}, Lcom/flurry/sdk/sm;-><init>()V

    sput-object v0, Lcom/flurry/sdk/sm;->a:Lcom/flurry/sdk/sm;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 28
    const/16 v0, 0xc0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 29
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/sm;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 40
    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {p0, v0, v0}, Lcom/flurry/sdk/sm;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :cond_0
    monitor-exit p0

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/flurry/sdk/sm;->size()I

    move-result v0

    const/16 v1, 0xc0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
