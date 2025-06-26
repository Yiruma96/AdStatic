.class public final Lcom/android/dx/rop/annotation/NameValuePair;
.super Ljava/lang/Object;
.source "NameValuePair.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/rop/annotation/NameValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Lcom/android/dx/rop/cst/CstString;

.field private final value:Lcom/android/dx/rop/cst/Constant;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/Constant;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/android/dx/rop/annotation/NameValuePair;->name:Lcom/android/dx/rop/cst/CstString;

    .line 48
    iput-object p2, p0, Lcom/android/dx/rop/annotation/NameValuePair;->value:Lcom/android/dx/rop/cst/Constant;

    .line 49
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dx/rop/annotation/NameValuePair;)I
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/dx/rop/annotation/NameValuePair;->name:Lcom/android/dx/rop/cst/CstString;

    iget-object v1, p1, Lcom/android/dx/rop/annotation/NameValuePair;->name:Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstString;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    .line 82
    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/rop/annotation/NameValuePair;->value:Lcom/android/dx/rop/cst/Constant;

    iget-object v1, p1, Lcom/android/dx/rop/annotation/NameValuePair;->value:Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/Constant;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 25
    check-cast p1, Lcom/android/dx/rop/annotation/NameValuePair;

    invoke-virtual {p0, p1}, Lcom/android/dx/rop/annotation/NameValuePair;->compareTo(Lcom/android/dx/rop/annotation/NameValuePair;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 63
    instance-of v1, p1, Lcom/android/dx/rop/annotation/NameValuePair;

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    check-cast p1, Lcom/android/dx/rop/annotation/NameValuePair;

    .line 69
    iget-object v1, p0, Lcom/android/dx/rop/annotation/NameValuePair;->name:Lcom/android/dx/rop/cst/CstString;

    iget-object v2, p1, Lcom/android/dx/rop/annotation/NameValuePair;->name:Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v1, v2}, Lcom/android/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dx/rop/annotation/NameValuePair;->value:Lcom/android/dx/rop/cst/Constant;

    iget-object v2, p1, Lcom/android/dx/rop/annotation/NameValuePair;->value:Lcom/android/dx/rop/cst/Constant;

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Lcom/android/dx/rop/cst/CstString;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/dx/rop/annotation/NameValuePair;->name:Lcom/android/dx/rop/cst/CstString;

    return-object v0
.end method

.method public getValue()Lcom/android/dx/rop/cst/Constant;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/dx/rop/annotation/NameValuePair;->value:Lcom/android/dx/rop/cst/Constant;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/dx/rop/annotation/NameValuePair;->name:Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/dx/rop/annotation/NameValuePair;->value:Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dx/rop/annotation/NameValuePair;->name:Lcom/android/dx/rop/cst/CstString;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstString;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/rop/annotation/NameValuePair;->value:Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
