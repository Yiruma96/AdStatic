.class public final Lcom/android/dx/util/IntList;
.super Lcom/android/dx/util/MutabilityControl;
.source "IntList.java"


# static fields
.field public static final EMPTY:Lcom/android/dx/util/IntList;


# instance fields
.field private size:I

.field private sorted:Z

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/android/dx/util/IntList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    sput-object v0, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    .line 38
    sget-object v0, Lcom/android/dx/util/IntList;->EMPTY:Lcom/android/dx/util/IntList;

    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-direct {p0, v1}, Lcom/android/dx/util/MutabilityControl;-><init>(Z)V

    .line 87
    :try_start_0
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/dx/util/IntList;->values:[I
    :try_end_0
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    .line 94
    iput-boolean v1, p0, Lcom/android/dx/util/IntList;->sorted:Z

    .line 95
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private growIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 274
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [I

    .line 275
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    iput-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    .line 278
    :cond_0
    return-void
.end method

.method public static makeImmutable(I)Lcom/android/dx/util/IntList;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/android/dx/util/IntList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/android/dx/util/IntList;->add(I)V

    .line 50
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 52
    return-object v0
.end method

.method public static makeImmutable(II)Lcom/android/dx/util/IntList;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/android/dx/util/IntList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 64
    invoke-virtual {v0, p0}, Lcom/android/dx/util/IntList;->add(I)V

    .line 65
    invoke-virtual {v0, p1}, Lcom/android/dx/util/IntList;->add(I)V

    .line 66
    invoke-virtual {v0}, Lcom/android/dx/util/IntList;->setImmutable()V

    .line 68
    return-object v0
.end method


# virtual methods
.method public add(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 217
    invoke-direct {p0}, Lcom/android/dx/util/IntList;->growIfNeeded()V

    .line 219
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/dx/util/IntList;->size:I

    aput p1, v1, v2

    .line 221
    iget-boolean v1, p0, Lcom/android/dx/util/IntList;->sorted:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    if-le v1, v0, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v2, v2, -0x2

    aget v1, v1, v2

    if-lt p1, v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    .line 224
    :cond_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public binarysearch(I)I
    .locals 6

    .prologue
    .line 393
    iget v3, p0, Lcom/android/dx/util/IntList;->size:I

    .line 395
    iget-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    if-nez v0, :cond_3

    .line 397
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    .line 398
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_1

    .line 435
    :cond_0
    :goto_1
    return v1

    .line 397
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_2
    neg-int v1, v3

    goto :goto_1

    .line 413
    :cond_3
    const/4 v2, -0x1

    move v1, v3

    .line 416
    :goto_2
    add-int/lit8 v0, v2, 0x1

    if-le v1, v0, :cond_5

    .line 422
    sub-int v0, v1, v2

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    .line 423
    iget-object v4, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v4, v4, v0

    .line 425
    if-gt p1, v4, :cond_4

    move v1, v2

    :goto_3
    move v2, v1

    move v1, v0

    .line 430
    goto :goto_2

    :cond_4
    move v5, v1

    move v1, v0

    move v0, v5

    .line 428
    goto :goto_3

    .line 432
    :cond_5
    if-eq v1, v3, :cond_6

    .line 433
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v0, v0, v1

    if-eq p1, v0, :cond_0

    neg-int v0, v1

    add-int/lit8 v1, v0, -0x1

    goto :goto_1

    .line 435
    :cond_6
    neg-int v0, v3

    add-int/lit8 v1, v0, -0x1

    goto :goto_1
.end method

.method public contains(I)Z
    .locals 1

    .prologue
    .line 451
    invoke-virtual {p0, p1}, Lcom/android/dx/util/IntList;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 112
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 116
    :cond_1
    instance-of v0, p1, Lcom/android/dx/util/IntList;

    if-eqz v0, :cond_0

    .line 120
    check-cast p1, Lcom/android/dx/util/IntList;

    .line 122
    iget-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    iget-boolean v3, p1, Lcom/android/dx/util/IntList;->sorted:Z

    if-ne v0, v3, :cond_0

    .line 126
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    iget v3, p1, Lcom/android/dx/util/IntList;->size:I

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 130
    :goto_1
    iget v3, p0, Lcom/android/dx/util/IntList;->size:I

    if-ge v0, v3, :cond_2

    .line 131
    iget-object v3, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v3, v3, v0

    iget-object v4, p1, Lcom/android/dx/util/IntList;->values:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 136
    goto :goto_0
.end method

.method public get(I)I
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-lt p1, v0, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 178
    :catch_0
    move-exception v0

    .line 180
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    move v1, v0

    .line 102
    :goto_0
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    if-ge v0, v2, :cond_0

    .line 103
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return v1
.end method

.method public indexOf(I)I
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lcom/android/dx/util/IntList;->binarysearch(I)I

    move-result v0

    .line 377
    if-ltz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public insert(II)V
    .locals 4

    .prologue
    .line 236
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-le p1, v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n > size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/android/dx/util/IntList;->growIfNeeded()V

    .line 242
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    iget-object v1, p0, Lcom/android/dx/util/IntList;->values:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/android/dx/util/IntList;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    aput p2, v0, p1

    .line 244
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    .line 246
    iget-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    if-le p2, v0, :cond_3

    :cond_1
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    if-ge p2, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    .line 249
    return-void

    .line 246
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mutableCopy()Lcom/android/dx/util/IntList;
    .locals 4

    .prologue
    .line 344
    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    .line 345
    new-instance v2, Lcom/android/dx/util/IntList;

    invoke-direct {v2, v1}, Lcom/android/dx/util/IntList;-><init>(I)V

    .line 347
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 348
    iget-object v3, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/android/dx/util/IntList;->add(I)V

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 351
    :cond_0
    return-object v2
.end method

.method public pop()I
    .locals 2

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 301
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    .line 302
    iget v1, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/dx/util/IntList;->size:I

    .line 304
    return v0
.end method

.method public pop(I)V
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 316
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    .line 317
    return-void
.end method

.method public removeIndex(I)V
    .locals 4

    .prologue
    .line 258
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-lt p1, v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/dx/util/IntList;->values:[I

    iget v3, p0, Lcom/android/dx/util/IntList;->size:I

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/dx/util/IntList;->size:I

    .line 266
    return-void
.end method

.method public set(II)V
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 193
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-lt p1, v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "n >= size()"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    aput p2, v0, p1

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_1
    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 202
    if-gez p1, :cond_1

    .line 203
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shrink(I)V
    .locals 2

    .prologue
    .line 325
    if-gez p1, :cond_0

    .line 326
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    if-le p1, v0, :cond_1

    .line 330
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newSize > size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 335
    iput p1, p0, Lcom/android/dx/util/IntList;->size:I

    .line 336
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    return v0
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->throwIfImmutable()V

    .line 360
    iget-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/dx/util/IntList;->values:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dx/util/IntList;->sorted:Z

    .line 364
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 144
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 146
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/dx/util/IntList;->size:I

    if-ge v0, v2, :cond_1

    .line 147
    if-eqz v0, :cond_0

    .line 148
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/android/dx/util/IntList;->values:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public top()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/android/dx/util/IntList;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    return v0
.end method
