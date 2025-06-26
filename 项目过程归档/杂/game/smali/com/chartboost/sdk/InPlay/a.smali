.class public final Lcom/chartboost/sdk/InPlay/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/InPlay/a$a;,
        Lcom/chartboost/sdk/InPlay/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chartboost/sdk/InPlay/CBInPlay;",
            ">;"
        }
    .end annotation
.end field

.field private static c:I

.field private static d:Lcom/chartboost/sdk/InPlay/a;

.field private static e:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/InPlay/a;->a:Ljava/lang/String;

    .line 41
    const/4 v0, 0x4

    sput v0, Lcom/chartboost/sdk/InPlay/a;->c:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/InPlay/a;->b:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/LinkedHashMap;

    sget v1, Lcom/chartboost/sdk/InPlay/a;->c:I

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    sput-object v0, Lcom/chartboost/sdk/InPlay/a;->e:Ljava/util/LinkedHashMap;

    .line 52
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/InPlay/a;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->d:Lcom/chartboost/sdk/InPlay/a;

    if-nez v0, :cond_1

    .line 56
    const-class v1, Lcom/chartboost/sdk/InPlay/a;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->d:Lcom/chartboost/sdk/InPlay/a;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/chartboost/sdk/InPlay/a;

    invoke-direct {v0}, Lcom/chartboost/sdk/InPlay/a;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/InPlay/a;->d:Lcom/chartboost/sdk/InPlay/a;

    .line 60
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->d:Lcom/chartboost/sdk/InPlay/a;

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lcom/chartboost/sdk/InPlay/CBInPlay;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/InPlay/CBInPlay;->a(Landroid/graphics/Bitmap;)V

    .line 201
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 205
    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/a;->didCacheInPlay(Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->getLocation()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;Z)V

    .line 209
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/InPlay/CBInPlay;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/InPlay/a;->a(Lcom/chartboost/sdk/InPlay/CBInPlay;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 122
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "/inplay/get"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v1, "raw"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v1, "cache"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 126
    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ba;->b(Z)V

    .line 127
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    sget-object v1, Lcom/chartboost/sdk/Model/b;->d:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 129
    new-instance v1, Lcom/chartboost/sdk/InPlay/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/chartboost/sdk/InPlay/a$1;-><init>(Lcom/chartboost/sdk/InPlay/a;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 170
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 279
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->e:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_0

    .line 280
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 281
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 282
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 283
    :cond_1
    return-void
.end method

.method static synthetic c()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->e:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static e()Z
    .locals 2

    .prologue
    .line 78
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/chartboost/sdk/InPlay/a;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/chartboost/sdk/InPlay/CBInPlay;)V
    .locals 3

    .prologue
    .line 216
    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 217
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v2, "/inplay/show"

    invoke-direct {v0, v2}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 218
    const-string v2, "inplay-dictionary"

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 219
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Z)V

    .line 220
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ba;->s()V

    .line 222
    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    const-string v0, "ad_id"

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_0
    const-string v1, "in-play"

    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected b(Lcom/chartboost/sdk/InPlay/CBInPlay;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-virtual {p1}, Lcom/chartboost/sdk/InPlay/CBInPlay;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v4

    .line 239
    if-eqz v4, :cond_3

    .line 240
    const-string v0, "link"

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 241
    const-string v0, "deep-link"

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 244
    :try_start_0
    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    :goto_0
    move-object v3, v0

    .line 251
    :goto_1
    new-instance v5, Lcom/chartboost/sdk/InPlay/a$2;

    invoke-direct {v5, p0, v4}, Lcom/chartboost/sdk/InPlay/a$2;-><init>(Lcom/chartboost/sdk/InPlay/a;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 267
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 268
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 269
    invoke-virtual {v0, v1, v3, v5}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 273
    :goto_2
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->a:Ljava/lang/String;

    const-string v3, "Cannot open a url"

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, v2

    goto :goto_1

    .line 271
    :cond_1
    iget-object v0, v0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bc$a;

    const/4 v2, 0x0

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    move-object v3, v1

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 87
    sget-object v1, Lcom/chartboost/sdk/InPlay/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 88
    const-string v1, "in-play"

    invoke-static {v1, p1, v0}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    :goto_0
    return v0

    .line 91
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->a:Ljava/lang/String;

    const-string v1, "InPlay is not available :("

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    sget-object v1, Lcom/chartboost/sdk/InPlay/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 104
    sget-object v0, Lcom/chartboost/sdk/InPlay/a;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/InPlay/CBInPlay;

    .line 107
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;Z)V

    .line 110
    :cond_1
    if-nez v0, :cond_2

    .line 111
    sget-object v1, Lcom/chartboost/sdk/InPlay/a;->a:Ljava/lang/String;

    const-string v2, "InPlay Object not available returning null :("

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    :cond_2
    return-object v0
.end method
