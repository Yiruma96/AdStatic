.class public final Lcom/google/dexmaker/MethodId;
.super Ljava/lang/Object;
.source "MethodId.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final constant:Lcom/android/dx/rop/cst/CstMethodRef;

.field final declaringType:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;"
        }
    .end annotation
.end field

.field final name:Ljava/lang/String;

.field final nat:Lcom/android/dx/rop/cst/CstNat;

.field final parameters:Lcom/google/dexmaker/TypeList;

.field final returnType:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;Lcom/google/dexmaker/TypeList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;",
            "Lcom/google/dexmaker/TypeId",
            "<TR;>;",
            "Ljava/lang/String;",
            "Lcom/google/dexmaker/TypeList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    .line 46
    iput-object p2, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    .line 47
    iput-object p3, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    .line 49
    new-instance v0, Lcom/android/dx/rop/cst/CstNat;

    new-instance v1, Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v1, p3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/google/dexmaker/MethodId;->descriptor(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    iput-object v0, p0, Lcom/google/dexmaker/MethodId;->nat:Lcom/android/dx/rop/cst/CstNat;

    .line 50
    new-instance v0, Lcom/android/dx/rop/cst/CstMethodRef;

    iget-object v1, p1, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    iget-object v2, p0, Lcom/google/dexmaker/MethodId;->nat:Lcom/android/dx/rop/cst/CstNat;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    iput-object v0, p0, Lcom/google/dexmaker/MethodId;->constant:Lcom/android/dx/rop/cst/CstMethodRef;

    .line 51
    return-void
.end method


# virtual methods
.method descriptor(Z)Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    iget-object v2, v0, Lcom/google/dexmaker/TypeList;->types:[Lcom/google/dexmaker/TypeId;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 89
    iget-object v4, v4, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    iget-object v0, v0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 101
    instance-of v0, p1, Lcom/google/dexmaker/MethodId;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/dexmaker/MethodId;

    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    .line 102
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/dexmaker/MethodId;

    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/dexmaker/MethodId;

    iget-object v0, v0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/dexmaker/MethodId;

    iget-object v0, p1, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeclaringType()Lcom/google/dexmaker/TypeId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
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
    .line 76
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    invoke-virtual {v0}, Lcom/google/dexmaker/TypeList;->asList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getReturnType()Lcom/google/dexmaker/TypeId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/dexmaker/TypeId",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 109
    .line 110
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0}, Lcom/google/dexmaker/TypeId;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    invoke-virtual {v1}, Lcom/google/dexmaker/TypeList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->returnType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v1}, Lcom/google/dexmaker/TypeId;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 114
    return v0
.end method

.method public isConstructor()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    const-string v1, "<init>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method prototype(Z)Lcom/android/dx/rop/type/Prototype;
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/google/dexmaker/MethodId;->descriptor(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dx/rop/type/Prototype;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->declaringType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/dexmaker/MethodId;->parameters:Lcom/google/dexmaker/TypeList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
