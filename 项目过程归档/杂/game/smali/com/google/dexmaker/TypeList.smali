.class final Lcom/google/dexmaker/TypeList;
.super Ljava/lang/Object;
.source "TypeList.java"


# instance fields
.field final ropTypes:Lcom/android/dx/rop/type/StdTypeList;

.field final types:[Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Lcom/google/dexmaker/TypeId;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, [Lcom/google/dexmaker/TypeId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/dexmaker/TypeId;

    iput-object v0, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    .line 33
    new-instance v0, Lcom/android/dx/rop/type/StdTypeList;

    array-length v1, p1

    invoke-direct {v0, v1}, Lcom/android/dx/rop/type/StdTypeList;-><init>(I)V

    iput-object v0, p0, Lcom/google/dexmaker/TypeList;->ropTypes:Lcom/android/dx/rop/type/StdTypeList;

    .line 34
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/google/dexmaker/TypeList;->ropTypes:Lcom/android/dx/rop/type/StdTypeList;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-virtual {v1, v0, v2}, Lcom/android/dx/rop/type/StdTypeList;->set(ILcom/android/dx/rop/type/Type;)V

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public asList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 47
    instance-of v0, p1, Lcom/google/dexmaker/TypeList;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/dexmaker/TypeList;

    iget-object v0, p1, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    iget-object v1, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 57
    if-lez v0, :cond_0

    .line 58
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
