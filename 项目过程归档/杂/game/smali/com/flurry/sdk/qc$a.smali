.class public Lcom/flurry/sdk/qc$a;
.super Lcom/flurry/sdk/pw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/qc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/pw",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field protected static final a:Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jk",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/flurry/sdk/qc$a;

    invoke-direct {v0}, Lcom/flurry/sdk/qc$a;-><init>()V

    sput-object v0, Lcom/flurry/sdk/qc$a;->a:Lcom/flurry/sdk/jk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/flurry/sdk/pw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 81
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/qc$a;->a(Ljava/util/Calendar;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public a(Ljava/util/Calendar;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p2}, Lcom/flurry/sdk/jw;->b(JLcom/flurry/sdk/hf;)V

    .line 93
    return-void
.end method
