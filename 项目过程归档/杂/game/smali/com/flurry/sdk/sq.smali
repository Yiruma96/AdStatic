.class public Lcom/flurry/sdk/sq;
.super Lcom/flurry/sdk/hf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/sq$1;,
        Lcom/flurry/sdk/sq$b;,
        Lcom/flurry/sdk/sq$a;
    }
.end annotation


# static fields
.field protected static final b:I


# instance fields
.field protected c:Lcom/flurry/sdk/hn;

.field protected d:I

.field protected e:Z

.field protected f:Lcom/flurry/sdk/sq$b;

.field protected g:Lcom/flurry/sdk/sq$b;

.field protected h:I

.field protected i:Lcom/flurry/sdk/hx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/flurry/sdk/hj$a;->a()I

    move-result v0

    sput v0, Lcom/flurry/sdk/sq;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/flurry/sdk/hn;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/flurry/sdk/hf;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/flurry/sdk/sq;->c:Lcom/flurry/sdk/hn;

    .line 99
    sget v0, Lcom/flurry/sdk/sq;->b:I

    iput v0, p0, Lcom/flurry/sdk/sq;->d:I

    .line 100
    invoke-static {}, Lcom/flurry/sdk/hx;->g()Lcom/flurry/sdk/hx;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    .line 102
    new-instance v0, Lcom/flurry/sdk/sq$b;

    invoke-direct {v0}, Lcom/flurry/sdk/sq$b;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/sq;->g:Lcom/flurry/sdk/sq$b;

    iput-object v0, p0, Lcom/flurry/sdk/sq;->f:Lcom/flurry/sdk/sq$b;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/flurry/sdk/sq;->h:I

    .line 104
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/hf;
    .locals 0

    .prologue
    .line 327
    return-object p0
.end method

.method public a(Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/hj;
    .locals 3

    .prologue
    .line 145
    new-instance v0, Lcom/flurry/sdk/sq$a;

    iget-object v1, p0, Lcom/flurry/sdk/sq;->f:Lcom/flurry/sdk/sq$b;

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->a()Lcom/flurry/sdk/hn;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/sq$a;-><init>(Lcom/flurry/sdk/sq$b;Lcom/flurry/sdk/hn;)V

    .line 146
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->h()Lcom/flurry/sdk/hg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/sq$a;->a(Lcom/flurry/sdk/hg;)V

    .line 147
    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hn;)Lcom/flurry/sdk/hj;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Lcom/flurry/sdk/sq$a;

    iget-object v1, p0, Lcom/flurry/sdk/sq;->f:Lcom/flurry/sdk/sq$b;

    invoke-direct {v0, v1, p1}, Lcom/flurry/sdk/sq$a;-><init>(Lcom/flurry/sdk/sq$b;Lcom/flurry/sdk/hn;)V

    return-object v0
.end method

.method public a(C)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->i()V

    .line 492
    return-void
.end method

.method public a(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 527
    sget-object v0, Lcom/flurry/sdk/hm;->j:Lcom/flurry/sdk/hm;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 528
    return-void
.end method

.method public a(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 532
    sget-object v0, Lcom/flurry/sdk/hm;->j:Lcom/flurry/sdk/hm;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 533
    return-void
.end method

.method public a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 522
    sget-object v0, Lcom/flurry/sdk/hm;->i:Lcom/flurry/sdk/hm;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 523
    return-void
.end method

.method public a(Lcom/flurry/sdk/ha;[BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 611
    new-array v0, p4, [B

    .line 612
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 613
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method public a(Lcom/flurry/sdk/hf;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v3, p0, Lcom/flurry/sdk/sq;->f:Lcom/flurry/sdk/sq$b;

    .line 170
    const/4 v1, -0x1

    move v0, v1

    move-object v1, v3

    .line 173
    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x10

    if-lt v0, v3, :cond_b

    .line 175
    invoke-virtual {v1}, Lcom/flurry/sdk/sq$b;->a()Lcom/flurry/sdk/sq$b;

    move-result-object v0

    .line 176
    if-nez v0, :cond_1

    .line 262
    :cond_0
    return-void

    :cond_1
    move v1, v2

    move-object v3, v0

    .line 178
    :goto_1
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/sq$b;->a(I)Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 182
    sget-object v4, Lcom/flurry/sdk/sq$1;->a:[I

    invoke-virtual {v0}, Lcom/flurry/sdk/hm;->ordinal()I

    move-result v0

    aget v0, v4, v0

    packed-switch v0, :pswitch_data_0

    .line 259
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->d()V

    :goto_2
    move v0, v1

    move-object v1, v3

    .line 261
    goto :goto_0

    .line 187
    :pswitch_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->e()V

    goto :goto_2

    .line 190
    :pswitch_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->b()V

    goto :goto_2

    .line 193
    :pswitch_3
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->c()V

    goto :goto_2

    .line 198
    :pswitch_4
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/sq$b;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 199
    instance-of v4, v0, Lcom/flurry/sdk/hp;

    if-eqz v4, :cond_2

    .line 200
    check-cast v0, Lcom/flurry/sdk/hp;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->a(Lcom/flurry/sdk/hp;)V

    goto :goto_2

    .line 202
    :cond_2
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 208
    :pswitch_5
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/sq$b;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 209
    instance-of v4, v0, Lcom/flurry/sdk/hp;

    if-eqz v4, :cond_3

    .line 210
    check-cast v0, Lcom/flurry/sdk/hp;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->b(Lcom/flurry/sdk/hp;)V

    goto :goto_2

    .line 212
    :cond_3
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 218
    :pswitch_6
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/sq$b;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 219
    instance-of v4, v0, Ljava/math/BigInteger;

    if-eqz v4, :cond_4

    .line 220
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->a(Ljava/math/BigInteger;)V

    goto :goto_2

    .line 221
    :cond_4
    instance-of v4, v0, Ljava/lang/Long;

    if-eqz v4, :cond_5

    .line 222
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/flurry/sdk/hf;->a(J)V

    goto :goto_2

    .line 224
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->b(I)V

    goto :goto_2

    .line 230
    :pswitch_7
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/sq$b;->b(I)Ljava/lang/Object;

    move-result-object v0

    .line 231
    instance-of v4, v0, Ljava/math/BigDecimal;

    if-eqz v4, :cond_6

    .line 232
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->a(Ljava/math/BigDecimal;)V

    goto :goto_2

    .line 233
    :cond_6
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_7

    .line 234
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->a(F)V

    goto :goto_2

    .line 235
    :cond_7
    instance-of v4, v0, Ljava/lang/Double;

    if-eqz v4, :cond_8

    .line 236
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lcom/flurry/sdk/hf;->a(D)V

    goto/16 :goto_2

    .line 237
    :cond_8
    if-nez v0, :cond_9

    .line 238
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->f()V

    goto/16 :goto_2

    .line 239
    :cond_9
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 240
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 242
    :cond_a
    new-instance v1, Lcom/flurry/sdk/he;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized value type for VALUE_NUMBER_FLOAT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", can not serialize"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/flurry/sdk/he;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :pswitch_8
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->a(Z)V

    goto/16 :goto_2

    .line 250
    :pswitch_9
    invoke-virtual {p1, v2}, Lcom/flurry/sdk/hf;->a(Z)V

    goto/16 :goto_2

    .line 253
    :pswitch_a
    invoke-virtual {p1}, Lcom/flurry/sdk/hf;->f()V

    goto/16 :goto_2

    .line 256
    :pswitch_b
    invoke-virtual {v3, v1}, Lcom/flurry/sdk/sq$b;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->a(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    move-object v3, v1

    move v1, v0

    goto/16 :goto_1

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public a(Lcom/flurry/sdk/hh;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 592
    sget-object v0, Lcom/flurry/sdk/hm;->g:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 593
    return-void
.end method

.method protected final a(Lcom/flurry/sdk/hm;)V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/flurry/sdk/sq;->g:Lcom/flurry/sdk/sq$b;

    iget v1, p0, Lcom/flurry/sdk/sq;->h:I

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/sq$b;->a(ILcom/flurry/sdk/hm;)Lcom/flurry/sdk/sq$b;

    move-result-object v0

    .line 727
    if-nez v0, :cond_0

    .line 728
    iget v0, p0, Lcom/flurry/sdk/sq;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/sq;->h:I

    .line 733
    :goto_0
    return-void

    .line 730
    :cond_0
    iput-object v0, p0, Lcom/flurry/sdk/sq;->g:Lcom/flurry/sdk/sq$b;

    .line 731
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/sq;->h:I

    goto :goto_0
.end method

.method protected final a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/flurry/sdk/sq;->g:Lcom/flurry/sdk/sq$b;

    iget v1, p0, Lcom/flurry/sdk/sq;->h:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/flurry/sdk/sq$b;->a(ILcom/flurry/sdk/hm;Ljava/lang/Object;)Lcom/flurry/sdk/sq$b;

    move-result-object v0

    .line 737
    if-nez v0, :cond_0

    .line 738
    iget v0, p0, Lcom/flurry/sdk/sq;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/sq;->h:I

    .line 743
    :goto_0
    return-void

    .line 740
    :cond_0
    iput-object v0, p0, Lcom/flurry/sdk/sq;->g:Lcom/flurry/sdk/sq$b;

    .line 741
    const/4 v0, 0x1

    iput v0, p0, Lcom/flurry/sdk/sq;->h:I

    goto :goto_0
.end method

.method public a(Lcom/flurry/sdk/hp;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 417
    sget-object v0, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    invoke-interface {p1}, Lcom/flurry/sdk/hp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;)I

    .line 419
    return-void
.end method

.method public a(Lcom/flurry/sdk/im;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 425
    sget-object v0, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    invoke-virtual {p1}, Lcom/flurry/sdk/im;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;)I

    .line 427
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 582
    sget-object v0, Lcom/flurry/sdk/hm;->g:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 583
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 409
    sget-object v0, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/hx;->a(Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method public a(Ljava/math/BigDecimal;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->f()V

    .line 542
    :goto_0
    return-void

    .line 540
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hm;->j:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 546
    if-nez p1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->f()V

    .line 551
    :goto_0
    return-void

    .line 549
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hm;->i:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 563
    if-eqz p1, :cond_0

    sget-object v0, Lcom/flurry/sdk/hm;->k:Lcom/flurry/sdk/hm;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;)V

    .line 564
    return-void

    .line 563
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hm;->l:Lcom/flurry/sdk/hm;

    goto :goto_0
.end method

.method public a([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 446
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->b(Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 369
    sget-object v0, Lcom/flurry/sdk/hm;->d:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;)V

    .line 370
    iget-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Lcom/flurry/sdk/hx;->h()Lcom/flurry/sdk/hx;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    .line 371
    return-void
.end method

.method public b(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 517
    sget-object v0, Lcom/flurry/sdk/hm;->i:Lcom/flurry/sdk/hm;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 518
    return-void
.end method

.method public b(Lcom/flurry/sdk/hj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 625
    sget-object v0, Lcom/flurry/sdk/sq$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 685
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should never end up through this code path"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :pswitch_0
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->d()V

    .line 687
    :goto_0
    return-void

    .line 630
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->e()V

    goto :goto_0

    .line 633
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->b()V

    goto :goto_0

    .line 636
    :pswitch_3
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->c()V

    goto :goto_0

    .line 639
    :pswitch_4
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :pswitch_5
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->l()[C

    move-result-object v0

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->n()I

    move-result v1

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->m()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/flurry/sdk/sq;->a([CII)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :pswitch_6
    sget-object v0, Lcom/flurry/sdk/sq$1;->b:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->q()Lcom/flurry/sdk/hj$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hj$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 657
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->u()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/sq;->a(J)V

    goto :goto_0

    .line 651
    :pswitch_7
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->t()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->b(I)V

    goto :goto_0

    .line 654
    :pswitch_8
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->v()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 661
    :pswitch_9
    sget-object v0, Lcom/flurry/sdk/sq$1;->b:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->q()Lcom/flurry/sdk/hj$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hj$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 669
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->x()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/flurry/sdk/sq;->a(D)V

    goto :goto_0

    .line 663
    :pswitch_a
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->y()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Ljava/math/BigDecimal;)V

    goto :goto_0

    .line 666
    :pswitch_b
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->w()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(F)V

    goto :goto_0

    .line 673
    :pswitch_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Z)V

    goto/16 :goto_0

    .line 676
    :pswitch_d
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Z)V

    goto/16 :goto_0

    .line 679
    :pswitch_e
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->f()V

    goto/16 :goto_0

    .line 682
    :pswitch_f
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->z()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 649
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 661
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public b(Lcom/flurry/sdk/hp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 451
    if-nez p1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->f()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hm;->h:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 437
    if-nez p1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->f()V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    sget-object v0, Lcom/flurry/sdk/hm;->h:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->i()V

    .line 487
    return-void
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 377
    sget-object v0, Lcom/flurry/sdk/hm;->e:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;)V

    .line 379
    iget-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Lcom/flurry/sdk/hx;->j()Lcom/flurry/sdk/hx;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    iput-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    .line 383
    :cond_0
    return-void
.end method

.method public c(Lcom/flurry/sdk/hj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 691
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 694
    sget-object v1, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_0

    .line 695
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Ljava/lang/String;)V

    .line 696
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 700
    :cond_0
    sget-object v1, Lcom/flurry/sdk/sq$1;->a:[I

    invoke-virtual {v0}, Lcom/flurry/sdk/hm;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 716
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/sq;->b(Lcom/flurry/sdk/hj;)V

    .line 718
    :goto_0
    return-void

    .line 702
    :pswitch_1
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->b()V

    .line 703
    :goto_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hm;->e:Lcom/flurry/sdk/hm;

    if-eq v0, v1, :cond_1

    .line 704
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/sq;->c(Lcom/flurry/sdk/hj;)V

    goto :goto_1

    .line 706
    :cond_1
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->c()V

    goto :goto_0

    .line 709
    :pswitch_2
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->d()V

    .line 710
    :goto_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hm;->c:Lcom/flurry/sdk/hm;

    if-eq v0, v1, :cond_2

    .line 711
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/sq;->c(Lcom/flurry/sdk/hj;)V

    goto :goto_2

    .line 713
    :cond_2
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->e()V

    goto :goto_0

    .line 700
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 476
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->i()V

    .line 477
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flurry/sdk/sq;->e:Z

    .line 354
    return-void
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 389
    sget-object v0, Lcom/flurry/sdk/hm;->b:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;)V

    .line 390
    iget-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Lcom/flurry/sdk/hx;->i()Lcom/flurry/sdk/hx;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    .line 391
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->i()V

    .line 497
    return-void
.end method

.method public final e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 397
    sget-object v0, Lcom/flurry/sdk/hm;->c:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;)V

    .line 399
    iget-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    invoke-virtual {v0}, Lcom/flurry/sdk/hx;->j()Lcom/flurry/sdk/hx;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    .line 401
    iput-object v0, p0, Lcom/flurry/sdk/sq;->i:Lcom/flurry/sdk/hx;

    .line 403
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 558
    sget-object v0, Lcom/flurry/sdk/hm;->j:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method public f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 568
    sget-object v0, Lcom/flurry/sdk/hm;->m:Lcom/flurry/sdk/hm;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hm;)V

    .line 569
    return-void
.end method

.method public g()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    return-void
.end method

.method public h()Lcom/flurry/sdk/hj;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/flurry/sdk/sq;->c:Lcom/flurry/sdk/hn;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hn;)Lcom/flurry/sdk/hj;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 746
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Called operation not supported for TokenBuffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 268
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    const-string v0, "[TokenBuffer: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p0}, Lcom/flurry/sdk/sq;->h()Lcom/flurry/sdk/hj;

    move-result-object v2

    .line 273
    const/4 v0, 0x0

    .line 278
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 282
    if-nez v3, :cond_1

    .line 292
    if-lt v0, v5, :cond_0

    .line 293
    const-string v2, " ... (truncated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v0, v0, -0x64

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " entries)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 283
    :cond_1
    if-ge v0, v5, :cond_3

    .line 284
    if-lez v0, :cond_2

    .line 285
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_2
    invoke-virtual {v3}, Lcom/flurry/sdk/hm;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 290
    goto :goto_0
.end method
