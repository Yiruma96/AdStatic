.class public Lcom/flurry/sdk/nn;
.super Lcom/flurry/sdk/nj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/nn$1;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/nh;Lcom/flurry/sdk/is;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/nh;",
            "Lcom/flurry/sdk/is;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/nj;-><init>(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/nh;Lcom/flurry/sdk/is;Ljava/lang/Class;)V

    .line 39
    iput-object p5, p0, Lcom/flurry/sdk/nn;->a:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;->PROPERTY:Lcom/flurry/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    .line 60
    sget-object v2, Lcom/flurry/sdk/hm;->b:Lcom/flurry/sdk/hm;

    if-ne v0, v2, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v0

    :cond_0
    move-object v2, v0

    move-object v0, v1

    .line 77
    :goto_0
    sget-object v3, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    if-ne v2, v3, :cond_6

    .line 78
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->g()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    .line 80
    iget-object v3, p0, Lcom/flurry/sdk/nn;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 81
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {p0, p2, v1}, Lcom/flurry/sdk/nn;->a(Lcom/flurry/sdk/iz;Ljava/lang/String;)Lcom/flurry/sdk/jg;

    move-result-object v1

    .line 84
    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/so;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/so;

    move-result-object p1

    .line 90
    :cond_1
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    .line 92
    invoke-virtual {v1, p1, p2}, Lcom/flurry/sdk/jg;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    :goto_1
    return-object v0

    .line 62
    :cond_2
    sget-object v2, Lcom/flurry/sdk/hm;->d:Lcom/flurry/sdk/hm;

    if-ne v0, v2, :cond_3

    .line 70
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/sdk/nn;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/sq;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 71
    :cond_3
    sget-object v2, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    if-eq v0, v2, :cond_0

    .line 72
    invoke-virtual {p0, p1, p2, v1}, Lcom/flurry/sdk/nn;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/sq;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 94
    :cond_4
    if-nez v0, :cond_5

    .line 95
    new-instance v0, Lcom/flurry/sdk/sq;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/sq;-><init>(Lcom/flurry/sdk/hn;)V

    .line 97
    :cond_5
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/sq;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/sq;->c(Lcom/flurry/sdk/hj;)V

    .line 77
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    move-result-object v2

    goto :goto_0

    .line 100
    :cond_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/nn;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/sq;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/sq;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flurry/sdk/nn;->e:Lcom/flurry/sdk/sh;

    if-eqz v0, :cond_2

    .line 110
    invoke-virtual {p0, p2}, Lcom/flurry/sdk/nn;->a(Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/jg;

    move-result-object v0

    .line 111
    if-eqz p3, :cond_0

    .line 112
    invoke-virtual {p3}, Lcom/flurry/sdk/sq;->e()V

    .line 113
    invoke-virtual {p3, p1}, Lcom/flurry/sdk/sq;->a(Lcom/flurry/sdk/hj;)Lcom/flurry/sdk/hj;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    .line 117
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jg;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    :cond_1
    :goto_0
    return-object v0

    .line 120
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/nn;->f(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hm;->d:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_3

    .line 126
    invoke-super {p0, p1, p2}, Lcom/flurry/sdk/nj;->d(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 128
    :cond_3
    sget-object v0, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/nn;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' that is to contain type id  (for class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/flurry/sdk/nn;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/flurry/sdk/iz;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/hm;Ljava/lang/String;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/nn;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hm;->d:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_0

    .line 144
    invoke-super {p0, p1, p2}, Lcom/flurry/sdk/nj;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/nn;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected f(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/flurry/sdk/nn$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 163
    :pswitch_0
    iget-object v0, p0, Lcom/flurry/sdk/nn;->c:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/nn;->c:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/nn;->c:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->x()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 179
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/sdk/nn;->c:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 184
    :pswitch_4
    iget-object v0, p0, Lcom/flurry/sdk/nn;->c:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
