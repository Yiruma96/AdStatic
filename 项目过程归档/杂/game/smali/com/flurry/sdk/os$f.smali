.class public final Lcom/flurry/sdk/os$f;
.super Lcom/flurry/sdk/pt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/os;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pt",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lcom/flurry/sdk/os$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/flurry/sdk/os$f;

    invoke-direct {v0}, Lcom/flurry/sdk/os$f;-><init>()V

    sput-object v0, Lcom/flurry/sdk/os$f;->a:Lcom/flurry/sdk/os$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/pt;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/flurry/sdk/hf;->a(J)V

    .line 171
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
    .line 158
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/os$f;->a(Ljava/lang/Long;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method
