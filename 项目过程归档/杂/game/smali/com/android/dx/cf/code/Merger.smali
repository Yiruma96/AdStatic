.class public final Lcom/android/dx/cf/code/Merger;
.super Ljava/lang/Object;
.source "Merger.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 34
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-object p0

    .line 36
    :cond_1
    if-nez p1, :cond_2

    move-object p0, v0

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    invoke-interface {p0}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object p0

    .line 40
    invoke-interface {p1}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    .line 42
    if-eq p0, v1, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isReference()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isReference()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 45
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-ne p0, v0, :cond_3

    move-object p0, v1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    sget-object v0, Lcom/android/dx/rop/type/Type;->KNOWN_NULL:Lcom/android/dx/rop/type/Type;

    if-eq v1, v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v0

    .line 60
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/android/dx/cf/code/Merger;->mergeType(Lcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    .line 61
    if-nez v0, :cond_4

    .line 66
    sget-object p0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    goto :goto_0

    .line 68
    :cond_4
    check-cast v0, Lcom/android/dx/rop/type/Type;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Type;->getArrayType()Lcom/android/dx/rop/type/Type;

    move-result-object p0

    goto :goto_0

    .line 75
    :cond_5
    sget-object p0, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    goto :goto_0

    .line 77
    :cond_6
    invoke-virtual {p0}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/android/dx/rop/type/Type;->isIntlike()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 82
    sget-object p0, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    goto :goto_0

    :cond_7
    move-object p0, v0

    .line 84
    goto :goto_0
.end method
