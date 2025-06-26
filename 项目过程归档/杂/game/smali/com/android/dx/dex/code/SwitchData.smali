.class public final Lcom/android/dx/dex/code/SwitchData;
.super Lcom/android/dx/dex/code/VariableSizeInsn;
.source "SwitchData.java"


# instance fields
.field private final cases:Lcom/android/dx/util/IntList;

.field private final packed:Z

.field private final targets:[Lcom/android/dx/dex/code/CodeAddress;

.field private final user:Lcom/android/dx/dex/code/CodeAddress;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Lcom/android/dx/util/IntList;[Lcom/android/dx/dex/code/CodeAddress;)V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {p0, p1, v0}, Lcom/android/dx/dex/code/VariableSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;)V

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "user == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p3, :cond_1

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cases == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    if-nez p4, :cond_2

    .line 74
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "targets == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_2
    invoke-virtual {p3}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 79
    array-length v1, p4

    if-eq v0, v1, :cond_3

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cases / targets mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_3
    const v1, 0xffff

    if-le v0, v1, :cond_4

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "too many cases"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_4
    iput-object p2, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    .line 88
    iput-object p3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    .line 89
    iput-object p4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    .line 90
    invoke-static {p3}, Lcom/android/dx/dex/code/SwitchData;->shouldPack(Lcom/android/dx/util/IntList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    .line 91
    return-void
.end method

.method private static packedCodeSize(Lcom/android/dx/util/IntList;)J
    .locals 4

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v1

    int-to-long v2, v1

    .line 213
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    int-to-long v0, v0

    .line 214
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    .line 216
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static shouldPack(Lcom/android/dx/util/IntList;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 240
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->size()I

    move-result v1

    .line 242
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    invoke-static {p0}, Lcom/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/android/dx/util/IntList;)J

    move-result-wide v2

    .line 247
    invoke-static {p0}, Lcom/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/android/dx/util/IntList;)J

    move-result-wide v4

    .line 256
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-ltz v1, :cond_2

    const-wide/16 v6, 0x5

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sparseCodeSize(Lcom/android/dx/util/IntList;)J
    .locals 4

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/dx/util/IntList;->size()I

    move-result v0

    .line 229
    int-to-long v0, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 166
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    array-length v2, v0

    .line 167
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 168
    const-string v3, "\n    "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v3, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 170
    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public codeSize()I
    .locals 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-static {v0}, Lcom/android/dx/dex/code/SwitchData;->packedCodeSize(Lcom/android/dx/util/IntList;)J

    move-result-wide v0

    long-to-int v0, v0

    .line 97
    :goto_0
    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    .line 97
    invoke-static {v0}, Lcom/android/dx/dex/code/SwitchData;->sparseCodeSize(Lcom/android/dx/util/IntList;)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public isPacked()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    return v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 7

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v1

    .line 181
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 182
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    array-length v3, v0

    .line 184
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v0, :cond_0

    const-string v0, "packed"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v0, "-switch-payload // for switch @ "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 186
    invoke-static {v1}, Lcom/android/dx/util/Hex;->u2(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v4

    .line 190
    sub-int v5, v4, v1

    .line 191
    const-string v6, "\n  "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    iget-object v6, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v6, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 193
    const-string v6, ": "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-static {v4}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string v4, " // "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-static {v5}, Lcom/android/dx/util/Hex;->s4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_0
    const-string v0, "sparse"

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 5

    .prologue
    .line 149
    new-instance v0, Lcom/android/dx/dex/code/SwitchData;

    invoke-virtual {p0}, Lcom/android/dx/dex/code/SwitchData;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    iget-object v3, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    iget-object v4, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/dx/dex/code/SwitchData;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/dex/code/CodeAddress;Lcom/android/dx/util/IntList;[Lcom/android/dx/dex/code/CodeAddress;)V

    return-object v0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 103
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->user:Lcom/android/dx/dex/code/CodeAddress;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v5

    .line 104
    sget-object v0, Lcom/android/dx/dex/code/Dops;->PACKED_SWITCH:Lcom/android/dx/dex/code/Dop;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/Dop;->getFormat()Lcom/android/dx/dex/code/InsnFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/dex/code/InsnFormat;->codeSize()I

    move-result v2

    .line 105
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    array-length v3, v0

    .line 107
    iget-boolean v0, p0, Lcom/android/dx/dex/code/SwitchData;->packed:Z

    if-eqz v0, :cond_3

    .line 108
    if-nez v3, :cond_0

    move v4, v1

    .line 109
    :goto_0
    if-nez v3, :cond_1

    move v0, v1

    .line 110
    :goto_1
    sub-int/2addr v0, v4

    add-int/lit8 v6, v0, 0x1

    .line 112
    const/16 v0, 0x100

    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 113
    invoke-interface {p1, v6}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 114
    invoke-interface {p1, v4}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    move v3, v1

    .line 117
    :goto_2
    if-ge v3, v6, :cond_5

    .line 118
    add-int v0, v4, v3

    .line 119
    iget-object v7, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v7, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v7

    .line 122
    if-le v7, v0, :cond_2

    move v0, v2

    .line 129
    :goto_3
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 117
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v0, v1}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    move v4, v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v0

    goto :goto_1

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    sub-int/2addr v0, v5

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 132
    :cond_3
    const/16 v0, 0x200

    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    .line 133
    invoke-interface {p1, v3}, Lcom/android/dx/util/AnnotatedOutput;->writeShort(I)V

    move v0, v1

    .line 135
    :goto_4
    if-ge v0, v3, :cond_4

    .line 136
    iget-object v2, p0, Lcom/android/dx/dex/code/SwitchData;->cases:Lcom/android/dx/util/IntList;

    invoke-virtual {v2, v0}, Lcom/android/dx/util/IntList;->get(I)I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 139
    :cond_4
    :goto_5
    if-ge v1, v3, :cond_5

    .line 140
    iget-object v0, p0, Lcom/android/dx/dex/code/SwitchData;->targets:[Lcom/android/dx/dex/code/CodeAddress;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/dx/dex/code/CodeAddress;->getAddress()I

    move-result v0

    sub-int/2addr v0, v5

    .line 141
    invoke-interface {p1, v0}, Lcom/android/dx/util/AnnotatedOutput;->writeInt(I)V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 144
    :cond_5
    return-void
.end method
