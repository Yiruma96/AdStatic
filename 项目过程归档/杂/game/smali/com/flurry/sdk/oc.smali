.class public Lcom/flurry/sdk/oc;
.super Lcom/flurry/sdk/jp;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/flurry/sdk/hq;

.field protected c:Lcom/flurry/sdk/od;

.field protected d:Lcom/flurry/sdk/oa;

.field protected e:Lcom/flurry/sdk/od;

.field protected f:Lcom/flurry/sdk/ob;

.field protected g:Lcom/flurry/sdk/nz;

.field protected h:Lcom/flurry/sdk/oe;

.field protected i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/flurry/sdk/hq;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/flurry/sdk/jp;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/flurry/sdk/oc;->c:Lcom/flurry/sdk/od;

    .line 23
    iput-object v0, p0, Lcom/flurry/sdk/oc;->d:Lcom/flurry/sdk/oa;

    .line 25
    iput-object v0, p0, Lcom/flurry/sdk/oc;->e:Lcom/flurry/sdk/od;

    .line 26
    iput-object v0, p0, Lcom/flurry/sdk/oc;->f:Lcom/flurry/sdk/ob;

    .line 33
    iput-object v0, p0, Lcom/flurry/sdk/oc;->g:Lcom/flurry/sdk/nz;

    .line 40
    iput-object v0, p0, Lcom/flurry/sdk/oc;->h:Lcom/flurry/sdk/oe;

    .line 48
    iput-object v0, p0, Lcom/flurry/sdk/oc;->i:Ljava/util/HashMap;

    .line 58
    iput-object p1, p0, Lcom/flurry/sdk/oc;->a:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/flurry/sdk/oc;->b:Lcom/flurry/sdk/hq;

    .line 60
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Lcom/flurry/sdk/jl;)Lcom/flurry/sdk/oc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jl;",
            ")",
            "Lcom/flurry/sdk/oc;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/flurry/sdk/oc;->f:Lcom/flurry/sdk/ob;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/flurry/sdk/ob;

    invoke-direct {v0}, Lcom/flurry/sdk/ob;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/oc;->f:Lcom/flurry/sdk/ob;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oc;->f:Lcom/flurry/sdk/ob;

    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/ob;->a(Ljava/lang/Class;Lcom/flurry/sdk/jl;)Lcom/flurry/sdk/ob;

    .line 170
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/flurry/sdk/oc;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jp$a;)V
    .locals 3

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/oc;->c:Lcom/flurry/sdk/od;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/flurry/sdk/oc;->c:Lcom/flurry/sdk/od;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jp$a;->a(Lcom/flurry/sdk/jx;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/oc;->d:Lcom/flurry/sdk/oa;

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/flurry/sdk/oc;->d:Lcom/flurry/sdk/oa;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jp$a;->a(Lcom/flurry/sdk/jd;)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/oc;->e:Lcom/flurry/sdk/od;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/flurry/sdk/oc;->e:Lcom/flurry/sdk/od;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jp$a;->b(Lcom/flurry/sdk/jx;)V

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/oc;->f:Lcom/flurry/sdk/ob;

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/flurry/sdk/oc;->f:Lcom/flurry/sdk/ob;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jp$a;->a(Lcom/flurry/sdk/jm;)V

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/flurry/sdk/oc;->g:Lcom/flurry/sdk/nz;

    if-eqz v0, :cond_4

    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/oc;->g:Lcom/flurry/sdk/nz;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jp$a;->a(Lcom/flurry/sdk/ip;)V

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/oc;->h:Lcom/flurry/sdk/oe;

    if-eqz v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/flurry/sdk/oc;->h:Lcom/flurry/sdk/oe;

    invoke-interface {p1, v0}, Lcom/flurry/sdk/jp$a;->a(Lcom/flurry/sdk/ky;)V

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/flurry/sdk/oc;->i:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    .line 255
    iget-object v0, p0, Lcom/flurry/sdk/oc;->i:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {p1, v1, v0}, Lcom/flurry/sdk/jp$a;->a(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0

    .line 259
    :cond_6
    return-void
.end method

.method public b()Lcom/flurry/sdk/hq;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/flurry/sdk/oc;->b:Lcom/flurry/sdk/hq;

    return-object v0
.end method
