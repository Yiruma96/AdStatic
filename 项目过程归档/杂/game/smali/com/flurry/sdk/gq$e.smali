.class public final Lcom/flurry/sdk/gq$e;
.super Lcom/flurry/sdk/gq$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final z:[Lcom/flurry/sdk/fn$f;


# direct methods
.method public constructor <init>([Lcom/flurry/sdk/fn$f;)V
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/gq$g;-><init>(Lcom/flurry/sdk/gq$1;)V

    .line 467
    iput-object p1, p0, Lcom/flurry/sdk/gq$e;->z:[Lcom/flurry/sdk/fn$f;

    .line 468
    return-void
.end method
