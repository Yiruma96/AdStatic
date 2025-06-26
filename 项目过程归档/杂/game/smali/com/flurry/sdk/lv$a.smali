.class final Lcom/flurry/sdk/lv$a;
.super Lcom/flurry/sdk/lk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lk",
        "<",
        "Lcom/flurry/sdk/rj;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/flurry/sdk/lv$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/flurry/sdk/lv$a;

    invoke-direct {v0}, Lcom/flurry/sdk/lv$a;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lv$a;->a:Lcom/flurry/sdk/lv$a;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/flurry/sdk/rj;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lk;-><init>(Ljava/lang/Class;)V

    .line 105
    return-void
.end method

.method public static d()Lcom/flurry/sdk/lv$a;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/flurry/sdk/lv$a;->a:Lcom/flurry/sdk/lv$a;

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lv$a;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/rj;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/rj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->e()Lcom/flurry/sdk/rs;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/lv$a;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/rs;)Lcom/flurry/sdk/rj;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    const-class v0, Lcom/flurry/sdk/rj;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0
.end method
