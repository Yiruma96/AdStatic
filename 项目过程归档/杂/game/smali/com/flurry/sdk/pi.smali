.class public Lcom/flurry/sdk/pi;
.super Lcom/flurry/sdk/pt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pt",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/rb;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/rb;)V
    .locals 2

    .prologue
    .line 36
    const-class v0, Ljava/lang/Enum;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/pt;-><init>(Ljava/lang/Class;Z)V

    .line 37
    iput-object p1, p0, Lcom/flurry/sdk/pi;->a:Lcom/flurry/sdk/rb;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/Class;Lcom/flurry/sdk/ju;Lcom/flurry/sdk/mw;)Lcom/flurry/sdk/pi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Lcom/flurry/sdk/ju;",
            "Lcom/flurry/sdk/mw;",
            ")",
            "Lcom/flurry/sdk/pi;"
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/flurry/sdk/ju;->a()Lcom/flurry/sdk/iq;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/flurry/sdk/ju$a;->t:Lcom/flurry/sdk/ju$a;

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/ju;->a(Lcom/flurry/sdk/ju$a;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/flurry/sdk/rb;->c(Ljava/lang/Class;Lcom/flurry/sdk/iq;)Lcom/flurry/sdk/rb;

    move-result-object v0

    .line 47
    :goto_0
    new-instance v1, Lcom/flurry/sdk/pi;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/pi;-><init>(Lcom/flurry/sdk/rb;)V

    return-object v1

    .line 45
    :cond_0
    invoke-static {p0, v0}, Lcom/flurry/sdk/rb;->b(Ljava/lang/Class;Lcom/flurry/sdk/iq;)Lcom/flurry/sdk/rb;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Enum;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;",
            "Lcom/flurry/sdk/hf;",
            "Lcom/flurry/sdk/jw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/flurry/sdk/ju$a;->u:Lcom/flurry/sdk/ju$a;

    invoke-virtual {p3, v0}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/ju$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hf;->b(I)V

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/pi;->a:Lcom/flurry/sdk/rb;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/rb;->a(Ljava/lang/Enum;)Lcom/flurry/sdk/im;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/flurry/sdk/hf;->b(Lcom/flurry/sdk/hp;)V

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
    .line 24
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pi;->a(Ljava/lang/Enum;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public d()Lcom/flurry/sdk/rb;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/pi;->a:Lcom/flurry/sdk/rb;

    return-object v0
.end method
