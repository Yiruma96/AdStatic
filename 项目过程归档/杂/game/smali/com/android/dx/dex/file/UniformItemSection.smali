.class public abstract Lcom/android/dx/dex/file/UniformItemSection;
.super Lcom/android/dx/dex/file/Section;
.source "UniformItemSection.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/file/Section;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    .line 41
    return-void
.end method


# virtual methods
.method public abstract get(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;
.end method

.method public final getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I
    .locals 2

    .prologue
    .line 99
    check-cast p1, Lcom/android/dx/dex/file/IndexedItem;

    .line 100
    invoke-virtual {p1}, Lcom/android/dx/dex/file/IndexedItem;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/dx/dex/file/IndexedItem;->writeSize()I

    move-result v1

    mul-int/2addr v0, v1

    .line 102
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/file/UniformItemSection;->getAbsoluteOffset(I)I

    move-result v0

    return v0
.end method

.method protected abstract orderItems()V
.end method

.method protected final prepare0()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->orderItems()V

    .line 75
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/Item;

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/Item;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public final writeSize()I
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 49
    if-nez v1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/Item;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Item;->writeSize()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method protected final writeTo0(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 4

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v1

    .line 84
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->getAlignment()I

    move-result v2

    .line 86
    invoke-virtual {p0}, Lcom/android/dx/dex/file/UniformItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/Item;

    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/android/dx/dex/file/Item;->writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 88
    invoke-interface {p1, v2}, Lcom/android/dx/util/AnnotatedOutput;->alignTo(I)V

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method
