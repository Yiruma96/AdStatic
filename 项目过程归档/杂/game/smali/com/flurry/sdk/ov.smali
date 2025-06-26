.class public abstract Lcom/flurry/sdk/ov;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ov$c;,
        Lcom/flurry/sdk/ov$a;,
        Lcom/flurry/sdk/ov$e;,
        Lcom/flurry/sdk/ov$b;,
        Lcom/flurry/sdk/ov$f;,
        Lcom/flurry/sdk/ov$d;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method public static a()Lcom/flurry/sdk/ov;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/flurry/sdk/ov$b;->a:Lcom/flurry/sdk/ov$b;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Class;)Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public final a(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/ov$d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p2, p1, p3}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/flurry/sdk/ov$d;

    invoke-virtual {p1}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/flurry/sdk/ov;->a(Ljava/lang/Class;Lcom/flurry/sdk/jk;)Lcom/flurry/sdk/ov;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/flurry/sdk/ov$d;-><init>(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/ov;)V

    return-object v1
.end method

.method public final a(Ljava/lang/Class;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/ov$d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/is;",
            ")",
            "Lcom/flurry/sdk/ov$d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p2, p1, p3}, Lcom/flurry/sdk/jw;->a(Ljava/lang/Class;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/flurry/sdk/ov$d;

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/ov;->a(Ljava/lang/Class;Lcom/flurry/sdk/jk;)Lcom/flurry/sdk/ov;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/flurry/sdk/ov$d;-><init>(Lcom/flurry/sdk/jk;Lcom/flurry/sdk/ov;)V

    return-object v1
.end method

.method public abstract a(Ljava/lang/Class;Lcom/flurry/sdk/jk;)Lcom/flurry/sdk/ov;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/ov;"
        }
    .end annotation
.end method
