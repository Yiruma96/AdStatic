.class public Lcom/flurry/sdk/lz$b;
.super Lcom/flurry/sdk/mc;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/mc",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1030
    const-class v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/mc;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 1026
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lz$b;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/math/BigInteger;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 1036
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 1039
    sget-object v1, Lcom/flurry/sdk/hm;->i:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_1

    .line 1040
    sget-object v0, Lcom/flurry/sdk/lz$1;->b:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->q()Lcom/flurry/sdk/hj$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hj$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1054
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1055
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1056
    const/4 v0, 0x0

    .line 1059
    :goto_0
    return-object v0

    .line 1043
    :pswitch_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->u()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 1045
    :cond_1
    sget-object v1, Lcom/flurry/sdk/hm;->j:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_2

    .line 1049
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->y()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 1050
    :cond_2
    sget-object v1, Lcom/flurry/sdk/hm;->h:Lcom/flurry/sdk/hm;

    if-eq v0, v1, :cond_0

    .line 1052
    iget-object v1, p0, Lcom/flurry/sdk/lz$b;->q:Ljava/lang/Class;

    invoke-virtual {p2, v1, v0}, Lcom/flurry/sdk/iz;->a(Ljava/lang/Class;Lcom/flurry/sdk/hm;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 1059
    :cond_3
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v0

    .line 1061
    iget-object v0, p0, Lcom/flurry/sdk/lz$b;->q:Ljava/lang/Class;

    const-string v1, "not a valid representation"

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/iz;->b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 1040
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
