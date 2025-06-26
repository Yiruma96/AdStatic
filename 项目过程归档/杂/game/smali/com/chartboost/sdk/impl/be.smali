.class public Lcom/chartboost/sdk/impl/be;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/be$c;,
        Lcom/chartboost/sdk/impl/be$b;,
        Lcom/chartboost/sdk/impl/be$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/chartboost/sdk/Libraries/h;

.field private static c:Lcom/chartboost/sdk/impl/m;

.field private static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/chartboost/sdk/impl/be$b;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/chartboost/sdk/impl/be$a;

.field private static f:Lcom/chartboost/sdk/impl/be$a;

.field private static g:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static h:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static i:Z

.field private static j:Lcom/chartboost/sdk/Model/a;

.field private static k:Z

.field private static l:Ljava/util/Observer;

.field private static m:Lcom/chartboost/sdk/impl/ba$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-class v0, Lcom/chartboost/sdk/impl/be;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/be;->a:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 98
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->i:Z

    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->k:Z

    .line 108
    new-instance v0, Lcom/chartboost/sdk/impl/be$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/be$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->l:Ljava/util/Observer;

    .line 187
    new-instance v0, Lcom/chartboost/sdk/impl/be$2;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/be$2;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->m:Lcom/chartboost/sdk/impl/ba$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/be$a;)Lcom/chartboost/sdk/impl/be$a;
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/impl/be$a;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 137
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lcom/chartboost/sdk/impl/be;->k:Z

    if-nez v2, :cond_0

    .line 138
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->l()V

    .line 140
    :cond_0
    sget-object v2, Lcom/chartboost/sdk/impl/be;->a:Ljava/lang/String;

    const-string v3, "Calling Prfetch Video"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sget-object v3, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/impl/be$a;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sget-object v3, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_2

    .line 182
    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    .line 147
    :cond_2
    :try_start_1
    sget-object v2, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 148
    sget-object v2, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 149
    sget-object v2, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/impl/m;

    sget-object v3, Lcom/chartboost/sdk/impl/be;->l:Ljava/util/Observer;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V

    .line 150
    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    sput-object v2, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    .line 151
    sget-object v2, Lcom/chartboost/sdk/impl/be;->a:Ljava/lang/String;

    const-string v3, "prefetchVideo: Clearing all volley request for new start"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    :cond_3
    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sput-object v2, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/impl/be$a;

    .line 158
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 159
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->b()[Ljava/lang/String;

    move-result-object v3

    .line 160
    if-eqz v3, :cond_4

    .line 161
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->b()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v5, v3, v0

    .line 162
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 166
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->d()V

    .line 169
    sget-object v0, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 170
    sget-object v0, Lcom/chartboost/sdk/impl/be;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 173
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v3, "/api/video-prefetch"

    invoke-direct {v0, v3}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 174
    const-string v3, "local-videos"

    invoke-virtual {v0, v3, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v3, 0x0

    const-string v4, "status"

    sget-object v5, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "videos"

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/chartboost/sdk/Libraries/g$k;

    const/4 v6, 0x0

    const-string v7, "video"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v8}, Lcom/chartboost/sdk/Libraries/g;->a(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "id"

    invoke-static {}, Lcom/chartboost/sdk/Libraries/g;->a()Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v5}, Lcom/chartboost/sdk/Libraries/g;->b(Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 180
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->b(Z)V

    .line 181
    sget-object v2, Lcom/chartboost/sdk/impl/be;->m:Lcom/chartboost/sdk/impl/ba$c;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 212
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->e()V

    .line 214
    if-eqz p0, :cond_6

    .line 215
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 216
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 217
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->b()[Ljava/lang/String;

    move-result-object v4

    .line 218
    :goto_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->o()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 219
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->c(I)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v5

    .line 220
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "video"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 218
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_1
    const-string v6, "id"

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    const-string v7, "video"

    invoke-virtual {v5, v7}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 224
    sget-object v7, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v7, v6}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 225
    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v7, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 228
    :cond_2
    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 230
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    sget-object v0, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sput-object v0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    .line 233
    :cond_4
    sget-boolean v0, Lcom/chartboost/sdk/impl/be;->i:Z

    if-eqz v0, :cond_5

    .line 234
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->i:Z

    .line 235
    :cond_5
    sget-object v0, Lcom/chartboost/sdk/impl/be;->a:Ljava/lang/String;

    const-string v5, "synchronizeVideos: Delete and Download new videos"

    invoke-static {v0, v5}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {v2, v4}, Lcom/chartboost/sdk/impl/be;->a(Ljava/util/HashMap;[Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/chartboost/sdk/b;->s()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    invoke-static {v3}, Lcom/chartboost/sdk/impl/be;->a(Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :cond_6
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(Lcom/chartboost/sdk/Model/a;)V
    .locals 2

    .prologue
    .line 424
    const-class v0, Lcom/chartboost/sdk/impl/be;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Model/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    monitor-exit v0

    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    const-class v2, Lcom/chartboost/sdk/impl/be;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->a:Ljava/lang/String;

    const-string v1, "downloadVideos: Downloading videos from server"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 270
    new-instance v4, Lcom/chartboost/sdk/impl/be$c;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/chartboost/sdk/impl/be$c;-><init>(Lcom/chartboost/sdk/impl/be$1;)V

    .line 271
    new-instance v5, Lcom/chartboost/sdk/impl/be$b;

    const/4 v6, 0x0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v6, v1, v4, v0}, Lcom/chartboost/sdk/impl/be$b;-><init>(ILjava/lang/String;Lcom/chartboost/sdk/impl/be$c;Ljava/lang/String;)V

    .line 272
    new-instance v1, Lcom/chartboost/sdk/impl/d;

    const/16 v6, 0x7530

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, v8}, Lcom/chartboost/sdk/impl/d;-><init>(IIF)V

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/be$b;->a(Lcom/chartboost/sdk/impl/p;)Lcom/chartboost/sdk/impl/l;

    .line 275
    invoke-static {v4, v5}, Lcom/chartboost/sdk/impl/be$c;->a(Lcom/chartboost/sdk/impl/be$c;Lcom/chartboost/sdk/impl/be$b;)Lcom/chartboost/sdk/impl/be$b;

    .line 276
    sget-object v1, Lcom/chartboost/sdk/impl/be;->l:Ljava/util/Observer;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/chartboost/sdk/impl/be$b;->a(Ljava/lang/Object;)Lcom/chartboost/sdk/impl/l;

    .line 277
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 280
    :cond_0
    monitor-exit v2

    return-void
.end method

.method private static declared-synchronized a(Ljava/util/HashMap;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 250
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->a:Ljava/lang/String;

    const-string v2, "deleteVideos: Deleteing videos in cache"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 252
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    .line 253
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    sget-object v4, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Libraries/h;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 255
    if-eqz v3, :cond_0

    .line 256
    sget-object v4, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v4, v3}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    monitor-exit v1

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/be$a;)Lcom/chartboost/sdk/impl/be$a;
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    return-object p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/h;->b(Ljava/lang/String;)V

    .line 380
    :cond_0
    return-void
.end method

.method public static b(Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 385
    if-nez p0, :cond_0

    .line 397
    :goto_0
    return v1

    .line 388
    :cond_0
    const-string v0, "assets"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    .line 390
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Lcom/chartboost/sdk/Libraries/f;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/f;->b()Z

    move-result v0

    .line 392
    if-eqz v0, :cond_1

    const-string v0, "video-portrait"

    :goto_1
    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    .line 394
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    invoke-static {v0}, Lcom/chartboost/sdk/impl/be;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    goto :goto_0

    .line 392
    :cond_1
    const-string v0, "video-landscape"

    goto :goto_1

    :cond_2
    move v0, v1

    .line 397
    goto :goto_2
.end method

.method public static declared-synchronized b(Lcom/chartboost/sdk/Model/a;)Z
    .locals 3

    .prologue
    .line 430
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    sget-object v0, Lcom/chartboost/sdk/impl/be;->a:Ljava/lang/String;

    const-string v2, "saving video impression request for video prefetch completion"

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    invoke-static {p0}, Lcom/chartboost/sdk/impl/be;->a(Lcom/chartboost/sdk/Model/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    const/4 v0, 0x1

    .line 435
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/Model/a;)Lcom/chartboost/sdk/Model/a;
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Model/a;

    return-object p0
.end method

.method public static declared-synchronized c()V
    .locals 3

    .prologue
    .line 367
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/impl/m;

    sget-object v2, Lcom/chartboost/sdk/impl/be;->l:Ljava/util/Observer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/m;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit v1

    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized d()Z
    .locals 3

    .prologue
    .line 401
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/chartboost/sdk/impl/be;->i:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/impl/be$a;

    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    sget-object v2, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/chartboost/sdk/impl/be;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 403
    :cond_0
    const/4 v0, 0x1

    .line 404
    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->m()V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()Lcom/chartboost/sdk/Libraries/h;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic i()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic j()Lcom/chartboost/sdk/Model/a;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->j:Lcom/chartboost/sdk/Model/a;

    return-object v0
.end method

.method static synthetic k()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method private static declared-synchronized l()V
    .locals 4

    .prologue
    .line 119
    const-class v1, Lcom/chartboost/sdk/impl/be;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/chartboost/sdk/impl/be;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    monitor-exit v1

    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/chartboost/sdk/impl/be;->k:Z

    .line 123
    new-instance v0, Lcom/chartboost/sdk/Libraries/h;

    const-string v2, "CBVideoDirectory"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/chartboost/sdk/Libraries/h;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->b:Lcom/chartboost/sdk/Libraries/h;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    sget-object v0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    sput-object v0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/impl/be$a;

    .line 126
    sget-object v0, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    sput-object v0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    .line 127
    invoke-static {}, Lcom/chartboost/sdk/b;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/impl/m;

    .line 130
    invoke-static {}, Lcom/chartboost/sdk/impl/az;->a()Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    sget-object v2, Lcom/chartboost/sdk/impl/be;->l:Ljava/util/Observer;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/az;->addObserver(Ljava/util/Observer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized m()V
    .locals 5

    .prologue
    .line 409
    const-class v2, Lcom/chartboost/sdk/impl/be;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/be;->a:Ljava/lang/String;

    const-string v1, "Process Request called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    sget-object v0, Lcom/chartboost/sdk/impl/be;->e:Lcom/chartboost/sdk/impl/be$a;

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_1

    .line 421
    :cond_0
    monitor-exit v2

    return-void

    .line 412
    :cond_1
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->a:Lcom/chartboost/sdk/impl/be$a;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 414
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 415
    sget-object v1, Lcom/chartboost/sdk/impl/be$a;->b:Lcom/chartboost/sdk/impl/be$a;

    sput-object v1, Lcom/chartboost/sdk/impl/be;->f:Lcom/chartboost/sdk/impl/be$a;

    .line 416
    sget-object v4, Lcom/chartboost/sdk/impl/be;->c:Lcom/chartboost/sdk/impl/m;

    sget-object v1, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/l;

    invoke-virtual {v4, v1}, Lcom/chartboost/sdk/impl/m;->a(Lcom/chartboost/sdk/impl/l;)Lcom/chartboost/sdk/impl/l;

    .line 417
    sget-object v1, Lcom/chartboost/sdk/impl/be;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
