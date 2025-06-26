.class public final Lcom/android/dx/dex/file/MapItem;
.super Lcom/android/dx/dex/file/OffsettedItem;
.source "MapItem.java"


# static fields
.field private static final ALIGNMENT:I = 0x4

.field private static final WRITE_SIZE:I = 0xc


# instance fields
.field private final firstItem:Lcom/android/dx/dex/file/Item;

.field private final itemCount:I

.field private final lastItem:Lcom/android/dx/dex/file/Item;

.field private final section:Lcom/android/dx/dex/file/Section;

.field private final type:Lcom/android/dx/dex/file/ItemType;


# direct methods
.method private constructor <init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V
    .locals 2

    .prologue
    .line 126
    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 128
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    if-nez p2, :cond_1

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    if-nez p3, :cond_2

    .line 137
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "firstItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    if-nez p4, :cond_3

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lastItem == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_3
    if-gtz p5, :cond_4

    .line 145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_4
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    .line 149
    iput-object p2, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    .line 150
    iput-object p3, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    .line 151
    iput-object p4, p0, Lcom/android/dx/dex/file/MapItem;->lastItem:Lcom/android/dx/dex/file/Item;

    .line 152
    iput p5, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    .line 153
    return-void
.end method

.method private constructor <init>(Lcom/android/dx/dex/file/Section;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    const/4 v0, 0x4

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/dx/dex/file/OffsettedItem;-><init>(II)V

    .line 164
    if-nez p1, :cond_0

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "section == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    iput-object v0, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    .line 169
    iput-object p1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    .line 170
    iput-object v2, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    .line 171
    iput-object v2, p0, Lcom/android/dx/dex/file/MapItem;->lastItem:Lcom/android/dx/dex/file/Item;

    .line 172
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    .line 173
    return-void
.end method

.method public static addMap([Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/MixedItemSection;)V
    .locals 14

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 69
    if-nez p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sections == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/MixedItemSection;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapSection.items().size() != 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    const/16 v0, 0x32

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    array-length v12, p0

    move v10, v7

    :goto_0
    if-ge v10, v12, :cond_7

    aget-object v2, p0, v10

    .line 86
    invoke-virtual {v2}, Lcom/android/dx/dex/file/Section;->items()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v5, v7

    move-object v4, v8

    move-object v3, v8

    move-object v1, v8

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/dx/dex/file/Item;

    .line 87
    invoke-virtual {v6}, Lcom/android/dx/dex/file/Item;->itemType()Lcom/android/dx/dex/file/ItemType;

    move-result-object v9

    .line 88
    if-eq v9, v1, :cond_3

    .line 89
    if-eqz v5, :cond_2

    .line 90
    new-instance v0, Lcom/android/dx/dex/file/MapItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move v5, v7

    move-object v3, v6

    move-object v1, v9

    .line 98
    :cond_3
    add-int/lit8 v5, v5, 0x1

    move-object v4, v6

    .line 99
    goto :goto_1

    .line 101
    :cond_4
    if-eqz v5, :cond_6

    .line 103
    new-instance v0, Lcom/android/dx/dex/file/MapItem;

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/ItemType;Lcom/android/dx/dex/file/Section;Lcom/android/dx/dex/file/Item;Lcom/android/dx/dex/file/Item;I)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_5
    :goto_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 105
    :cond_6
    if-ne v2, p1, :cond_5

    .line 107
    new-instance v0, Lcom/android/dx/dex/file/MapItem;

    invoke-direct {v0, p1}, Lcom/android/dx/dex/file/MapItem;-><init>(Lcom/android/dx/dex/file/Section;)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_7
    new-instance v0, Lcom/android/dx/dex/file/UniformListItem;

    sget-object v1, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_LIST:Lcom/android/dx/dex/file/ItemType;

    invoke-direct {v0, v1, v11}, Lcom/android/dx/dex/file/UniformListItem;-><init>(Lcom/android/dx/dex/file/ItemType;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    .line 113
    return-void
.end method


# virtual methods
.method public addContents(Lcom/android/dx/dex/file/DexFile;)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public itemType()Lcom/android/dx/dex/file/ItemType;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/dx/dex/file/ItemType;->TYPE_MAP_ITEM:Lcom/android/dx/dex/file/ItemType;

    return-object v0
.end method

.method public final toHuman()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MapItem;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 188
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 190
    iget-object v1, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v1}, Lcom/android/dx/dex/file/ItemType;->toHuman()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeTo0(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 211
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/ItemType;->getMapValue()I

    move-result v1

    .line 214
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    invoke-virtual {v0}, Lcom/android/dx/dex/file/Section;->getFileOffset()I

    move-result v0

    .line 220
    :goto_0
    invoke-interface {p2}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MapItem;->offsetString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    invoke-virtual {v3}, Lcom/android/dx/dex/file/ItemType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " map"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  type:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " // "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/dex/file/MapItem;->type:Lcom/android/dx/dex/file/ItemType;

    .line 224
    invoke-virtual {v3}, Lcom/android/dx/dex/file/ItemType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-interface {p2, v5, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 225
    const-string v2, "  unused: 0"

    invoke-interface {p2, v5, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  size:   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    invoke-static {v3}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v6, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v6, v2}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 230
    :cond_0
    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 231
    invoke-interface {p2, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 232
    iget v1, p0, Lcom/android/dx/dex/file/MapItem;->itemCount:I

    invoke-interface {p2, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 233
    invoke-interface {p2, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 234
    return-void

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/file/MapItem;->section:Lcom/android/dx/dex/file/Section;

    iget-object v2, p0, Lcom/android/dx/dex/file/MapItem;->firstItem:Lcom/android/dx/dex/file/Item;

    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/Section;->getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I

    move-result v0

    goto/16 :goto_0
.end method
