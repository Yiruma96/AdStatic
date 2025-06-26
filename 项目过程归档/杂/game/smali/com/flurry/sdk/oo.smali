.class public abstract Lcom/flurry/sdk/oo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/oo$a;,
        Lcom/flurry/sdk/oo$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/flurry/sdk/oi;[Ljava/lang/Class;)Lcom/flurry/sdk/oi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/oi;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/oi;"
        }
    .end annotation

    .prologue
    .line 18
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 19
    new-instance v0, Lcom/flurry/sdk/oo$b;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, p0, v1}, Lcom/flurry/sdk/oo$b;-><init>(Lcom/flurry/sdk/oi;Ljava/lang/Class;)V

    .line 21
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/flurry/sdk/oo$a;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/oo$a;-><init>(Lcom/flurry/sdk/oi;[Ljava/lang/Class;)V

    goto :goto_0
.end method
