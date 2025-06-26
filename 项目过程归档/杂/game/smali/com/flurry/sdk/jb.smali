.class public abstract Lcom/flurry/sdk/jb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jb$a;
    }
.end annotation


# static fields
.field protected static final a:[Lcom/flurry/sdk/jd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/flurry/sdk/jd;

    sput-object v0, Lcom/flurry/sdk/jb;->a:[Lcom/flurry/sdk/jd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/flurry/sdk/jb$a;
.end method

.method public final a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jb;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->a()Lcom/flurry/sdk/jb$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jb$a;->a(Lcom/flurry/sdk/ip;)Lcom/flurry/sdk/jb$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb$a;)Lcom/flurry/sdk/jb;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/flurry/sdk/jb$a;)Lcom/flurry/sdk/jb;
.end method

.method public final a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jb;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->a()Lcom/flurry/sdk/jb$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jb$a;->a(Lcom/flurry/sdk/jd;)Lcom/flurry/sdk/jb$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb$a;)Lcom/flurry/sdk/jb;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/flurry/sdk/jm;)Lcom/flurry/sdk/jb;
    .locals 1

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->a()Lcom/flurry/sdk/jb$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jb$a;->a(Lcom/flurry/sdk/jm;)Lcom/flurry/sdk/jb$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb$a;)Lcom/flurry/sdk/jb;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/flurry/sdk/ky;)Lcom/flurry/sdk/jb;
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/flurry/sdk/jb;->a()Lcom/flurry/sdk/jb$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/jb$a;->a(Lcom/flurry/sdk/ky;)Lcom/flurry/sdk/jb$a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb$a;)Lcom/flurry/sdk/jb;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/qi;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/qi;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/qk;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/qk;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/ql;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/ql;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/qn;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/qn;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/qo;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/qo;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method

.method public abstract a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method

.method public a(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 327
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method

.method public b(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c(Lcom/flurry/sdk/iy;Lcom/flurry/sdk/jc;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iy;",
            "Lcom/flurry/sdk/jc;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/jg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation
.end method
