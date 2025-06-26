.class public abstract Lcom/flurry/sdk/px;
.super Lcom/flurry/sdk/pw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/util/Collection",
        "<*>;>",
        "Lcom/flurry/sdk/pw",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final b:Lcom/flurry/sdk/is;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/is;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/is;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/pw;-><init>(Ljava/lang/Class;Z)V

    .line 28
    iput-object p2, p0, Lcom/flurry/sdk/px;->b:Lcom/flurry/sdk/is;

    .line 29
    return-void
.end method
