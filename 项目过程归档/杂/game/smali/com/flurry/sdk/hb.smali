.class public final Lcom/flurry/sdk/hb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/flurry/sdk/ha;

.field public static final b:Lcom/flurry/sdk/ha;

.field public static final c:Lcom/flurry/sdk/ha;

.field public static final d:Lcom/flurry/sdk/ha;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x7fffffff

    const/16 v4, 0x3d

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 38
    new-instance v0, Lcom/flurry/sdk/ha;

    const-string v1, "MIME"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/16 v5, 0x4c

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/ha;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/ha;

    .line 49
    new-instance v0, Lcom/flurry/sdk/ha;

    sget-object v1, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/ha;

    const-string v2, "MIME-NO-LINEFEEDS"

    invoke-direct {v0, v1, v2, v7}, Lcom/flurry/sdk/ha;-><init>(Lcom/flurry/sdk/ha;Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hb;->b:Lcom/flurry/sdk/ha;

    .line 56
    new-instance v0, Lcom/flurry/sdk/ha;

    sget-object v1, Lcom/flurry/sdk/hb;->a:Lcom/flurry/sdk/ha;

    const-string v2, "PEM"

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/ha;-><init>(Lcom/flurry/sdk/ha;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/flurry/sdk/hb;->c:Lcom/flurry/sdk/ha;

    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 73
    const-string v0, "+"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 74
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x5f

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 78
    new-instance v0, Lcom/flurry/sdk/ha;

    const-string v1, "MODIFIED-FOR-URL"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v6

    move v4, v6

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/ha;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/flurry/sdk/hb;->d:Lcom/flurry/sdk/ha;

    .line 79
    return-void
.end method

.method public static a()Lcom/flurry/sdk/ha;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/flurry/sdk/hb;->b:Lcom/flurry/sdk/ha;

    return-object v0
.end method
