.class Lcom/android/dx/dex/file/Statistics$Data;
.super Ljava/lang/Object;
.source "Statistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/file/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field private count:I

.field private largestSize:I

.field private final name:Ljava/lang/String;

.field private smallestSize:I

.field private totalSize:I


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/file/Item;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Item;->writeSize()I

    move-result v0

    .line 136
    iput-object p2, p0, Lcom/android/dx/dex/file/Statistics$Data;->name:Ljava/lang/String;

    .line 137
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    .line 138
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    .line 139
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    .line 140
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/dx/dex/file/Statistics$Data;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->name:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/dx/dex/file/Item;)V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/android/dx/dex/file/Item;->writeSize()I

    move-result v0

    .line 151
    iget v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    .line 152
    iget v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    .line 154
    iget v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    if-le v0, v1, :cond_0

    .line 155
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    .line 158
    :cond_0
    iget v1, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    if-ge v0, v1, :cond_1

    .line 159
    iput v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    .line 161
    :cond_1
    return-void
.end method

.method public toHuman()Ljava/lang/String;
    .locals 4

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " item"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes total\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    if-ne v0, v2, :cond_1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes/item\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_0
    const-string v0, "s"

    goto :goto_0

    .line 187
    :cond_1
    iget v0, p0, Lcom/android/dx/dex/file/Statistics$Data;->totalSize:I

    iget v2, p0, Lcom/android/dx/dex/file/Statistics$Data;->count:I

    div-int/2addr v0, v2

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/dx/dex/file/Statistics$Data;->smallestSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/dx/dex/file/Statistics$Data;->largestSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes/item; average "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public writeAnnotation(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/dx/dex/file/Statistics$Data;->toHuman()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->annotate(Ljava/lang/String;)V

    .line 170
    return-void
.end method
