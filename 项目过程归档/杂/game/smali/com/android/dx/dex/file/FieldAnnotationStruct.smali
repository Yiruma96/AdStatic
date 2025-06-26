.class public final Lcom/android/dx/dex/file/FieldAnnotationStruct;
.super Ljava/lang/Object;
.source "FieldAnnotationStruct.java"

# interfaces
.implements Lcom/android/dx/util/ToHuman;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/dx/util/ToHuman;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dx/dex/file/FieldAnnotationStruct;",
        ">;"
    }
.end annotation


# instance fields
.field private annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

.field private final field:Lcom/android/dx/rop/cst/CstFieldRef;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/cst/CstFieldRef;Lcom/android/dx/dex/file/AnnotationSetItem;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    if-nez p2, :cond_1

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotations == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    .line 53
    iput-object p2, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    .line 54
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 3

    .prologue
    .line 77
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getWordData()Lcom/android/dx/dex/file/MixedItemSection;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/FieldIdsSection;->intern(Lcom/android/dx/rop/cst/CstFieldRef;)Lcom/android/dx/dex/file/FieldIdItem;

    .line 81
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/AnnotationSetItem;

    iput-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    .line 82
    return-void
.end method

.method public compareTo(Lcom/android/dx/dex/file/FieldAnnotationStruct;)I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    iget-object v1, p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstFieldRef;->compareTo(Lcom/android/dx/rop/cst/Constant;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/FieldAnnotationStruct;->compareTo(Lcom/android/dx/dex/file/FieldAnnotationStruct;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 63
    instance-of v0, p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;

    if-nez v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    check-cast p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;

    iget-object v1, p1, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v1}, Lcom/android/dx/rop/cst/CstFieldRef;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAnnotations()Lcom/android/dx/rop/annotation/Annotations;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/AnnotationSetItem;->getAnnotations()Lcom/android/dx/rop/annotation/Annotations;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lcom/android/dx/rop/cst/CstFieldRef;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstFieldRef;->hashCode()I

    move-result v0

    return v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstFieldRef;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 86
    invoke-virtual {p1}, Lcom/android/dx/dex/file/DexFile;->getFieldIds()Lcom/android/dx/dex/file/FieldIdsSection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v0, v1}, Lcom/android/dx/dex/file/FieldIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstFieldRef;)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->annotations:Lcom/android/dx/dex/file/AnnotationSetItem;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/AnnotationSetItem;->getAbsoluteOffset()I

    move-result v1

    .line 89
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dx/dex/file/FieldAnnotationStruct;->field:Lcom/android/dx/rop/cst/CstFieldRef;

    invoke-virtual {v4}, Lcom/android/dx/rop/cst/CstFieldRef;->toHuman()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      field_idx:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v5, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "      annotations_off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 93
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-interface {p2, v5, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 96
    :cond_0
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 97
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 98
    return-void
.end method
