.class public abstract Lcom/flurry/sdk/fq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/flurry/sdk/fz;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final b:[Lcom/flurry/sdk/fn$f;


# instance fields
.field private final c:Lcom/flurry/sdk/fn;

.field private final d:[Lcom/flurry/sdk/fn$f;

.field private final e:[Z

.field private final f:Lcom/flurry/sdk/ft;

.field private g:Lcom/flurry/sdk/gc;

.field private h:Lcom/flurry/sdk/gb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/flurry/sdk/fq;->a:Ljava/util/concurrent/ConcurrentMap;

    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/sdk/fn$f;

    sput-object v0, Lcom/flurry/sdk/fq;->b:[Lcom/flurry/sdk/fn$f;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/fn;Lcom/flurry/sdk/ft;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/flurry/sdk/fq;->g:Lcom/flurry/sdk/gc;

    .line 51
    iput-object v0, p0, Lcom/flurry/sdk/fq;->h:Lcom/flurry/sdk/gb;

    .line 63
    iput-object p1, p0, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    .line 64
    iput-object p2, p0, Lcom/flurry/sdk/fq;->f:Lcom/flurry/sdk/ft;

    .line 65
    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->b()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/fq;->b:[Lcom/flurry/sdk/fn$f;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/fn$f;

    check-cast v0, [Lcom/flurry/sdk/fn$f;

    iput-object v0, p0, Lcom/flurry/sdk/fq;->d:[Lcom/flurry/sdk/fn$f;

    .line 66
    iget-object v0, p0, Lcom/flurry/sdk/fq;->d:[Lcom/flurry/sdk/fn$f;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/flurry/sdk/fq;->e:[Z

    .line 67
    return-void
.end method

.method protected static b(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 115
    if-eqz p1, :cond_0

    move v0, v1

    .line 137
    :goto_0
    return v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/flurry/sdk/fn$f;->c()Lcom/flurry/sdk/fn;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn$v;

    move-result-object v2

    .line 123
    sget-object v3, Lcom/flurry/sdk/fn$v;->n:Lcom/flurry/sdk/fn$v;

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 124
    goto :goto_0

    .line 128
    :cond_1
    sget-object v3, Lcom/flurry/sdk/fn$v;->e:Lcom/flurry/sdk/fn$v;

    if-ne v2, v3, :cond_3

    .line 129
    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fn;

    .line 130
    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn$v;

    move-result-object v0

    sget-object v3, Lcom/flurry/sdk/fn$v;->n:Lcom/flurry/sdk/fn$v;

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 131
    goto :goto_0

    .line 137
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/flurry/sdk/fn$f;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->e()Lcom/flurry/sdk/hh;

    move-result-object v3

    .line 150
    if-nez v3, :cond_0

    .line 151
    new-instance v0, Lcom/flurry/sdk/fk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not set and has no default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fk;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    invoke-virtual {v3}, Lcom/flurry/sdk/hh;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->c()Lcom/flurry/sdk/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn$v;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/fn$v;->n:Lcom/flurry/sdk/fn$v;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->c()Lcom/flurry/sdk/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn$v;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/fn$v;->e:Lcom/flurry/sdk/fn$v;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->c()Lcom/flurry/sdk/fn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fn;

    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn$v;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/fn$v;->n:Lcom/flurry/sdk/fn$v;

    if-ne v0, v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 190
    :goto_0
    return-object v0

    .line 164
    :cond_2
    sget-object v0, Lcom/flurry/sdk/fq;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    invoke-virtual {v1}, Lcom/flurry/sdk/fn;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 166
    if-nez v0, :cond_3

    .line 167
    sget-object v0, Lcom/flurry/sdk/fq;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    invoke-virtual {v1}, Lcom/flurry/sdk/fn;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/flurry/sdk/fq;->d:[Lcom/flurry/sdk/fn$f;

    array-length v5, v5

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/flurry/sdk/fq;->a:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    invoke-virtual {v1}, Lcom/flurry/sdk/fn;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 171
    :cond_3
    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 175
    if-nez v1, :cond_4

    .line 176
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 177
    invoke-static {}, Lcom/flurry/sdk/gj;->a()Lcom/flurry/sdk/gj;

    move-result-object v4

    iget-object v5, p0, Lcom/flurry/sdk/fq;->g:Lcom/flurry/sdk/gc;

    invoke-virtual {v4, v1, v5}, Lcom/flurry/sdk/gj;->a(Ljava/io/OutputStream;Lcom/flurry/sdk/gc;)Lcom/flurry/sdk/gc;

    move-result-object v4

    iput-object v4, p0, Lcom/flurry/sdk/fq;->g:Lcom/flurry/sdk/gc;

    .line 178
    iget-object v4, p0, Lcom/flurry/sdk/fq;->g:Lcom/flurry/sdk/gc;

    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->c()Lcom/flurry/sdk/fn;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/flurry/sdk/go;->a(Lcom/flurry/sdk/gi;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/hh;)V

    .line 180
    iget-object v3, p0, Lcom/flurry/sdk/fq;->g:Lcom/flurry/sdk/gc;

    invoke-virtual {v3}, Lcom/flurry/sdk/gc;->flush()V

    .line 181
    invoke-static {}, Lcom/flurry/sdk/gg;->a()Lcom/flurry/sdk/gg;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v4, p0, Lcom/flurry/sdk/fq;->h:Lcom/flurry/sdk/gb;

    invoke-virtual {v3, v1, v4}, Lcom/flurry/sdk/gg;->a([BLcom/flurry/sdk/gb;)Lcom/flurry/sdk/gb;

    move-result-object v1

    iput-object v1, p0, Lcom/flurry/sdk/fq;->h:Lcom/flurry/sdk/gb;

    .line 183
    iget-object v1, p0, Lcom/flurry/sdk/fq;->f:Lcom/flurry/sdk/ft;

    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->c()Lcom/flurry/sdk/fn;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/flurry/sdk/ft;->a(Lcom/flurry/sdk/fn;)Lcom/flurry/sdk/ge;

    move-result-object v1

    iget-object v3, p0, Lcom/flurry/sdk/fq;->h:Lcom/flurry/sdk/gb;

    invoke-interface {v1, v2, v3}, Lcom/flurry/sdk/ge;->a(Ljava/lang/Object;Lcom/flurry/sdk/gf;)Ljava/lang/Object;

    move-result-object v1

    .line 185
    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v0, v1

    .line 190
    iget-object v1, p0, Lcom/flurry/sdk/fq;->f:Lcom/flurry/sdk/ft;

    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->c()Lcom/flurry/sdk/fn;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/ft;->b(Lcom/flurry/sdk/fn;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected a(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 96
    invoke-static {p1, p2}, Lcom/flurry/sdk/fq;->b(Lcom/flurry/sdk/fn$f;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    return-void

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/fn$f;->e()Lcom/flurry/sdk/hh;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/flurry/sdk/fk;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not accept null values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/flurry/sdk/fk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final b()[Lcom/flurry/sdk/fn$f;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flurry/sdk/fq;->d:[Lcom/flurry/sdk/fn$f;

    return-object v0
.end method

.method protected final c()[Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flurry/sdk/fq;->e:[Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    if-ne p0, p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 206
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 207
    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 209
    goto :goto_0

    .line 211
    :cond_3
    check-cast p1, Lcom/flurry/sdk/fq;

    .line 212
    iget-object v2, p0, Lcom/flurry/sdk/fq;->e:[Z

    iget-object v3, p1, Lcom/flurry/sdk/fq;->e:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 213
    goto :goto_0

    .line 214
    :cond_4
    iget-object v2, p0, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    if-nez v2, :cond_5

    .line 215
    iget-object v2, p1, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    if-eqz v2, :cond_0

    move v0, v1

    .line 216
    goto :goto_0

    .line 217
    :cond_5
    iget-object v2, p0, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    iget-object v3, p1, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    invoke-virtual {v2, v3}, Lcom/flurry/sdk/fn;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 218
    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 195
    .line 197
    iget-object v0, p0, Lcom/flurry/sdk/fq;->e:[Z

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 198
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 199
    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fq;->c:Lcom/flurry/sdk/fn;

    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->hashCode()I

    move-result v0

    goto :goto_0
.end method
