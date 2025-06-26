.class public Lcom/flurry/sdk/pv;
.super Lcom/flurry/sdk/pw;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pw",
        "<",
        "Lcom/flurry/sdk/jj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/flurry/sdk/pv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/flurry/sdk/pv;

    invoke-direct {v0}, Lcom/flurry/sdk/pv;-><init>()V

    sput-object v0, Lcom/flurry/sdk/pv;->a:Lcom/flurry/sdk/pv;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/flurry/sdk/jj;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/pw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jj;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1, p2, p3}, Lcom/flurry/sdk/jj;->a(Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    .line 39
    return-void
.end method

.method public final a(Lcom/flurry/sdk/jj;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1, p2, p3, p4}, Lcom/flurry/sdk/jj;->a(Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V

    .line 47
    return-void
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
    .line 25
    check-cast p1, Lcom/flurry/sdk/jj;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pv;->a(Lcom/flurry/sdk/jj;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

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
    .line 25
    check-cast p1, Lcom/flurry/sdk/jj;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/flurry/sdk/pv;->a(Lcom/flurry/sdk/jj;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V

    return-void
.end method
