.class public abstract Lcom/flurry/sdk/iz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/flurry/sdk/iy;

.field protected final b:I


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/iy;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/flurry/sdk/iz;->a:Lcom/flurry/sdk/iy;

    .line 35
    iget v0, p1, Lcom/flurry/sdk/iy;->i:I

    iput v0, p0, Lcom/flurry/sdk/iz;->b:I

    .line 36
    return-void
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/iy;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/flurry/sdk/iz;->a:Lcom/flurry/sdk/iy;

    return-object v0
.end method

.method public abstract a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/hm;Ljava/lang/String;)Lcom/flurry/sdk/jh;
.end method

.method public abstract a(Lcom/flurry/sdk/sh;Ljava/lang/String;)Lcom/flurry/sdk/jh;
.end method

.method public abstract a(Ljava/lang/Class;Lcom/flurry/sdk/hm;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/hm;",
            ")",
            "Lcom/flurry/sdk/jh;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/sdk/jh;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/sdk/jh;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")",
            "Lcom/flurry/sdk/jh;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/String;)Lcom/flurry/sdk/jh;
.end method

.method public a(Ljava/lang/Class;)Lcom/flurry/sdk/sh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/sh;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/flurry/sdk/iz;->a:Lcom/flurry/sdk/iy;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/iy;->b(Ljava/lang/Class;)Lcom/flurry/sdk/sh;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Ljava/lang/Object;Lcom/flurry/sdk/is;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract a(Ljava/util/Date;)Ljava/util/Calendar;
.end method

.method public abstract a(Ljava/lang/String;)Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/re;)V
.end method

.method public abstract a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/jg;Ljava/lang/Object;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/hj;",
            "Lcom/flurry/sdk/jg",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation
.end method

.method public a(Lcom/flurry/sdk/iy$a;)Z
    .locals 2

    .prologue
    .line 69
    iget v0, p0, Lcom/flurry/sdk/iz;->b:I

    invoke-virtual {p1}, Lcom/flurry/sdk/iy$a;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/flurry/sdk/jc;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Ljava/lang/Class;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jh;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/sdk/jh;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/String;)Lcom/flurry/sdk/jh;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/flurry/sdk/iz;->d()Lcom/flurry/sdk/hj;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/hj;Ljava/lang/String;)Lcom/flurry/sdk/jh;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/flurry/sdk/ha;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/iz;->a:Lcom/flurry/sdk/iy;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy;->g()Lcom/flurry/sdk/ha;

    move-result-object v0

    return-object v0
.end method

.method public abstract c(Ljava/lang/Class;Ljava/lang/String;)Lcom/flurry/sdk/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/flurry/sdk/jh;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/flurry/sdk/hj;
.end method

.method public final e()Lcom/flurry/sdk/rs;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/flurry/sdk/iz;->a:Lcom/flurry/sdk/iy;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy;->h()Lcom/flurry/sdk/rs;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/flurry/sdk/qs;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/flurry/sdk/iz;->a:Lcom/flurry/sdk/iy;

    invoke-virtual {v0}, Lcom/flurry/sdk/iy;->m()Lcom/flurry/sdk/qs;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()Lcom/flurry/sdk/re;
.end method

.method public abstract h()Lcom/flurry/sdk/qw;
.end method
