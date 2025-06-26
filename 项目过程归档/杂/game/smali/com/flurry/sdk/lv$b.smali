.class final Lcom/flurry/sdk/lv$b;
.super Lcom/flurry/sdk/lk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/lv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lk",
        "<",
        "Lcom/flurry/sdk/rw;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/flurry/sdk/lv$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/sdk/lv$b;

    invoke-direct {v0}, Lcom/flurry/sdk/lv$b;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lv$b;->a:Lcom/flurry/sdk/lv$b;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/flurry/sdk/rw;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lk;-><init>(Ljava/lang/Class;)V

    .line 79
    return-void
.end method

.method public static d()Lcom/flurry/sdk/lv$b;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/flurry/sdk/lv$b;->a:Lcom/flurry/sdk/lv$b;

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
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lv$b;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/rw;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/rw;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hm;->b:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->b()Lcom/flurry/sdk/hm;

    .line 89
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->e()Lcom/flurry/sdk/rs;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/lv$b;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/rs;)Lcom/flurry/sdk/rw;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v0

    sget-object v1, Lcom/flurry/sdk/hm;->f:Lcom/flurry/sdk/hm;

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->e()Lcom/flurry/sdk/rs;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/lv$b;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/rs;)Lcom/flurry/sdk/rw;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_1
    const-class v0, Lcom/flurry/sdk/rw;

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/iz;->b(Ljava/lang/Class;)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0
.end method
