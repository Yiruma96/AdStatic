.class public Lcom/flurry/sdk/gr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gr$1;,
        Lcom/flurry/sdk/gr$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/fn;Ljava/util/Map;)Lcom/flurry/sdk/gq;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/fn;",
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/gr$a;",
            "Lcom/flurry/sdk/gq;",
            ">;)",
            "Lcom/flurry/sdk/gq;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 50
    sget-object v0, Lcom/flurry/sdk/gr$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->a()Lcom/flurry/sdk/fn$v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/fn$v;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unexpected schema type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :pswitch_0
    sget-object v0, Lcom/flurry/sdk/gq;->c:Lcom/flurry/sdk/gq;

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 54
    :pswitch_1
    sget-object v0, Lcom/flurry/sdk/gq;->d:Lcom/flurry/sdk/gq;

    goto :goto_0

    .line 56
    :pswitch_2
    sget-object v0, Lcom/flurry/sdk/gq;->e:Lcom/flurry/sdk/gq;

    goto :goto_0

    .line 58
    :pswitch_3
    sget-object v0, Lcom/flurry/sdk/gq;->f:Lcom/flurry/sdk/gq;

    goto :goto_0

    .line 60
    :pswitch_4
    sget-object v0, Lcom/flurry/sdk/gq;->g:Lcom/flurry/sdk/gq;

    goto :goto_0

    .line 62
    :pswitch_5
    sget-object v0, Lcom/flurry/sdk/gq;->h:Lcom/flurry/sdk/gq;

    goto :goto_0

    .line 64
    :pswitch_6
    sget-object v0, Lcom/flurry/sdk/gq;->i:Lcom/flurry/sdk/gq;

    goto :goto_0

    .line 66
    :pswitch_7
    sget-object v0, Lcom/flurry/sdk/gq;->j:Lcom/flurry/sdk/gq;

    goto :goto_0

    .line 68
    :pswitch_8
    new-array v0, v8, [Lcom/flurry/sdk/gq;

    new-instance v1, Lcom/flurry/sdk/gq$h;

    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->l()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/flurry/sdk/gq$h;-><init>(I)V

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/gq;->k:Lcom/flurry/sdk/gq;

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/flurry/sdk/gq;->b([Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_9
    new-array v0, v8, [Lcom/flurry/sdk/gq;

    new-instance v1, Lcom/flurry/sdk/gq$h;

    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/flurry/sdk/gq$h;-><init>(I)V

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/gq;->l:Lcom/flurry/sdk/gq;

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/flurry/sdk/gq;->b([Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_a
    new-array v0, v8, [Lcom/flurry/sdk/gq;

    sget-object v1, Lcom/flurry/sdk/gq;->o:Lcom/flurry/sdk/gq;

    new-array v3, v7, [Lcom/flurry/sdk/gq;

    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->i()Lcom/flurry/sdk/fn;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/fn;Ljava/util/Map;)Lcom/flurry/sdk/gq;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v1, v3}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;[Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/gq;->n:Lcom/flurry/sdk/gq;

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/flurry/sdk/gq;->b([Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;

    move-result-object v0

    goto :goto_0

    .line 77
    :pswitch_b
    new-array v0, v8, [Lcom/flurry/sdk/gq;

    sget-object v1, Lcom/flurry/sdk/gq;->q:Lcom/flurry/sdk/gq;

    new-array v3, v8, [Lcom/flurry/sdk/gq;

    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->j()Lcom/flurry/sdk/fn;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/fn;Ljava/util/Map;)Lcom/flurry/sdk/gq;

    move-result-object v4

    aput-object v4, v3, v2

    sget-object v4, Lcom/flurry/sdk/gq;->i:Lcom/flurry/sdk/gq;

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Lcom/flurry/sdk/gq;->a(Lcom/flurry/sdk/gq;[Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/gq;->p:Lcom/flurry/sdk/gq;

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/flurry/sdk/gq;->b([Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :pswitch_c
    new-instance v1, Lcom/flurry/sdk/gr$a;

    invoke-direct {v1, p1}, Lcom/flurry/sdk/gr$a;-><init>(Lcom/flurry/sdk/fn;)V

    .line 82
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/gq;

    .line 83
    if-nez v0, :cond_0

    .line 84
    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Lcom/flurry/sdk/gq;

    .line 90
    invoke-static {v3}, Lcom/flurry/sdk/gq;->b([Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;

    move-result-object v2

    .line 91
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    array-length v0, v3

    .line 94
    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fn$f;

    .line 95
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0}, Lcom/flurry/sdk/fn$f;->c()Lcom/flurry/sdk/fn;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/fn;Ljava/util/Map;)Lcom/flurry/sdk/gq;

    move-result-object v0

    aput-object v0, v3, v1

    goto :goto_1

    .line 101
    :pswitch_d
    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->k()Ljava/util/List;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Lcom/flurry/sdk/gq;

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/flurry/sdk/fn;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/fn;

    .line 107
    invoke-virtual {p0, v0, p2}, Lcom/flurry/sdk/gr;->a(Lcom/flurry/sdk/fn;Ljava/util/Map;)Lcom/flurry/sdk/gq;

    move-result-object v6

    aput-object v6, v3, v1

    .line 108
    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->g()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 111
    :cond_1
    new-array v0, v8, [Lcom/flurry/sdk/gq;

    invoke-static {v3, v4}, Lcom/flurry/sdk/gq;->a([Lcom/flurry/sdk/gq;[Ljava/lang/String;)Lcom/flurry/sdk/gq;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/gq;->m:Lcom/flurry/sdk/gq;

    aput-object v1, v0, v7

    invoke-static {v0}, Lcom/flurry/sdk/gq;->b([Lcom/flurry/sdk/gq;)Lcom/flurry/sdk/gq;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-object v0, v2

    goto/16 :goto_0

    .line 50
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
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
