.class public abstract Lcom/flurry/sdk/gq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gq$1;,
        Lcom/flurry/sdk/gq$p;,
        Lcom/flurry/sdk/gq$b;,
        Lcom/flurry/sdk/gq$e;,
        Lcom/flurry/sdk/gq$n;,
        Lcom/flurry/sdk/gq$k;,
        Lcom/flurry/sdk/gq$q;,
        Lcom/flurry/sdk/gq$c;,
        Lcom/flurry/sdk/gq$h;,
        Lcom/flurry/sdk/gq$d;,
        Lcom/flurry/sdk/gq$a;,
        Lcom/flurry/sdk/gq$j;,
        Lcom/flurry/sdk/gq$m;,
        Lcom/flurry/sdk/gq$l;,
        Lcom/flurry/sdk/gq$g;,
        Lcom/flurry/sdk/gq$o;,
        Lcom/flurry/sdk/gq$f;,
        Lcom/flurry/sdk/gq$i;
    }
.end annotation


# static fields
.field public static final c:Lcom/flurry/sdk/gq;

.field public static final d:Lcom/flurry/sdk/gq;

.field public static final e:Lcom/flurry/sdk/gq;

.field public static final f:Lcom/flurry/sdk/gq;

.field public static final g:Lcom/flurry/sdk/gq;

.field public static final h:Lcom/flurry/sdk/gq;

.field public static final i:Lcom/flurry/sdk/gq;

.field public static final j:Lcom/flurry/sdk/gq;

.field public static final k:Lcom/flurry/sdk/gq;

.field public static final l:Lcom/flurry/sdk/gq;

.field public static final m:Lcom/flurry/sdk/gq;

.field public static final n:Lcom/flurry/sdk/gq;

.field public static final o:Lcom/flurry/sdk/gq;

.field public static final p:Lcom/flurry/sdk/gq;

.field public static final q:Lcom/flurry/sdk/gq;

.field public static final r:Lcom/flurry/sdk/gq;

.field public static final s:Lcom/flurry/sdk/gq;

.field public static final t:Lcom/flurry/sdk/gq;

.field public static final u:Lcom/flurry/sdk/gq;

.field public static final v:Lcom/flurry/sdk/gq;

.field public static final w:Lcom/flurry/sdk/gq;

.field public static final x:Lcom/flurry/sdk/gq;

.field public static final y:Lcom/flurry/sdk/gq;


# instance fields
.field public final a:Lcom/flurry/sdk/gq$i;

.field public final b:[Lcom/flurry/sdk/gq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 521
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "null"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq;

    .line 522
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "boolean"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->d:Lcom/flurry/sdk/gq;

    .line 523
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "int"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->e:Lcom/flurry/sdk/gq;

    .line 524
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "long"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->f:Lcom/flurry/sdk/gq;

    .line 525
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "float"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->g:Lcom/flurry/sdk/gq;

    .line 526
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "double"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->h:Lcom/flurry/sdk/gq;

    .line 527
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "string"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->i:Lcom/flurry/sdk/gq;

    .line 528
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "bytes"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->j:Lcom/flurry/sdk/gq;

    .line 529
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "fixed"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->k:Lcom/flurry/sdk/gq;

    .line 530
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "enum"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq;

    .line 531
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "union"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->m:Lcom/flurry/sdk/gq;

    .line 533
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "array-start"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->n:Lcom/flurry/sdk/gq;

    .line 534
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "array-end"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->o:Lcom/flurry/sdk/gq;

    .line 535
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "map-start"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->p:Lcom/flurry/sdk/gq;

    .line 536
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "map-end"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->q:Lcom/flurry/sdk/gq;

    .line 537
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "item-end"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->r:Lcom/flurry/sdk/gq;

    .line 540
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "field-action"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->s:Lcom/flurry/sdk/gq;

    .line 543
    new-instance v0, Lcom/flurry/sdk/gq$g;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/gq$g;-><init>(ZLcom/flurry/sdk/gq$1;)V

    sput-object v0, Lcom/flurry/sdk/gq;->t:Lcom/flurry/sdk/gq;

    .line 544
    new-instance v0, Lcom/flurry/sdk/gq$g;

    invoke-direct {v0, v3, v2}, Lcom/flurry/sdk/gq$g;-><init>(ZLcom/flurry/sdk/gq$1;)V

    sput-object v0, Lcom/flurry/sdk/gq;->u:Lcom/flurry/sdk/gq;

    .line 545
    new-instance v0, Lcom/flurry/sdk/gq$g;

    invoke-direct {v0, v3, v2}, Lcom/flurry/sdk/gq$g;-><init>(ZLcom/flurry/sdk/gq$1;)V

    sput-object v0, Lcom/flurry/sdk/gq;->v:Lcom/flurry/sdk/gq;

    .line 546
    new-instance v0, Lcom/flurry/sdk/gq$g;

    invoke-direct {v0, v3, v2}, Lcom/flurry/sdk/gq$g;-><init>(ZLcom/flurry/sdk/gq$1;)V

    sput-object v0, Lcom/flurry/sdk/gq;->w:Lcom/flurry/sdk/gq;

    .line 548
    new-instance v0, Lcom/flurry/sdk/gq$g;

    invoke-direct {v0, v3, v2}, Lcom/flurry/sdk/gq$g;-><init>(ZLcom/flurry/sdk/gq$1;)V

    sput-object v0, Lcom/flurry/sdk/gq;->x:Lcom/flurry/sdk/gq;

    .line 549
    new-instance v0, Lcom/flurry/sdk/gq$o;

    const-string v1, "map-key-marker"

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gq$o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/flurry/sdk/gq;->y:Lcom/flurry/sdk/gq;

    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/gq$i;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/gq;-><init>(Lcom/flurry/sdk/gq$i;[Lcom/flurry/sdk/gq;)V

    .line 79
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/gq$i;[Lcom/flurry/sdk/gq;)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/flurry/sdk/gq;->b:[Lcom/flurry/sdk/gq;

    .line 84
    iput-object p1, p0, Lcom/flurry/sdk/gq;->a:Lcom/flurry/sdk/gq$i;

    .line 85
    return-void
.end method

.method protected static a([Lcom/flurry/sdk/gq;I)I
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    move v1, v0

    .line 214
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 215
    aget-object v0, p0, p1

    instance-of v0, v0, Lcom/flurry/sdk/gq$m;

    if-eqz v0, :cond_0

    .line 216
    aget-object v0, p0, p1

    check-cast v0, Lcom/flurry/sdk/gq$m;

    .line 217
    invoke-virtual {v0}, Lcom/flurry/sdk/gq$m;->a()I

    move-result v0

    add-int/2addr v0, v1

    .line 214
    :goto_1
    add-int/lit8 p1, p1, 0x1

    move v1, v0

    goto :goto_0

    .line 219
    :cond_0
    add-int/lit8 v0, v1, 0x1

    goto :goto_1

    .line 222
    :cond_1
    return v1
.end method

.method static a(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/flurry/sdk/gq$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/sdk/gq$k;-><init>(Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$1;)V

    return-object v0
.end method

.method static varargs a(Lcom/flurry/sdk/gq;[Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/flurry/sdk/gq$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/sdk/gq$j;-><init>(Lcom/flurry/sdk/gq;[Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$1;)V

    return-object v0
.end method

.method static a(Ljava/lang/String;)Lcom/flurry/sdk/gq;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/flurry/sdk/gq$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/gq$d;-><init>(Ljava/lang/String;Lcom/flurry/sdk/gq$1;)V

    return-object v0
.end method

.method static varargs a([Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/flurry/sdk/gq$l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/gq$l;-><init>([Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$1;)V

    return-object v0
.end method

.method static a([Lcom/flurry/sdk/gq;[Ljava/lang/String;)Lcom/flurry/sdk/gq;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/flurry/sdk/gq$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/flurry/sdk/gq$a;-><init>([Lcom/flurry/sdk/gq;[Ljava/lang/String;Lcom/flurry/sdk/gq$1;)V

    return-object v0
.end method

.method static a([Lcom/flurry/sdk/gq;I[Lcom/flurry/sdk/gq;ILjava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/flurry/sdk/gq;",
            "I[",
            "Lcom/flurry/sdk/gq;",
            "I",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gq$m;",
            "Lcom/flurry/sdk/gq$m;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gq$m;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/gq$f;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    .line 188
    aget-object v0, p0, p1

    invoke-virtual {v0, p4, p5}, Lcom/flurry/sdk/gq;->a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;

    move-result-object v1

    .line 189
    instance-of v0, v1, Lcom/flurry/sdk/gq$m;

    if-eqz v0, :cond_1

    .line 190
    iget-object v2, v1, Lcom/flurry/sdk/gq;->b:[Lcom/flurry/sdk/gq;

    .line 191
    invoke-interface {p5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 192
    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    array-length v1, v2

    invoke-static {v2, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    :goto_1
    array-length v0, v2

    add-int/2addr p3, v0

    .line 187
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 195
    :cond_0
    new-instance v1, Lcom/flurry/sdk/gq$f;

    invoke-direct {v1, p2, p3}, Lcom/flurry/sdk/gq$f;-><init>([Lcom/flurry/sdk/gq;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_1
    add-int/lit8 v0, p3, 0x1

    aput-object v1, p2, p3

    move p3, v0

    goto :goto_2

    .line 202
    :cond_2
    return-void
.end method

.method static varargs b([Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lcom/flurry/sdk/gq$m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/gq$m;-><init>([Lcom/flurry/sdk/gq;Lcom/flurry/sdk/gq$1;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/util/Map;Ljava/util/Map;)Lcom/flurry/sdk/gq;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gq$m;",
            "Lcom/flurry/sdk/gq$m;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gq$m;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/gq$f;",
            ">;>;)",
            "Lcom/flurry/sdk/gq;"
        }
    .end annotation

    .prologue
    .line 146
    return-object p0
.end method
