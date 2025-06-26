.class public Lcom/flurry/sdk/kq$a;
.super Lcom/flurry/sdk/jb$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field protected static final a:[Lcom/flurry/sdk/jm;

.field protected static final b:[Lcom/flurry/sdk/kr;

.field protected static final c:[Lcom/flurry/sdk/ip;

.field protected static final d:[Lcom/flurry/sdk/ky;


# instance fields
.field protected final e:[Lcom/flurry/sdk/jd;

.field protected final f:[Lcom/flurry/sdk/jm;

.field protected final g:[Lcom/flurry/sdk/kr;

.field protected final h:[Lcom/flurry/sdk/ip;

.field protected final i:[Lcom/flurry/sdk/ky;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    new-array v0, v1, [Lcom/flurry/sdk/jm;

    sput-object v0, Lcom/flurry/sdk/kq$a;->a:[Lcom/flurry/sdk/jm;

    .line 48
    new-array v0, v1, [Lcom/flurry/sdk/kr;

    sput-object v0, Lcom/flurry/sdk/kq$a;->b:[Lcom/flurry/sdk/kr;

    .line 49
    new-array v0, v1, [Lcom/flurry/sdk/ip;

    sput-object v0, Lcom/flurry/sdk/kq$a;->c:[Lcom/flurry/sdk/ip;

    .line 50
    new-array v0, v1, [Lcom/flurry/sdk/ky;

    sput-object v0, Lcom/flurry/sdk/kq$a;->d:[Lcom/flurry/sdk/ky;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 99
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kq$a;-><init>([Lcom/flurry/sdk/jd;[Lcom/flurry/sdk/jm;[Lcom/flurry/sdk/kr;[Lcom/flurry/sdk/ip;[Lcom/flurry/sdk/ky;)V

    .line 100
    return-void
.end method

.method protected constructor <init>([Lcom/flurry/sdk/jd;[Lcom/flurry/sdk/jm;[Lcom/flurry/sdk/kr;[Lcom/flurry/sdk/ip;[Lcom/flurry/sdk/ky;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/flurry/sdk/jb$a;-><init>()V

    .line 112
    if-nez p1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/kq;->b()[Lcom/flurry/sdk/jd;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/kq$a;->e:[Lcom/flurry/sdk/jd;

    .line 114
    if-nez p2, :cond_1

    sget-object p2, Lcom/flurry/sdk/kq$a;->a:[Lcom/flurry/sdk/jm;

    :cond_1
    iput-object p2, p0, Lcom/flurry/sdk/kq$a;->f:[Lcom/flurry/sdk/jm;

    .line 116
    if-nez p3, :cond_2

    sget-object p3, Lcom/flurry/sdk/kq$a;->b:[Lcom/flurry/sdk/kr;

    :cond_2
    iput-object p3, p0, Lcom/flurry/sdk/kq$a;->g:[Lcom/flurry/sdk/kr;

    .line 117
    if-nez p4, :cond_3

    sget-object p4, Lcom/flurry/sdk/kq$a;->c:[Lcom/flurry/sdk/ip;

    :cond_3
    iput-object p4, p0, Lcom/flurry/sdk/kq$a;->h:[Lcom/flurry/sdk/ip;

    .line 118
    if-nez p5, :cond_4

    sget-object p5, Lcom/flurry/sdk/kq$a;->d:[Lcom/flurry/sdk/ky;

    :cond_4
    iput-object p5, p0, Lcom/flurry/sdk/kq$a;->i:[Lcom/flurry/sdk/ky;

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jb$a;
    .locals 6

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->h:[Lcom/flurry/sdk/ip;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qw;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/flurry/sdk/ip;

    .line 161
    new-instance v0, Lcom/flurry/sdk/kq$a;

    iget-object v1, p0, Lcom/flurry/sdk/kq$a;->e:[Lcom/flurry/sdk/jd;

    iget-object v2, p0, Lcom/flurry/sdk/kq$a;->f:[Lcom/flurry/sdk/jm;

    iget-object v3, p0, Lcom/flurry/sdk/kq$a;->g:[Lcom/flurry/sdk/kr;

    iget-object v5, p0, Lcom/flurry/sdk/kq$a;->i:[Lcom/flurry/sdk/ky;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kq$a;-><init>([Lcom/flurry/sdk/jd;[Lcom/flurry/sdk/jm;[Lcom/flurry/sdk/kr;[Lcom/flurry/sdk/ip;[Lcom/flurry/sdk/ky;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jb$a;
    .locals 6

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null Deserializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->e:[Lcom/flurry/sdk/jd;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qw;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/flurry/sdk/jd;

    .line 128
    new-instance v0, Lcom/flurry/sdk/kq$a;

    iget-object v2, p0, Lcom/flurry/sdk/kq$a;->f:[Lcom/flurry/sdk/jm;

    iget-object v3, p0, Lcom/flurry/sdk/kq$a;->g:[Lcom/flurry/sdk/kr;

    iget-object v4, p0, Lcom/flurry/sdk/kq$a;->h:[Lcom/flurry/sdk/ip;

    iget-object v5, p0, Lcom/flurry/sdk/kq$a;->i:[Lcom/flurry/sdk/ky;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kq$a;-><init>([Lcom/flurry/sdk/jd;[Lcom/flurry/sdk/jm;[Lcom/flurry/sdk/kr;[Lcom/flurry/sdk/ip;[Lcom/flurry/sdk/ky;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jm;)Lcom/flurry/sdk/jb$a;
    .locals 6

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null KeyDeserializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->f:[Lcom/flurry/sdk/jm;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qw;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/flurry/sdk/jm;

    .line 139
    new-instance v0, Lcom/flurry/sdk/kq$a;

    iget-object v1, p0, Lcom/flurry/sdk/kq$a;->e:[Lcom/flurry/sdk/jd;

    iget-object v3, p0, Lcom/flurry/sdk/kq$a;->g:[Lcom/flurry/sdk/kr;

    iget-object v4, p0, Lcom/flurry/sdk/kq$a;->h:[Lcom/flurry/sdk/ip;

    iget-object v5, p0, Lcom/flurry/sdk/kq$a;->i:[Lcom/flurry/sdk/ky;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kq$a;-><init>([Lcom/flurry/sdk/jd;[Lcom/flurry/sdk/jm;[Lcom/flurry/sdk/kr;[Lcom/flurry/sdk/ip;[Lcom/flurry/sdk/ky;)V

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/ky;)Lcom/flurry/sdk/jb$a;
    .locals 6

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null resolver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->i:[Lcom/flurry/sdk/ky;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qw;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/flurry/sdk/ky;

    .line 172
    new-instance v0, Lcom/flurry/sdk/kq$a;

    iget-object v1, p0, Lcom/flurry/sdk/kq$a;->e:[Lcom/flurry/sdk/jd;

    iget-object v2, p0, Lcom/flurry/sdk/kq$a;->f:[Lcom/flurry/sdk/jm;

    iget-object v3, p0, Lcom/flurry/sdk/kq$a;->g:[Lcom/flurry/sdk/kr;

    iget-object v4, p0, Lcom/flurry/sdk/kq$a;->h:[Lcom/flurry/sdk/ip;

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/kq$a;-><init>([Lcom/flurry/sdk/jd;[Lcom/flurry/sdk/jm;[Lcom/flurry/sdk/kr;[Lcom/flurry/sdk/ip;[Lcom/flurry/sdk/ky;)V

    return-object v0
.end method

.method public a()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/jd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->e:[Lcom/flurry/sdk/jd;

    invoke-static {v0}, Lcom/flurry/sdk/qw;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/jm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->f:[Lcom/flurry/sdk/jm;

    invoke-static {v0}, Lcom/flurry/sdk/qw;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/kr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->g:[Lcom/flurry/sdk/kr;

    invoke-static {v0}, Lcom/flurry/sdk/qw;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/ip;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->h:[Lcom/flurry/sdk/ip;

    invoke-static {v0}, Lcom/flurry/sdk/qw;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/ky;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->i:[Lcom/flurry/sdk/ky;

    invoke-static {v0}, Lcom/flurry/sdk/qw;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->f:[Lcom/flurry/sdk/jm;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->g:[Lcom/flurry/sdk/kr;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->h:[Lcom/flurry/sdk/ip;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/flurry/sdk/kq$a;->i:[Lcom/flurry/sdk/ky;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
