.class public final Lcom/android/dx/dex/file/MixedItemSection;
.super Lcom/android/dx/dex/file/Section;
.source "MixedItemSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/MixedItemSection$SortType;
    }
.end annotation


# static fields
.field private static final TYPE_SORTER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final interns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">;"
        }
    .end annotation
.end field

.field private final sort:Lcom/android/dx/dex/file/MixedItemSection$SortType;

.field private writeSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/dx/dex/file/MixedItemSection$1;

    invoke-direct {v0}, Lcom/android/dx/dex/file/MixedItemSection$1;-><init>()V

    sput-object v0, Lcom/android/dx/dex/file/MixedItemSection;->TYPE_SORTER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;ILcom/android/dx/dex/file/MixedItemSection$SortType;)V
    .locals 2

    .prologue
    const/16 v1, 0x64

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/dx/dex/file/Section;-><init>(Ljava/lang/String;Lcom/android/dx/dex/file/DexFile;I)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    .line 94
    iput-object p4, p0, Lcom/android/dx/dex/file/MixedItemSection;->sort:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    .line 96
    return-void
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/OffsettedItem;)V
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfPrepared()V

    .line 173
    :try_start_0
    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getAlignment()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "incompatible item alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "item == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public get(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 216
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 218
    if-eqz v0, :cond_0

    .line 219
    return-object v0

    .line 222
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAbsoluteItemOffset(Lcom/android/dx/dex/file/Item;)I
    .locals 1

    .prologue
    .line 114
    check-cast p1, Lcom/android/dx/dex/file/OffsettedItem;

    .line 115
    invoke-virtual {p1}, Lcom/android/dx/dex/file/OffsettedItem;->getAbsoluteOffset()I

    move-result v0

    return v0
.end method

.method public intern(Lcom/android/dx/dex/file/OffsettedItem;)Lcom/android/dx/dex/file/OffsettedItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/dx/dex/file/OffsettedItem;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfPrepared()V

    .line 196
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 198
    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/file/MixedItemSection;->add(Lcom/android/dx/dex/file/OffsettedItem;)V

    .line 203
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->interns:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    .line 204
    goto :goto_0
.end method

.method public items()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public placeItems()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 296
    sget-object v1, Lcom/android/dx/dex/file/MixedItemSection$2;->$SwitchMap$com$android$dx$dex$file$MixedItemSection$SortType:[I

    iget-object v2, p0, Lcom/android/dx/dex/file/MixedItemSection;->sort:Lcom/android/dx/dex/file/MixedItemSection$SortType;

    invoke-virtual {v2}, Lcom/android/dx/dex/file/MixedItemSection$SortType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    move v2, v0

    .line 309
    :goto_1
    if-ge v1, v3, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 312
    :try_start_0
    invoke-virtual {v0, p0, v2}, Lcom/android/dx/dex/file/OffsettedItem;->place(Lcom/android/dx/dex/file/Section;I)I

    move-result v4

    .line 314
    if-ge v4, v2, :cond_0

    .line 315
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bogus place() result for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :catch_0
    move-exception v1

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "...while placing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    move-result-object v0

    throw v0

    .line 298
    :pswitch_0
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/dx/dex/file/MixedItemSection;->TYPE_SORTER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 319
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    add-int v2, v4, v0

    .line 309
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 326
    :cond_1
    iput v2, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    .line 327
    return-void

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected prepare0()V
    .locals 4

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v2

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 274
    if-lt v0, v3, :cond_1

    .line 283
    return-void

    .line 278
    :goto_1
    if-ge v1, v3, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 280
    invoke-virtual {v0, v2}, Lcom/android/dx/dex/file/OffsettedItem;->addContents(Lcom/android/dx/dex/file/DexFile;)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    .line 282
    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeHeaderPart(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    .line 133
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 135
    iget v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 136
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "write size not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget v2, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    .line 140
    if-nez v2, :cond_3

    const/4 v0, 0x0

    .line 141
    :goto_0
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getName()Ljava/lang/String;

    move-result-object v1

    .line 143
    if-nez v1, :cond_1

    .line 144
    const-string v1, "<unnamed>"

    .line 147
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0xf

    .line 148
    new-array v3, v3, [C

    .line 149
    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([CC)V

    .line 150
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    .line 152
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "_size:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_off: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v6, v1}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 157
    :cond_2
    invoke-interface {p1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 158
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 159
    return-void

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getFileOffset()I

    move-result v0

    goto :goto_0
.end method

.method public writeIndexAnnotation(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/file/ItemType;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 236
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 238
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 241
    iget-object v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 242
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->itemType()Lcom/android/dx/dex/file/ItemType;

    move-result-object v3

    if-ne v3, p2, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->toHuman()Ljava/lang/String;

    move-result-object v3

    .line 244
    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 248
    :cond_1
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 259
    :cond_2
    return-void

    .line 252
    :cond_3
    invoke-interface {p1, v4, p3}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 254
    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->offsetString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public writeSize()I
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->throwIfNotPrepared()V

    .line 108
    iget v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    return v0
.end method

.method protected writeTo0(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 332
    invoke-interface {p1}, Lcom/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v5

    .line 333
    const/4 v0, 0x1

    .line 334
    invoke-virtual {p0}, Lcom/android/dx/dex/file/MixedItemSection;->getFile()Lcom/android/dx/dex/file/DexFile;

    move-result-object v6

    .line 337
    iget-object v1, p0, Lcom/android/dx/dex/file/MixedItemSection;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/file/OffsettedItem;

    .line 338
    if-eqz v5, :cond_0

    .line 339
    if-eqz v3, :cond_2

    move v3, v2

    .line 346
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->getAlignment()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 347
    add-int v8, v1, v4

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v4, v8

    .line 349
    if-eq v1, v4, :cond_1

    .line 350
    sub-int v1, v4, v1

    invoke-interface {p1, v1}, Lcom/android/dx/util/AnnotatedOutput;->writeZeroes(I)V

    move v1, v4

    .line 354
    :cond_1
    invoke-virtual {v0, v6, p1}, Lcom/android/dx/dex/file/OffsettedItem;->writeTo(Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/util/AnnotatedOutput;)V

    .line 355
    invoke-virtual {v0}, Lcom/android/dx/dex/file/OffsettedItem;->writeSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 356
    goto :goto_0

    .line 342
    :cond_2
    const-string v4, "\n"

    invoke-interface {p1, v2, v4}, Lcom/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_1

    .line 358
    :cond_3
    iget v0, p0, Lcom/android/dx/dex/file/MixedItemSection;->writeSize:I

    if-eq v1, v0, :cond_4

    .line 359
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "output size mismatch"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_4
    return-void
.end method
