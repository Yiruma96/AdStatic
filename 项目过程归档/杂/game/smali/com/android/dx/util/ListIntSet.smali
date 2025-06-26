.class public Lcom/android/dx/util/ListIntSet;
.super Ljava/lang/Object;
.source "ListIntSet.java"

# interfaces
.implements Lcom/android/dx/util/IntSet;


# instance fields
.field final ints:Lcom/android/dx/util/IntList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/dx/util/IntList;

    invoke-direct {v0}, Lcom/android/dx/util/IntList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    .line 34
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->sort()V

    .line 35
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->binarysearch(I)I

    move-result v0

    .line 41
    if-gez v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {v1, v0, p1}, Lcom/android/dx/util/IntList;->insert(II)V

    .line 44
    :cond_0
    return-void
.end method

.method public elements()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    return v0
.end method

.method public has(I)Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lcom/android/dx/util/IntIterator;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Lcom/android/dx/util/ListIntSet$1;

    invoke-direct {v0, p0}, Lcom/android/dx/util/ListIntSet$1;-><init>(Lcom/android/dx/util/ListIntSet;)V

    return-object v0
.end method

.method public merge(Lcom/android/dx/util/IntSet;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Lcom/android/dx/util/ListIntSet;

    if-eqz v1, :cond_6

    .line 63
    check-cast p1, Lcom/android/dx/util/ListIntSet;

    .line 64
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v3

    .line 65
    iget-object v1, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v1}, Lcom/android/dx/util/IntList;->size()I

    move-result v4

    move v1, v0

    .line 70
    :cond_0
    if-ge v0, v4, :cond_2

    if-ge v1, v3, :cond_2

    .line 71
    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v2, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v2, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v5, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 72
    iget-object v5, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v5, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dx/util/ListIntSet;->add(I)V

    move v0, v2

    goto :goto_0

    .line 74
    :cond_1
    if-ne v0, v4, :cond_3

    .line 82
    :cond_2
    :goto_1
    if-ge v0, v4, :cond_4

    .line 83
    iget-object v2, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v2, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dx/util/ListIntSet;->add(I)V

    move v0, v1

    goto :goto_1

    .line 77
    :cond_3
    :goto_2
    if-ge v1, v3, :cond_0

    iget-object v2, p1, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v2, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    iget-object v5, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v5, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 86
    :cond_4
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->sort()V

    .line 100
    :cond_5
    :goto_3
    return-void

    .line 87
    :cond_6
    instance-of v1, p1, Lcom/android/dx/util/BitIntSet;

    if-eqz v1, :cond_8

    .line 88
    check-cast p1, Lcom/android/dx/util/BitIntSet;

    .line 90
    :goto_4
    if-ltz v0, :cond_7

    .line 91
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->add(I)V

    .line 90
    iget-object v1, p1, Lcom/android/dx/util/BitIntSet;->bits:[I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    goto :goto_4

    .line 93
    :cond_7
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->sort()V

    goto :goto_3

    .line 95
    :cond_8
    invoke-interface {p1}, Lcom/android/dx/util/IntSet;->iterator()Lcom/android/dx/util/IntIterator;

    move-result-object v0

    .line 96
    :goto_5
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    invoke-interface {v0}, Lcom/android/dx/util/IntIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/dx/util/ListIntSet;->add(I)V

    goto :goto_5
.end method

.method public remove(I)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    .line 50
    if-ltz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v1, v0}, Lcom/android/dx/util/IntList;->removeIndex(I)V

    .line 53
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/dx/util/ListIntSet;->ints:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
