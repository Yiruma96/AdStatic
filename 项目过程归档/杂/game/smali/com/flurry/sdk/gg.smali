.class public Lcom/flurry/sdk/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/gg$1;,
        Lcom/flurry/sdk/gg$a;
    }
.end annotation


# static fields
.field private static final b:Lcom/flurry/sdk/gg;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/flurry/sdk/gg$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gg$a;-><init>(Lcom/flurry/sdk/gg$1;)V

    sput-object v0, Lcom/flurry/sdk/gg;->b:Lcom/flurry/sdk/gg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/16 v0, 0x2000

    iput v0, p0, Lcom/flurry/sdk/gg;->a:I

    .line 44
    return-void
.end method

.method public static a()Lcom/flurry/sdk/gg;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/flurry/sdk/gg;->b:Lcom/flurry/sdk/gg;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Lcom/flurry/sdk/gb;)Lcom/flurry/sdk/gb;
    .locals 2

    .prologue
    .line 132
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/sdk/gb;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    new-instance v0, Lcom/flurry/sdk/gb;

    iget v1, p0, Lcom/flurry/sdk/gg;->a:I

    invoke-direct {v0, p1, v1}, Lcom/flurry/sdk/gb;-><init>(Ljava/io/InputStream;I)V

    .line 135
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/flurry/sdk/gg;->a:I

    invoke-virtual {p2, p1, v0}, Lcom/flurry/sdk/gb;->a(Ljava/io/InputStream;I)Lcom/flurry/sdk/gb;

    move-result-object v0

    goto :goto_0
.end method

.method public a([BIILcom/flurry/sdk/gb;)Lcom/flurry/sdk/gb;
    .locals 2

    .prologue
    .line 214
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/flurry/sdk/gb;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    :cond_0
    new-instance v0, Lcom/flurry/sdk/gb;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/sdk/gb;-><init>([BII)V

    .line 217
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p4, p1, p2, p3}, Lcom/flurry/sdk/gb;->a([BII)Lcom/flurry/sdk/gb;

    move-result-object v0

    goto :goto_0
.end method

.method public a([BLcom/flurry/sdk/gb;)Lcom/flurry/sdk/gb;
    .locals 2

    .prologue
    .line 234
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/flurry/sdk/gg;->a([BIILcom/flurry/sdk/gb;)Lcom/flurry/sdk/gb;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/gf;)Lcom/flurry/sdk/gl;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    new-instance v0, Lcom/flurry/sdk/gl;

    invoke-direct {v0, p1, p2, p3}, Lcom/flurry/sdk/gl;-><init>(Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/gf;)V

    return-object v0
.end method
