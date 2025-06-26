.class public abstract Lcom/android/dx/dex/file/MemberIdsSection;
.super Lcom/android/dx/dex/file/UniformItemSection;
.source "MemberIdsSection.java"


# static fields
.field private static final MAX_MEMBERS:I = 0x10000


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;)V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    .line 37
    return-void
.end method


# virtual methods
.method protected orderItems()V
    .locals 5

    .prologue
    const/high16 v4, 0x10000

    .line 42
    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 45
    instance-of v0, p0, Lcom/android/dx/dex/file/MethodIdsSection;

    if-eqz v0, :cond_0

    const-string v0, "methods"

    .line 46
    :goto_0
    new-instance v1, Lcom/android/dx/util/DexException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; max is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/dx/util/DexException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    :cond_0
    const-string v0, "fields"

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MemberIdsSection;->items()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/dx/dex/file/MemberIdItem;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/MemberIdItem;->setIndex(I)V

    .line 52
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    return-void
.end method
