.class public final Lcom/google/dexmaker/FieldId;
.super Ljava/lang/Object;
.source "FieldId.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final constant:Lcom/android/dx/rop/cst/CstFieldRef;

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

.field final type:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<TD;>;",
            "Lcom/google/dexmaker/TypeId",
            "<TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_1
    iput-object p1, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    .line 43
    iput-object p2, p0, Lcom/google/dexmaker/FieldId;->type:Lcom/google/dexmaker/TypeId;

    .line 44
    iput-object p3, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/android/dx/rop/cst/CstNat;

    new-instance v1, Lcom/android/dx/rop/cst/CstString;

    invoke-direct {v1, p3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    iget-object v3, p2, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    iput-object v0, p0, Lcom/google/dexmaker/FieldId;->nat:Lcom/android/dx/rop/cst/CstNat;

    .line 46
    new-instance v0, Lcom/android/dx/rop/cst/CstFieldRef;

    iget-object v1, p1, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    iget-object v2, p0, Lcom/google/dexmaker/FieldId;->nat:Lcom/android/dx/rop/cst/CstNat;

    invoke-direct {v0, v1, v2}, Lcom/android/dx/rop/cst/CstFieldRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    iput-object v0, p0, Lcom/google/dexmaker/FieldId;->constant:Lcom/android/dx/rop/cst/CstFieldRef;

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 62
    instance-of v0, p1, Lcom/google/dexmaker/FieldId;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/dexmaker/FieldId;

    iget-object v0, v0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    .line 63
    invoke-virtual {v0, v1}, Lcom/google/dexmaker/TypeId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/dexmaker/FieldId;

    iget-object v0, p1, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .line 50
    iget-object v0, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/dexmaker/TypeId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/dexmaker/TypeId",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/dexmaker/FieldId;->type:Lcom/google/dexmaker/TypeId;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0}, Lcom/google/dexmaker/TypeId;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->declaringType:Lcom/google/dexmaker/TypeId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/dexmaker/FieldId;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
