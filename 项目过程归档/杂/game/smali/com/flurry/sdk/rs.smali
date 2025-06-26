.class public Lcom/flurry/sdk/rs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/flurry/sdk/rs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/flurry/sdk/rs;

    invoke-direct {v0}, Lcom/flurry/sdk/rs;-><init>()V

    sput-object v0, Lcom/flurry/sdk/rs;->a:Lcom/flurry/sdk/rs;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/flurry/sdk/rm;
    .locals 1

    .prologue
    .line 187
    invoke-static {p1}, Lcom/flurry/sdk/rm;->a([B)Lcom/flurry/sdk/rm;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)Lcom/flurry/sdk/rn;
    .locals 1

    .prologue
    .line 35
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/flurry/sdk/rn;->s()Lcom/flurry/sdk/rn;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/flurry/sdk/rn;->t()Lcom/flurry/sdk/rn;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/flurry/sdk/ru;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/flurry/sdk/ru;->s()Lcom/flurry/sdk/ru;

    move-result-object v0

    return-object v0
.end method

.method public a(D)Lcom/flurry/sdk/rv;
    .locals 1

    .prologue
    .line 150
    invoke-static {p1, p2}, Lcom/flurry/sdk/rq;->b(D)Lcom/flurry/sdk/rq;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/flurry/sdk/rv;
    .locals 1

    .prologue
    .line 90
    invoke-static {p1}, Lcom/flurry/sdk/rr;->a(I)Lcom/flurry/sdk/rr;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/flurry/sdk/rv;
    .locals 1

    .prologue
    .line 108
    invoke-static {p1, p2}, Lcom/flurry/sdk/rt;->a(J)Lcom/flurry/sdk/rt;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigDecimal;)Lcom/flurry/sdk/rv;
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Lcom/flurry/sdk/rp;->a(Ljava/math/BigDecimal;)Lcom/flurry/sdk/rp;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/math/BigInteger;)Lcom/flurry/sdk/rv;
    .locals 1

    .prologue
    .line 126
    invoke-static {p1}, Lcom/flurry/sdk/rl;->a(Ljava/math/BigInteger;)Lcom/flurry/sdk/rl;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Lcom/flurry/sdk/rx;
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/flurry/sdk/rx;

    invoke-direct {v0, p1}, Lcom/flurry/sdk/rx;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/flurry/sdk/ry;
    .locals 1

    .prologue
    .line 180
    invoke-static {p1}, Lcom/flurry/sdk/ry;->b(Ljava/lang/String;)Lcom/flurry/sdk/ry;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/flurry/sdk/rj;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/flurry/sdk/rj;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/rj;-><init>(Lcom/flurry/sdk/rs;)V

    return-object v0
.end method

.method public c()Lcom/flurry/sdk/rw;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/flurry/sdk/rw;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/rw;-><init>(Lcom/flurry/sdk/rs;)V

    return-object v0
.end method
