.class public final Lcom/flurry/sdk/kz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/kz$b;,
        Lcom/flurry/sdk/kz$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/flurry/sdk/kz$a;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/flurry/sdk/kt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/flurry/sdk/kz;->c:I

    .line 29
    iget v0, p0, Lcom/flurry/sdk/kz;->c:I

    invoke-static {v0}, Lcom/flurry/sdk/kz;->a(I)I

    move-result v0

    .line 30
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/flurry/sdk/kz;->b:I

    .line 31
    new-array v1, v0, [Lcom/flurry/sdk/kz$a;

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kt;

    .line 33
    invoke-virtual {v0}, Lcom/flurry/sdk/kt;->c()Ljava/lang/String;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    iget v5, p0, Lcom/flurry/sdk/kz;->b:I

    and-int/2addr v4, v5

    .line 35
    new-instance v5, Lcom/flurry/sdk/kz$a;

    aget-object v6, v1, v4

    invoke-direct {v5, v6, v3, v0}, Lcom/flurry/sdk/kz$a;-><init>(Lcom/flurry/sdk/kz$a;Ljava/lang/String;Lcom/flurry/sdk/kt;)V

    aput-object v5, v1, v4

    goto :goto_0

    .line 37
    :cond_0
    iput-object v1, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    .line 38
    return-void
.end method

.method private static final a(I)I
    .locals 2

    .prologue
    .line 55
    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    add-int v0, p0, p0

    .line 56
    :goto_0
    const/4 v1, 0x2

    .line 57
    :goto_1
    if-ge v1, v0, :cond_1

    .line 58
    add-int/2addr v1, v1

    goto :goto_1

    .line 55
    :cond_0
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p0

    goto :goto_0

    .line 60
    :cond_1
    return v1
.end method

.method private a(Ljava/lang/String;I)Lcom/flurry/sdk/kt;
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    aget-object v0, v0, p2

    .line 171
    :goto_0
    if-eqz v0, :cond_1

    .line 172
    iget-object v1, v0, Lcom/flurry/sdk/kz$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v0, v0, Lcom/flurry/sdk/kz$a;->c:Lcom/flurry/sdk/kt;

    .line 177
    :goto_1
    return-object v0

    .line 175
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/kz$a;->a:Lcom/flurry/sdk/kz$a;

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/sdk/kt;
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/flurry/sdk/kz;->b:I

    and-int/2addr v1, v0

    .line 81
    iget-object v0, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    aget-object v0, v0, v1

    .line 83
    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget-object v2, v0, Lcom/flurry/sdk/kz$a;->b:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 88
    iget-object v0, v0, Lcom/flurry/sdk/kz$a;->c:Lcom/flurry/sdk/kt;

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, v0, Lcom/flurry/sdk/kz$a;->a:Lcom/flurry/sdk/kz$a;

    if-eqz v0, :cond_2

    .line 91
    iget-object v2, v0, Lcom/flurry/sdk/kz$a;->b:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 92
    iget-object v0, v0, Lcom/flurry/sdk/kz$a;->c:Lcom/flurry/sdk/kt;

    goto :goto_0

    .line 96
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/flurry/sdk/kz;->a(Ljava/lang/String;I)Lcom/flurry/sdk/kt;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 43
    .line 44
    iget-object v4, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    array-length v5, v4

    move v3, v0

    move v1, v0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 45
    :goto_1
    if-eqz v0, :cond_0

    .line 46
    iget-object v6, v0, Lcom/flurry/sdk/kz$a;->c:Lcom/flurry/sdk/kt;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v6, v1}, Lcom/flurry/sdk/kt;->a(I)V

    .line 47
    iget-object v0, v0, Lcom/flurry/sdk/kz$a;->a:Lcom/flurry/sdk/kz$a;

    move v1, v2

    goto :goto_1

    .line 44
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public a(Lcom/flurry/sdk/kt;)V
    .locals 8

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/flurry/sdk/kt;->c()Ljava/lang/String;

    move-result-object v4

    .line 107
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int v5, v0, v1

    .line 112
    const/4 v2, 0x0

    .line 113
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    aget-object v0, v0, v5

    move-object v3, v0

    move v0, v1

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 118
    if-nez v0, :cond_0

    iget-object v2, v3, Lcom/flurry/sdk/kz$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const/4 v0, 0x1

    .line 116
    :goto_1
    iget-object v2, v3, Lcom/flurry/sdk/kz$a;->a:Lcom/flurry/sdk/kz$a;

    move-object v3, v2

    goto :goto_0

    .line 121
    :cond_0
    new-instance v2, Lcom/flurry/sdk/kz$a;

    iget-object v6, v3, Lcom/flurry/sdk/kz$a;->b:Ljava/lang/String;

    iget-object v7, v3, Lcom/flurry/sdk/kz$a;->c:Lcom/flurry/sdk/kt;

    invoke-direct {v2, v1, v6, v7}, Lcom/flurry/sdk/kz$a;-><init>(Lcom/flurry/sdk/kz$a;Ljava/lang/String;Lcom/flurry/sdk/kt;)V

    move-object v1, v2

    goto :goto_1

    .line 125
    :cond_1
    if-nez v0, :cond_2

    .line 126
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found, can\'t replace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    new-instance v2, Lcom/flurry/sdk/kz$a;

    invoke-direct {v2, v1, v4, p1}, Lcom/flurry/sdk/kz$a;-><init>(Lcom/flurry/sdk/kz$a;Ljava/lang/String;Lcom/flurry/sdk/kt;)V

    aput-object v2, v0, v5

    .line 132
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/flurry/sdk/kz;->c:I

    return v0
.end method

.method public b(Lcom/flurry/sdk/kt;)V
    .locals 8

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/flurry/sdk/kt;->c()Ljava/lang/String;

    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int v5, v0, v1

    .line 145
    const/4 v2, 0x0

    .line 146
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    aget-object v0, v0, v5

    move-object v3, v0

    move v0, v1

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    .line 150
    if-nez v0, :cond_0

    iget-object v2, v3, Lcom/flurry/sdk/kz$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    const/4 v0, 0x1

    .line 148
    :goto_1
    iget-object v2, v3, Lcom/flurry/sdk/kz$a;->a:Lcom/flurry/sdk/kz$a;

    move-object v3, v2

    goto :goto_0

    .line 153
    :cond_0
    new-instance v2, Lcom/flurry/sdk/kz$a;

    iget-object v6, v3, Lcom/flurry/sdk/kz$a;->b:Ljava/lang/String;

    iget-object v7, v3, Lcom/flurry/sdk/kz$a;->c:Lcom/flurry/sdk/kt;

    invoke-direct {v2, v1, v6, v7}, Lcom/flurry/sdk/kz$a;-><init>(Lcom/flurry/sdk/kz$a;Ljava/lang/String;Lcom/flurry/sdk/kt;)V

    move-object v1, v2

    goto :goto_1

    .line 156
    :cond_1
    if-nez v0, :cond_2

    .line 157
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found, can\'t remove"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    aput-object v1, v0, v5

    .line 160
    return-void
.end method

.method public c()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/flurry/sdk/kt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Lcom/flurry/sdk/kz$b;

    iget-object v1, p0, Lcom/flurry/sdk/kz;->a:[Lcom/flurry/sdk/kz$a;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/kz$b;-><init>([Lcom/flurry/sdk/kz$a;)V

    return-object v0
.end method
