.class public final Lcom/google/android/gms/internal/hq;
.super Ljava/lang/Object;


# instance fields
.field private CJ:I

.field private CK:I

.field private CL:I

.field private CM:I

.field private CN:I

.field private CO:I

.field private CP:I

.field private final buffer:[B


# direct methods
.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/hq;->CN:I

    const/16 v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/hq;->CO:I

    const/high16 v0, 0x4000000

    iput v0, p0, Lcom/google/android/gms/internal/hq;->CP:I

    iput-object p1, p0, Lcom/google/android/gms/internal/hq;->buffer:[B

    iput p2, p0, Lcom/google/android/gms/internal/hq;->CJ:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/google/android/gms/internal/hq;->CK:I

    iput p2, p0, Lcom/google/android/gms/internal/hq;->CL:I

    return-void
.end method

.method public static a([BII)Lcom/google/android/gms/internal/hq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/hq;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/hq;-><init>([BII)V

    return-object v0
.end method

.method public static j(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bp(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/hs;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/hq;->CM:I

    if-eq v0, p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/hs;->fP()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public bq(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->bz(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-static {}, Lcom/google/android/gms/internal/hs;->fQ()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fB()I

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fG()J

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fD()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/hq;->bs(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fA()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->bA(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/hv;->g(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/hq;->bp(I)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fF()I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public br(I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/hs;->fM()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/hq;->CL:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CN:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/hq;->CN:I

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CL:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hq;->bs(I)V

    invoke-static {}, Lcom/google/android/gms/internal/hs;->fL()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/hq;->CK:I

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CL:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/google/android/gms/internal/hq;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/hq;->CL:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CL:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/hq;->CL:I

    return-object v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/hs;->fL()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0
.end method

.method public bs(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/hs;->fM()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/hq;->CL:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CN:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/hq;->CN:I

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CL:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hq;->bs(I)V

    invoke-static {}, Lcom/google/android/gms/internal/hs;->fL()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/hq;->CK:I

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CL:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/hq;->CL:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/hq;->CL:I

    return-void

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/hs;->fL()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0
.end method

.method public fA()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fz()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/hq;->bq(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public fB()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fD()I

    move-result v0

    return v0
.end method

.method public fC()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fE()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/hq;->j(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public fD()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v0

    if-ltz v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v1

    if-ltz v1, :cond_2

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v1

    if-ltz v1, :cond_3

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v1

    if-ltz v1, :cond_4

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    goto :goto_0

    :cond_4
    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/hs;->fN()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0
.end method

.method public fE()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/hs;->fN()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0
.end method

.method public fF()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v3

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, v2, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, v3, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public fG()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fI()B

    move-result v7

    int-to-long v8, v0

    and-long/2addr v8, v12

    int-to-long v0, v1

    and-long/2addr v0, v12

    const/16 v10, 0x8

    shl-long/2addr v0, v10

    or-long/2addr v0, v8

    int-to-long v8, v2

    and-long/2addr v8, v12

    const/16 v2, 0x10

    shl-long/2addr v8, v2

    or-long/2addr v0, v8

    int-to-long v2, v3

    and-long/2addr v2, v12

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v0, v2

    int-to-long v2, v4

    and-long/2addr v2, v12

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v5

    and-long/2addr v2, v12

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v6

    and-long/2addr v2, v12

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, v7

    and-long/2addr v2, v12

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public fH()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/hq;->CL:I

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CK:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fI()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/hq;->CL:I

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CK:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/hs;->fL()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/hq;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/hq;->CL:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/hq;->CL:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public fz()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fH()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/gms/internal/hq;->CM:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fD()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/hq;->CM:I

    iget v0, p0, Lcom/google/android/gms/internal/hq;->CM:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/hs;->fO()Lcom/google/android/gms/internal/hs;

    move-result-object v0

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/hq;->CM:I

    goto :goto_0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/hq;->fD()I

    move-result v1

    iget v0, p0, Lcom/google/android/gms/internal/hq;->CK:I

    iget v2, p0, Lcom/google/android/gms/internal/hq;->CL:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/hq;->buffer:[B

    iget v3, p0, Lcom/google/android/gms/internal/hq;->CL:I

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v2, p0, Lcom/google/android/gms/internal/hq;->CL:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/hq;->CL:I

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/hq;->br(I)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method
