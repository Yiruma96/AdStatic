.class public final Lcom/android/dx/util/HexParser;
.super Ljava/lang/Object;
.source "HexParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static parse(Ljava/lang/String;)[B
    .locals 15

    .prologue
    const/16 v14, 0x10

    const/16 v13, 0x22

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 46
    div-int/lit8 v0, v1, 0x2

    new-array v8, v0, [B

    move v7, v3

    move v2, v3

    .line 50
    :goto_0
    if-ge v2, v1, :cond_e

    .line 51
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 52
    if-gez v0, :cond_0

    move v0, v1

    .line 55
    :cond_0
    const/16 v4, 0x23

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 58
    if-ltz v4, :cond_2

    if-ge v4, v0, :cond_2

    .line 59
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 63
    :goto_1
    add-int/lit8 v10, v0, 0x1

    .line 65
    const/16 v0, 0x3a

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 68
    if-eq v0, v6, :cond_1

    .line 69
    invoke-virtual {v2, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 70
    if-eq v4, v6, :cond_3

    if-ge v4, v0, :cond_3

    .line 83
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    move v9, v3

    move v0, v3

    move v4, v6

    .line 87
    :goto_2
    if-ge v9, v11, :cond_b

    .line 88
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 90
    if-eqz v0, :cond_5

    .line 91
    if-ne v12, v13, :cond_4

    move v0, v3

    move v5, v7

    .line 87
    :goto_3
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    move v7, v5

    goto :goto_2

    .line 61
    :cond_2
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 75
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-static {v4, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 77
    if-eq v0, v7, :cond_1

    .line 78
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus offset marker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_4
    int-to-byte v5, v12

    aput-byte v5, v8, v7

    .line 95
    add-int/lit8 v5, v7, 0x1

    .line 97
    goto :goto_3

    .line 100
    :cond_5
    const/16 v5, 0x20

    if-gt v12, v5, :cond_6

    move v5, v7

    .line 101
    goto :goto_3

    .line 103
    :cond_6
    if-ne v12, v13, :cond_8

    .line 104
    if-eq v4, v6, :cond_7

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spare digit around offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-static {v7}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_7
    const/4 v0, 0x1

    move v5, v7

    .line 109
    goto :goto_3

    .line 112
    :cond_8
    invoke-static {v12, v14}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 113
    if-ne v5, v6, :cond_9

    .line 114
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bogus digit character: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_9
    if-ne v4, v6, :cond_a

    move v4, v5

    move v5, v7

    .line 118
    goto/16 :goto_3

    .line 120
    :cond_a
    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v8, v7

    .line 121
    add-int/lit8 v4, v7, 0x1

    move v5, v4

    move v4, v6

    .line 122
    goto/16 :goto_3

    .line 126
    :cond_b
    if-eq v4, v6, :cond_c

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spare digit around offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    invoke-static {v7}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_c
    if-eqz v0, :cond_d

    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unterminated quote around offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    invoke-static {v7}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move v2, v10

    .line 135
    goto/16 :goto_0

    .line 137
    :cond_e
    array-length v0, v8

    if-ge v7, v0, :cond_f

    .line 138
    new-array v0, v7, [B

    .line 139
    invoke-static {v8, v3, v0, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    :goto_4
    return-object v0

    :cond_f
    move-object v0, v8

    goto :goto_4
.end method
