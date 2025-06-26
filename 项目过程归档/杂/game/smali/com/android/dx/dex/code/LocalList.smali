.class public final Lcom/android/dx/dex/code/LocalList;
.super Lcom/android/dx/util/FixedSizeList;
.source "LocalList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/LocalList$MakeState;,
        Lcom/android/dx/dex/code/LocalList$Entry;,
        Lcom/android/dx/dex/code/LocalList$Disposition;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EMPTY:Lcom/android/dx/dex/code/LocalList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/dx/dex/code/LocalList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/LocalList;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/LocalList;->EMPTY:Lcom/android/dx/dex/code/LocalList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/dx/util/FixedSizeList;-><init>(I)V

    .line 49
    return-void
.end method

.method private static debugVerify(Lcom/android/dx/dex/code/LocalList;)V
    .locals 5

    .prologue
    .line 379
    :try_start_0
    invoke-static {p0}, Lcom/android/dx/dex/code/LocalList;->debugVerify0(Lcom/android/dx/dex/code/LocalList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    return-void

    .line 380
    :catch_0
    move-exception v1

    .line 381
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v2

    .line 382
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 383
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 382
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    throw v1
.end method

.method private static debugVerify0(Lcom/android/dx/dex/code/LocalList;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v4

    .line 395
    const/high16 v0, 0x10000

    new-array v5, v0, [Lcom/android/dx/dex/code/LocalList$Entry;

    move v3, v2

    .line 397
    :goto_0
    if-ge v3, v4, :cond_9

    .line 398
    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v6

    .line 399
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v7

    .line 401
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 402
    aget-object v0, v5, v7

    .line 404
    if-eqz v0, :cond_0

    invoke-virtual {v6, v0}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/dex/code/LocalList$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redundant start at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 406
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; had "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_0
    aput-object v6, v5, v7

    .line 397
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 412
    :cond_1
    aget-object v0, v5, v7

    if-nez v0, :cond_2

    .line 413
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redundant end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 414
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 417
    :cond_2
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v8

    .line 420
    add-int/lit8 v0, v3, 0x1

    move v1, v0

    move v0, v2

    :goto_2
    if-ge v1, v4, :cond_3

    .line 421
    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v9

    .line 422
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v10

    if-eq v10, v8, :cond_4

    .line 442
    :cond_3
    if-nez v0, :cond_8

    .line 443
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sget-object v1, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne v0, v1, :cond_8

    .line 444
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "improper end replacement claim at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_4
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v10

    if-ne v10, v7, :cond_6

    .line 426
    invoke-virtual {v9}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 427
    invoke-virtual {v6}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v0

    sget-object v9, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-eq v0, v9, :cond_5

    .line 429
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "improperly marked end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 431
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_5
    const/4 v0, 0x1

    .line 420
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 435
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redundant end at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 437
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_8
    const/4 v0, 0x0

    aput-object v0, v5, v7

    goto/16 :goto_1

    .line 452
    :cond_9
    return-void
.end method

.method public static make(Lcom/android/dx/dex/code/DalvInsnList;)Lcom/android/dx/dex/code/LocalList;
    .locals 5

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsnList;->size()I

    move-result v3

    .line 345
    new-instance v4, Lcom/android/dx/dex/code/LocalList$MakeState;

    invoke-direct {v4, v3}, Lcom/android/dx/dex/code/LocalList$MakeState;-><init>(I)V

    .line 347
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_3

    .line 348
    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v1

    .line 350
    instance-of v0, v1, Lcom/android/dx/dex/code/LocalSnapshot;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 351
    check-cast v0, Lcom/android/dx/dex/code/LocalSnapshot;

    .line 352
    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;

    move-result-object v0

    .line 353
    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->snapshot(ILcom/android/dx/rop/code/RegisterSpecSet;)V

    .line 347
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 354
    :cond_1
    instance-of v0, v1, Lcom/android/dx/dex/code/LocalStart;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 355
    check-cast v0, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 356
    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 357
    :cond_2
    instance-of v0, v1, Lcom/android/dx/dex/code/LocalEnd;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 358
    check-cast v0, Lcom/android/dx/dex/code/LocalEnd;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/LocalEnd;->getLocal()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 359
    invoke-virtual {v1}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v1

    invoke-virtual {v4, v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;->endLocal(ILcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_1

    .line 363
    :cond_3
    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$MakeState;->finish()Lcom/android/dx/dex/code/LocalList;

    move-result-object v0

    .line 369
    return-object v0
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/dx/dex/code/LocalList;->size()I

    move-result v1

    .line 82
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 83
    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/dx/dex/code/LocalList$Entry;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/LocalList;->get0(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/dex/code/LocalList$Entry;

    return-object v0
.end method

.method public set(ILcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/android/dx/dex/code/LocalList;->set0(ILjava/lang/Object;)V

    .line 71
    return-void
.end method
