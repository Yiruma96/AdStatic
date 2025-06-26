.class public Lcom/flurry/sdk/lv;
.super Lcom/flurry/sdk/lk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/lv$1;,
        Lcom/flurry/sdk/lv$a;,
        Lcom/flurry/sdk/lv$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/lk",
        "<",
        "Lcom/flurry/sdk/hh;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/flurry/sdk/lv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/flurry/sdk/lv;

    invoke-direct {v0}, Lcom/flurry/sdk/lv;-><init>()V

    sput-object v0, Lcom/flurry/sdk/lv;->a:Lcom/flurry/sdk/lv;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/flurry/sdk/hh;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/lk;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcom/flurry/sdk/jg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jg",
            "<+",
            "Lcom/flurry/sdk/hh;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    const-class v0, Lcom/flurry/sdk/rw;

    if-ne p0, v0, :cond_0

    .line 32
    invoke-static {}, Lcom/flurry/sdk/lv$b;->d()Lcom/flurry/sdk/lv$b;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 34
    :cond_0
    const-class v0, Lcom/flurry/sdk/rj;

    if-ne p0, v0, :cond_1

    .line 35
    invoke-static {}, Lcom/flurry/sdk/lv$a;->d()Lcom/flurry/sdk/lv$a;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lcom/flurry/sdk/lv;->a:Lcom/flurry/sdk/lv;

    goto :goto_0
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
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/lv;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/hh;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/jy;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 15
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/lk;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/jy;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/hh;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/hk;
        }
    .end annotation

    .prologue
    .line 56
    sget-object v0, Lcom/flurry/sdk/lv$1;->a:[I

    invoke-virtual {p1}, Lcom/flurry/sdk/hj;->e()Lcom/flurry/sdk/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flurry/sdk/hm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->e()Lcom/flurry/sdk/rs;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/lv;->c(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/rs;)Lcom/flurry/sdk/hh;

    move-result-object v0

    :goto_0
    return-object v0

    .line 58
    :pswitch_0
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->e()Lcom/flurry/sdk/rs;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/lv;->a(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/rs;)Lcom/flurry/sdk/rw;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p2}, Lcom/flurry/sdk/iz;->e()Lcom/flurry/sdk/rs;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/flurry/sdk/lv;->b(Lcom/flurry/sdk/hj;Lcom/flurry/sdk/iz;Lcom/flurry/sdk/rs;)Lcom/flurry/sdk/rj;

    move-result-object v0

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
