.class public Lcom/flurry/sdk/im;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/hp;


# instance fields
.field protected final a:Ljava/lang/String;

.field protected b:[B

.field protected c:[B

.field protected d:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()[C
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/flurry/sdk/im;->d:[C

    .line 57
    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/flurry/sdk/ig;->a()Lcom/flurry/sdk/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ig;->a(Ljava/lang/String;)[C

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/flurry/sdk/im;->d:[C

    .line 61
    :cond_0
    return-object v0
.end method

.method public final c()[B
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/flurry/sdk/im;->c:[B

    .line 72
    if-nez v0, :cond_0

    .line 73
    invoke-static {}, Lcom/flurry/sdk/ig;->a()Lcom/flurry/sdk/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ig;->c(Ljava/lang/String;)[B

    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/flurry/sdk/im;->c:[B

    .line 76
    :cond_0
    return-object v0
.end method

.method public final d()[B
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flurry/sdk/im;->b:[B

    .line 87
    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/flurry/sdk/ig;->a()Lcom/flurry/sdk/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/ig;->b(Ljava/lang/String;)[B

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/flurry/sdk/im;->b:[B

    .line 91
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 109
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    .line 112
    :goto_0
    return v0

    .line 110
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_2
    check-cast p1, Lcom/flurry/sdk/im;

    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/flurry/sdk/im;->a:Ljava/lang/String;

    return-object v0
.end method
