.class public Lcom/android/dx/dex/file/DebugInfoDecoder;
.super Ljava/lang/Object;
.source "DebugInfoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;,
        Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;
    }
.end annotation


# instance fields
.field private address:I

.field private final codesize:I

.field private final desc:Lcom/android/dx/rop/type/Prototype;

.field private final encoded:[B

.field private final file:Lcom/android/dx/dex/file/DexFile;

.field private final isStatic:Z

.field private final lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

.field private line:I

.field private final locals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final positions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final regSize:I

.field private final thisStringIdx:I


# direct methods
.method constructor <init>([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;)V
    .locals 4

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "encoded == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput-object p1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    .line 102
    iput-boolean p4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    .line 103
    invoke-virtual {p5}, Lcom/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    .line 104
    iput-object p6, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->file:Lcom/android/dx/dex/file/DexFile;

    .line 105
    iput p3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    .line 109
    iput p2, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->codesize:I

    .line 110
    new-array v0, p3, [Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iput-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 112
    const/4 v0, -0x1

    .line 115
    :try_start_0
    invoke-virtual {p6}, Lcom/android/dx/dex/file/DexFile;->getStringIds()Lcom/android/dx/dex/file/StringIdsSection;

    move-result-object v1

    new-instance v2, Lcom/android/dx/rop/cst/CstString;

    const-string v3, "this"

    invoke-direct {v2, v3}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/dx/dex/file/StringIdsSection;->indexOf(Lcom/android/dx/rop/cst/CstString;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 124
    :goto_0
    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    .line 125
    return-void

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private decode0()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 240
    new-instance v10, Lcom/android/dx/util/ByteArrayByteInput;

    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->encoded:[B

    invoke-direct {v10, v0}, Lcom/android/dx/util/ByteArrayByteInput;-><init>([B)V

    .line 242
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    move-result v0

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 243
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    move-result v8

    .line 244
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    invoke-virtual {v0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v9

    .line 245
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result v3

    .line 247
    invoke-virtual {v9}, Lcom/android/dx/rop/type/StdTypeList;->size()I

    move-result v0

    if-eq v8, v0, :cond_0

    .line 248
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Mismatch between parameters_size and prototype"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget-boolean v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    if-nez v0, :cond_1

    .line 254
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 256
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v0, v4, v3

    .line 258
    add-int/lit8 v3, v3, 0x1

    :cond_1
    move v7, v1

    .line 261
    :goto_0
    if-ge v7, v8, :cond_3

    .line 262
    invoke-virtual {v9, v7}, Lcom/android/dx/rop/type/StdTypeList;->getType(I)Lcom/android/dx/rop/type/Type;

    move-result-object v11

    .line 265
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    move-result v4

    .line 267
    if-ne v4, v12, :cond_2

    .line 272
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    move v4, v12

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 278
    :goto_1
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v0, v4, v3

    .line 280
    invoke-virtual {v11}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v0

    add-int/2addr v3, v0

    .line 261
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 275
    :cond_2
    new-instance v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    move v5, v1

    move v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    goto :goto_1

    .line 288
    :pswitch_0
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    move-result v6

    .line 289
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    move-result v7

    .line 290
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    move-result v8

    .line 291
    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    move v5, v2

    move v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 294
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    .line 284
    :cond_3
    :goto_2
    :pswitch_1
    invoke-interface {v10}, Lcom/android/dx/util/ByteInput;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 286
    packed-switch v0, :pswitch_data_0

    .line 389
    const/16 v3, 0xa

    if-ge v0, v3, :cond_6

    .line 390
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid extended opcode encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    :pswitch_2
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    move-result v6

    .line 301
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    move-result v7

    .line 302
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    move-result v8

    .line 303
    invoke-direct {p0, v10}, Lcom/android/dx/dex/file/DebugInfoDecoder;->readStringIndex(Lcom/android/dx/util/ByteInput;)I

    move-result v9

    .line 304
    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    move v5, v2

    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V

    .line 307
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    goto :goto_2

    .line 313
    :pswitch_3
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    move-result v6

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v0, v0, v6

    .line 320
    iget-boolean v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v3, :cond_4

    .line 321
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonsensical RESTART_LOCAL on live register v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered RESTART_LOCAL on new v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_4
    :try_start_1
    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x1

    iget v7, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 333
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    goto/16 :goto_2

    .line 339
    :pswitch_4
    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    move-result v6

    .line 344
    :try_start_2
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aget-object v0, v0, v6

    .line 346
    iget-boolean v3, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-nez v3, :cond_5

    .line 347
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonsensical END_LOCAL on dead register v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 354
    :catch_1
    move-exception v0

    .line 355
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered END_LOCAL on new v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_5
    :try_start_3
    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    const/4 v5, 0x0

    iget v7, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    iget v8, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->typeIndex:I

    iget v9, v0, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->signatureIndex:I

    invoke-direct/range {v3 .. v9}, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;-><init>(IZIIII)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 359
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->lastEntryForReg:[Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    aput-object v3, v0, v6

    goto/16 :goto_2

    .line 369
    :pswitch_5
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    goto/16 :goto_2

    .line 373
    :pswitch_6
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-static {v10}, Lcom/android/dx/util/Leb128Utils;->readSignedLeb128(Lcom/android/dx/util/ByteInput;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    goto/16 :goto_2

    .line 395
    :cond_6
    add-int/lit8 v0, v0, -0xa

    .line 397
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    div-int/lit8 v4, v0, 0xf

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    .line 398
    iget v3, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    rem-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, -0x4

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    .line 400
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    iget v4, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->address:I

    iget v5, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->line:I

    invoke-direct {v3, v4, v5}, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;-><init>(II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 366
    :pswitch_7
    return-void

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getParamBase()I
    .locals 2

    .prologue
    .line 235
    iget v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->regSize:I

    iget-object v1, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->desc:Lcom/android/dx/rop/type/Prototype;

    .line 236
    invoke-virtual {v1}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result v1

    sub-int v1, v0, v1

    iget-boolean v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->isStatic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sub-int v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readStringIndex(Lcom/android/dx/util/ByteInput;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p1}, Lcom/android/dx/util/Leb128Utils;->readUnsignedLeb128(Lcom/android/dx/util/ByteInput;)I

    move-result v0

    .line 224
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static validateEncode([BLcom/android/dx/dex/file/DexFile;Lcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/code/DalvCode;Z)V
    .locals 9

    .prologue
    .line 420
    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvCode;->getPositions()Lcom/android/dx/dex/code/PositionList;

    move-result-object v6

    .line 421
    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvCode;->getLocals()Lcom/android/dx/dex/code/LocalList;

    move-result-object v7

    .line 422
    invoke-virtual {p3}, Lcom/android/dx/dex/code/DalvCode;->getInsns()Lcom/android/dx/dex/code/DalvInsnList;

    move-result-object v8

    .line 423
    invoke-virtual {v8}, Lcom/android/dx/dex/code/DalvInsnList;->codeSize()I

    move-result v1

    .line 424
    invoke-virtual {v8}, Lcom/android/dx/dex/code/DalvInsnList;->getRegistersSize()I

    move-result v2

    move-object v0, p0

    move v3, p4

    move-object v4, p2

    move-object v5, p1

    .line 427
    :try_start_0
    invoke-static/range {v0 .. v7}, Lcom/android/dx/dex/file/DebugInfoDecoder;->validateEncode0([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "instructions:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  "

    const/4 v3, 0x1

    invoke-virtual {v8, v1, v2, v3}, Lcom/android/dx/dex/code/DalvInsnList;->debugPrint(Ljava/io/OutputStream;Ljava/lang/String;Z)V

    .line 432
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "local list:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "  "

    invoke-virtual {v7, v1, v2}, Lcom/android/dx/dex/code/LocalList;->debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 434
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "while processing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 435
    invoke-virtual {p2}, Lcom/android/dx/rop/cst/CstMethodRef;->toHuman()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    invoke-static {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method private static validateEncode0([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;Lcom/android/dx/dex/code/PositionList;Lcom/android/dx/dex/code/LocalList;)V
    .locals 13

    .prologue
    .line 442
    new-instance v1, Lcom/android/dx/dex/file/DebugInfoDecoder;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/dx/dex/file/DebugInfoDecoder;-><init>([BIIZLcom/android/dx/rop/cst/CstMethodRef;Lcom/android/dx/dex/file/DexFile;)V

    .line 446
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->decode()V

    .line 453
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getPositionList()Ljava/util/List;

    move-result-object v2

    .line 455
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual/range {p6 .. p6}, Lcom/android/dx/dex/code/PositionList;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 456
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Decoded positions table not same size was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 458
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Lcom/android/dx/dex/code/PositionList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;

    .line 462
    const/4 v3, 0x0

    .line 463
    invoke-virtual/range {p6 .. p6}, Lcom/android/dx/dex/code/PositionList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_2

    .line 464
    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Lcom/android/dx/dex/code/PositionList;->get(I)Lcom/android/dx/dex/code/PositionList$Entry;

    move-result-object v6

    .line 466
    iget v7, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {v6}, Lcom/android/dx/dex/code/PositionList$Entry;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v8

    if-ne v7, v8, :cond_3

    iget v7, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    .line 467
    invoke-virtual {v6}, Lcom/android/dx/dex/code/PositionList$Entry;->getAddress()I

    move-result v6

    if-ne v7, v6, :cond_3

    .line 468
    const/4 v3, 0x1

    .line 473
    :cond_2
    if-nez v3, :cond_1

    .line 474
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not match position entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->address:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;->line:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 484
    :cond_4
    invoke-virtual {v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getLocals()Ljava/util/List;

    move-result-object v6

    .line 485
    iget v7, v1, Lcom/android/dx/dex/file/DebugInfoDecoder;->thisStringIdx:I

    .line 486
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 487
    invoke-direct {v1}, Lcom/android/dx/dex/file/DebugInfoDecoder;->getParamBase()I

    move-result v8

    .line 494
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_8

    .line 495
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 496
    iget v2, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    .line 498
    if-ltz v2, :cond_5

    if-ne v2, v7, :cond_13

    .line 499
    :cond_5
    add-int/lit8 v2, v5, 0x1

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_13

    .line 500
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 501
    iget v9, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    if-eqz v9, :cond_6

    move v1, v3

    .line 494
    :goto_3
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v3, v1

    goto :goto_1

    .line 504
    :cond_6
    iget v9, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    iget v10, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ne v9, v10, :cond_7

    iget-boolean v9, v2, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    if-eqz v9, :cond_7

    .line 505
    invoke-interface {v6, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 507
    add-int/lit8 v1, v3, -0x1

    .line 508
    goto :goto_3

    .line 499
    :cond_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2

    .line 514
    :cond_8
    invoke-virtual/range {p7 .. p7}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v7

    .line 515
    const/4 v2, 0x0

    .line 516
    const/4 v4, 0x0

    .line 518
    const/4 v1, 0x0

    move v5, v1

    move v1, v2

    :goto_4
    if-ge v5, v7, :cond_12

    .line 519
    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v9

    .line 521
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v2

    sget-object v10, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne v2, v10, :cond_9

    .line 518
    :goto_5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    :cond_9
    move v2, v1

    .line 533
    :cond_a
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 534
    iget v10, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->nameIndex:I

    if-ltz v10, :cond_b

    .line 545
    :goto_6
    iget v10, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->address:I

    .line 547
    iget v11, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v12

    if-eq v11, v12, :cond_c

    .line 548
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local register mismatch at orig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / decoded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 550
    const/4 v1, 0x1

    .line 578
    :goto_7
    if-eqz v1, :cond_11

    .line 579
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "decoded locals:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 580
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;

    .line 581
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 542
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 543
    if-lt v2, v3, :cond_a

    goto :goto_6

    .line 554
    :cond_c
    iget-boolean v11, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->isStart:Z

    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v12

    if-eq v11, v12, :cond_d

    .line 555
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local start/end mismatch at orig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / decoded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 557
    const/4 v1, 0x1

    .line 558
    goto :goto_7

    .line 566
    :cond_d
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v9

    if-eq v10, v9, :cond_f

    if-nez v10, :cond_e

    iget v1, v1, Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;->reg:I

    if-ge v1, v8, :cond_f

    .line 569
    :cond_e
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local address mismatch at orig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / decoded "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 571
    const/4 v1, 0x1

    .line 572
    goto/16 :goto_7

    .line 575
    :cond_f
    add-int/lit8 v1, v2, 0x1

    goto/16 :goto_5

    .line 583
    :cond_10
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "local table problem"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 585
    :cond_11
    return-void

    :cond_12
    move v1, v4

    goto/16 :goto_7

    :cond_13
    move v1, v3

    goto/16 :goto_3
.end method


# virtual methods
.method public decode()V
    .locals 2

    .prologue
    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/android/dx/dex/file/DebugInfoDecoder;->decode0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    const-string v1, "...while decoding debug info"

    invoke-static {v0, v1}, Lcom/android/dx/util/ExceptionWithContext;->withContext(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/android/dx/util/ExceptionWithContext;

    move-result-object v0

    throw v0
.end method

.method public getLocals()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$LocalEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->locals:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPositionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/dx/dex/file/DebugInfoDecoder$PositionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/dx/dex/file/DebugInfoDecoder;->positions:Ljava/util/ArrayList;

    return-object v0
.end method
