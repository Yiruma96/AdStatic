.class public Lcom/flurry/sdk/mj;
.super Lcom/flurry/sdk/lz;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/mj$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lz",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/flurry/sdk/mj;->a:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lz;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/flurry/sdk/mj$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    :pswitch_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 47
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mj;->c(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 51
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mj;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mj;->c(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_4
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->z()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 59
    :pswitch_5
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :pswitch_6
    sget-object v0, Lcom/flurry/sdk/iy$a;->h:Lcom/flurry/sdk/iy$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->v()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->p()Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_7
    sget-object v0, Lcom/flurry/sdk/iy$a;->g:Lcom/flurry/sdk/iy$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->y()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->x()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 80
    :pswitch_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 82
    :pswitch_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 85
    :pswitch_a
    const/4 v0, 0x0

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/jy;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/flurry/sdk/mj$1;->a:[I

    invoke-virtual {v0}, Lcom/flurry/sdk/hm;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 138
    :pswitch_0
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 106
    :pswitch_1
    invoke-virtual {p3, p1, p2}, Lcom/flurry/sdk/jy;->d(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 112
    :pswitch_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 116
    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/iy$a;->h:Lcom/flurry/sdk/iy$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->v()Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 123
    :pswitch_4
    sget-object v0, Lcom/flurry/sdk/iy$a;->g:Lcom/flurry/sdk/iy$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->y()Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->x()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 129
    :pswitch_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 131
    :pswitch_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 133
    :pswitch_7
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->z()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 136
    :pswitch_8
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method protected b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 153
    sget-object v0, Lcom/flurry/sdk/iy$a;->i:Lcom/flurry/sdk/iy$a;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/iy$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mj;->d(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)[Ljava/lang/Object;

    move-result-object v0

    .line 176
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v2, Lcom/flurry/sdk/hm;->e:Lcom/flurry/sdk/hm;

    if-ne v0, v2, :cond_1

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->g()Lcom/flurry/sdk/re;

    move-result-object v5

    .line 161
    invoke-virtual {v5}, Lcom/flurry/sdk/re;->a()[Ljava/lang/Object;

    move-result-object v0

    move v2, v1

    move-object v3, v0

    move v0, v1

    .line 165
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mj;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v6

    .line 166
    add-int/lit8 v0, v0, 0x1

    .line 167
    array-length v4, v3

    if-lt v2, v4, :cond_3

    .line 168
    invoke-virtual {v5, v3}, Lcom/flurry/sdk/re;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move v4, v1

    .line 171
    :goto_1
    add-int/lit8 v2, v4, 0x1

    aput-object v6, v3, v4

    .line 172
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v4

    sget-object v6, Lcom/flurry/sdk/hm;->e:Lcom/flurry/sdk/hm;

    if-ne v4, v6, :cond_2

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    shr-int/lit8 v4, v0, 0x3

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 175
    invoke-virtual {v5, v3, v2, v1}, Lcom/flurry/sdk/re;->a([Ljava/lang/Object;ILjava/util/List;)V

    move-object v0, v1

    .line 176
    goto :goto_0

    :cond_3
    move v4, v2

    goto :goto_1
.end method

.method protected c(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    .line 185
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 186
    sget-object v1, Lcom/flurry/sdk/hm;->b:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 190
    :cond_0
    sget-object v1, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    if-eq v0, v1, :cond_1

    .line 192
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 220
    :goto_0
    return-object v0

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mj;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v2

    .line 197
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v3, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    if-eq v0, v3, :cond_2

    .line 198
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 199
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mj;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v4

    .line 205
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v5, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    if-eq v0, v5, :cond_3

    .line 206
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 207
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 212
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 213
    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {v0, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_4
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mj;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v1

    sget-object v2, Lcom/flurry/sdk/hm;->c:Lcom/flurry/sdk/hm;

    if-ne v1, v2, :cond_4

    goto :goto_0
.end method

.method protected d(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 232
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v2, Lcom/flurry/sdk/hm;->e:Lcom/flurry/sdk/hm;

    if-ne v0, v2, :cond_0

    .line 233
    sget-object v0, Lcom/flurry/sdk/mj;->a:[Ljava/lang/Object;

    .line 246
    :goto_0
    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->g()Lcom/flurry/sdk/re;

    move-result-object v4

    .line 236
    invoke-virtual {v4}, Lcom/flurry/sdk/re;->a()[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 239
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/mj;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v5

    .line 240
    array-length v3, v2

    if-lt v0, v3, :cond_2

    .line 241
    invoke-virtual {v4, v2}, Lcom/flurry/sdk/re;->a([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move v3, v1

    .line 244
    :goto_1
    add-int/lit8 v0, v3, 0x1

    aput-object v5, v2, v3

    .line 245
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v3

    sget-object v5, Lcom/flurry/sdk/hm;->e:Lcom/flurry/sdk/hm;

    if-ne v3, v5, :cond_1

    .line 246
    invoke-virtual {v4, v2, v0}, Lcom/flurry/sdk/re;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v0

    goto :goto_1
.end method
