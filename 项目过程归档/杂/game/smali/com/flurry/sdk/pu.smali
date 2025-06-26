.class public Lcom/flurry/sdk/pu;
.super Lcom/flurry/sdk/oq;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/oq",
        "<",
        "Lcom/flurry/sdk/ji;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/pu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/flurry/sdk/pu;

    invoke-direct {v0}, Lcom/flurry/sdk/pu;-><init>()V

    sput-object v0, Lcom/flurry/sdk/pu;->a:Lcom/flurry/sdk/pu;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/flurry/sdk/ji;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/oq;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/ji;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 40
    invoke-interface {p1, p2, p3}, Lcom/flurry/sdk/ji;->a(Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    .line 41
    return-void
.end method

.method public final a(Lcom/flurry/sdk/ji;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 52
    instance-of v0, p1, Lcom/flurry/sdk/jj;

    if-eqz v0, :cond_0

    .line 53
    check-cast p1, Lcom/flurry/sdk/jj;

    invoke-interface {p1, p2, p3, p4}, Lcom/flurry/sdk/jj;->a(Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pu;->a(Lcom/flurry/sdk/ji;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/flurry/sdk/ji;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pu;->a(Lcom/flurry/sdk/ji;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 27
    check-cast p1, Lcom/flurry/sdk/ji;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/pu;->a(Lcom/flurry/sdk/ji;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V

    return-void
.end method
