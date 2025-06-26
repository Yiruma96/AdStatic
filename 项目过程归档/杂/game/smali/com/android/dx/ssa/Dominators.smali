.class public final Lcom/android/dx/ssa/Dominators;
.super Ljava/lang/Object;
.source "Dominators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/ssa/Dominators$DFSInfo;,
        Lcom/android/dx/ssa/Dominators$DfsWalker;
    }
.end annotation


# instance fields
.field private final blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

.field private final info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

.field private final meth:Lcom/android/dx/ssa/SsaMethod;

.field private final postdom:Z

.field private final vertex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dx/ssa/SsaBasicBlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    .line 71
    iput-object p2, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    .line 72
    iput-boolean p3, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    .line 73
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaMethod;->getBlocks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/ssa/Dominators;->blocks:Ljava/util/ArrayList;

    .line 74
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/android/dx/ssa/Dominators$DFSInfo;

    iput-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    .line 76
    return-void
.end method

.method static synthetic access$100(Lcom/android/dx/ssa/Dominators;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dx/ssa/Dominators;)[Lcom/android/dx/ssa/Dominators$DFSInfo;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    return-object v0
.end method

.method private compress(Lcom/android/dx/ssa/SsaBasicBlock;)V
    .locals 8

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 117
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    iget-object v0, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    aget-object v0, v1, v0

    .line 119
    iget-object v0, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    if-eqz v0, :cond_3

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 122
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 126
    add-int/lit8 v0, v3, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 127
    iget-object v4, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    aget-object v0, v4, v0

    .line 128
    iget-object v4, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 129
    iget-object v5, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v6

    aget-object v5, v5, v6

    .line 132
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    if-eqz v6, :cond_1

    .line 133
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_1
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 139
    iget-object v3, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    if-eqz v3, :cond_0

    .line 142
    iget-object v3, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 143
    iget-object v4, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 144
    iget-object v6, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v7

    aget-object v6, v6, v7

    iget v6, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    iget-object v7, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    .line 145
    invoke-virtual {v4}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v4

    aget-object v4, v7, v4

    iget v4, v4, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    if-ge v6, v4, :cond_2

    .line 146
    iput-object v3, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 148
    :cond_2
    iget-object v3, v5, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    iput-object v3, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    goto :goto_0

    .line 151
    :cond_3
    return-void
.end method

.method private eval(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    .line 156
    iget-object v1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-object p1

    .line 160
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/dx/ssa/Dominators;->compress(Lcom/android/dx/ssa/SsaBasicBlock;)V

    .line 161
    iget-object p1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->rep:Lcom/android/dx/ssa/SsaBasicBlock;

    goto :goto_0
.end method

.method private getPreds(Lcom/android/dx/ssa/SsaBasicBlock;)Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    goto :goto_0
.end method

.method private getSuccs(Lcom/android/dx/ssa/SsaBasicBlock;)Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getPredecessors()Ljava/util/BitSet;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/dx/ssa/SsaBasicBlock;->getSuccessors()Ljava/util/BitSet;

    move-result-object v0

    goto :goto_0
.end method

.method public static make(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)Lcom/android/dx/ssa/Dominators;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/android/dx/ssa/Dominators;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/dx/ssa/Dominators;-><init>(Lcom/android/dx/ssa/SsaMethod;[Lcom/android/dx/ssa/DomFront$DomInfo;Z)V

    .line 90
    invoke-direct {v0}, Lcom/android/dx/ssa/Dominators;->run()V

    .line 91
    return-object v0
.end method

.method private run()V
    .locals 10

    .prologue
    const/4 v2, 0x2

    .line 171
    iget-boolean v0, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    .line 172
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getExitBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    .line 174
    :goto_0
    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    iput v0, v1, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    .line 184
    :cond_0
    new-instance v0, Lcom/android/dx/ssa/Dominators$DfsWalker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dx/ssa/Dominators$DfsWalker;-><init>(Lcom/android/dx/ssa/Dominators;Lcom/android/dx/ssa/Dominators$1;)V

    .line 185
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    iget-boolean v3, p0, Lcom/android/dx/ssa/Dominators;->postdom:Z

    invoke-virtual {v1, v3, v0}, Lcom/android/dx/ssa/SsaMethod;->forEachBlockDepthFirst(ZLcom/android/dx/ssa/SsaBasicBlock$Visitor;)V

    .line 188
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    move v4, v5

    .line 191
    :goto_1
    if-lt v4, v2, :cond_6

    .line 192
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 193
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v3

    aget-object v6, v1, v3

    .line 195
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/Dominators;->getPreds(Lcom/android/dx/ssa/SsaBasicBlock;)Ljava/util/BitSet;

    move-result-object v7

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v3, v1

    .line 197
    :goto_2
    if-ltz v3, :cond_3

    .line 199
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 200
    iget-object v8, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v9

    aget-object v8, v8, v9

    .line 206
    if-eqz v8, :cond_1

    .line 207
    iget-object v8, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-direct {p0, v1}, Lcom/android/dx/ssa/Dominators;->eval(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    aget-object v1, v8, v1

    iget v1, v1, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    .line 208
    iget v8, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    if-ge v1, v8, :cond_1

    .line 209
    iput v1, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    .line 198
    :cond_1
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v7, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v3, v1

    goto :goto_2

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->meth:Lcom/android/dx/ssa/SsaMethod;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaMethod;->getEntryBlock()Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v0

    goto :goto_0

    .line 213
    :cond_3
    iget-object v3, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    iget v7, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    aget-object v1, v3, v1

    iget-object v1, v1, Lcom/android/dx/ssa/Dominators$DFSInfo;->bucket:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    iput-object v0, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->ancestor:Lcom/android/dx/ssa/SsaBasicBlock;

    .line 224
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    iget-object v1, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, v0, Lcom/android/dx/ssa/Dominators$DFSInfo;->bucket:Ljava/util/ArrayList;

    .line 226
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 227
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 228
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 229
    invoke-direct {p0, v0}, Lcom/android/dx/ssa/Dominators;->eval(Lcom/android/dx/ssa/SsaBasicBlock;)Lcom/android/dx/ssa/SsaBasicBlock;

    move-result-object v3

    .line 230
    iget-object v7, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v8

    aget-object v7, v7, v8

    iget v7, v7, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    iget-object v8, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    .line 231
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v9

    aget-object v8, v8, v9

    iget v8, v8, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    if-ge v7, v8, :cond_4

    .line 232
    iget-object v7, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    aget-object v0, v7, v0

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v3

    iput v3, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    goto :goto_3

    .line 234
    :cond_4
    iget-object v3, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    aget-object v0, v3, v0

    iget-object v3, v6, Lcom/android/dx/ssa/Dominators$DFSInfo;->parent:Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v3}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v3

    iput v3, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    goto :goto_3

    .line 191
    :cond_5
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto/16 :goto_1

    .line 240
    :cond_6
    :goto_4
    if-gt v2, v5, :cond_8

    .line 241
    iget-object v0, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dx/ssa/SsaBasicBlock;

    .line 242
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v3

    aget-object v1, v1, v3

    iget v3, v1, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->vertex:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/dx/ssa/Dominators;->info:[Lcom/android/dx/ssa/Dominators$DFSInfo;

    .line 243
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v6

    aget-object v4, v4, v6

    iget v4, v4, Lcom/android/dx/ssa/Dominators$DFSInfo;->semidom:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dx/ssa/SsaBasicBlock;

    invoke-virtual {v1}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v1

    if-eq v3, v1, :cond_7

    .line 244
    iget-object v1, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v3

    aget-object v1, v1, v3

    iget-object v3, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    iget-object v4, p0, Lcom/android/dx/ssa/Dominators;->domInfos:[Lcom/android/dx/ssa/DomFront$DomInfo;

    .line 245
    invoke-virtual {v0}, Lcom/android/dx/ssa/SsaBasicBlock;->getIndex()I

    move-result v0

    aget-object v0, v4, v0

    iget v0, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    aget-object v0, v3, v0

    iget v0, v0, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    iput v0, v1, Lcom/android/dx/ssa/DomFront$DomInfo;->idom:I

    .line 240
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    .line 248
    :cond_8
    return-void
.end method
