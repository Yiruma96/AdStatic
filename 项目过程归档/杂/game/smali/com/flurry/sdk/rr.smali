.class public final Lcom/flurry/sdk/rr;
.super Lcom/flurry/sdk/rv;
.source "SourceFile"


# static fields
.field private static final d:[Lcom/flurry/sdk/rr;


# instance fields
.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    const/16 v1, 0xc

    .line 25
    new-array v0, v1, [Lcom/flurry/sdk/rr;

    sput-object v0, Lcom/flurry/sdk/rr;->d:[Lcom/flurry/sdk/rr;

    .line 26
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 27
    sget-object v2, Lcom/flurry/sdk/rr;->d:[Lcom/flurry/sdk/rr;

    new-instance v3, Lcom/flurry/sdk/rr;

    add-int/lit8 v4, v0, -0x1

    invoke-direct {v3, v4}, Lcom/flurry/sdk/rr;-><init>(I)V

    aput-object v3, v2, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/flurry/sdk/rv;-><init>()V

    iput p1, p0, Lcom/flurry/sdk/rr;->c:I

    return-void
.end method

.method public static a(I)Lcom/flurry/sdk/rr;
    .locals 2

    .prologue
    .line 45
    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    const/4 v0, -0x1

    if-ge p0, v0, :cond_1

    :cond_0
    new-instance v0, Lcom/flurry/sdk/rr;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/rr;-><init>(I)V

    .line 46
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/flurry/sdk/rr;->d:[Lcom/flurry/sdk/rr;

    add-int/lit8 v1, p0, 0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 106
    iget v0, p0, Lcom/flurry/sdk/rr;->c:I

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->b(I)V

    .line 107
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 113
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 115
    goto :goto_0

    .line 117
    :cond_3
    check-cast p1, Lcom/flurry/sdk/rr;

    iget v2, p1, Lcom/flurry/sdk/rr;->c:I

    iget v3, p0, Lcom/flurry/sdk/rr;->c:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/flurry/sdk/rr;->c:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/flurry/sdk/rr;->c:I

    return v0
.end method

.method public l()J
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lcom/flurry/sdk/rr;->c:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public m()D
    .locals 2

    .prologue
    .line 84
    iget v0, p0, Lcom/flurry/sdk/rr;->c:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/flurry/sdk/rr;->c:I

    invoke-static {v0}, Lcom/flurry/sdk/ij;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
