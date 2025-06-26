.class public final Lcom/android/dx/dex/code/form/Form10t;
.super Lcom/android/dx/dex/code/InsnFormat;
.source "Form10t.java"


# static fields
.field public static final THE_ONE:Lcom/android/dx/dex/code/InsnFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/android/dx/dex/code/form/Form10t;

    invoke-direct {v0}, Lcom/android/dx/dex/code/form/Form10t;-><init>()V

    sput-object v0, Lcom/android/dx/dex/code/form/Form10t;->THE_ONE:Lcom/android/dx/dex/code/InsnFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/dx/dex/code/InsnFormat;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/dx/dex/code/form/Form10t;->signedFitsInByte(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public codeSize()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public insnArgString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form10t;->branchString(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insnCommentString(Lcom/android/dx/dex/code/DalvInsn;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-static {p1}, Lcom/android/dx/dex/code/form/Form10t;->branchComment(Lcom/android/dx/dex/code/DalvInsn;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCompatible(Lcom/android/dx/dex/code/DalvInsn;)Z
    .locals 1

    .prologue
    .line 61
    instance-of v0, p1, Lcom/android/dx/dex/code/TargetInsn;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1}, Lcom/android/dx/dex/code/DalvInsn;->getRegisters()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    .line 66
    :cond_1
    check-cast p1, Lcom/android/dx/dex/code/TargetInsn;

    .line 67
    invoke-virtual {p1}, Lcom/android/dx/dex/code/TargetInsn;->hasTargetOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/form/Form10t;->branchFits(Lcom/android/dx/dex/code/TargetInsn;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public writeTo(Lcom/android/dx/util/AnnotatedOutput;Lcom/android/dx/dex/code/DalvInsn;)V
    .locals 1

    .prologue
    .line 82
    move-object v0, p2

    check-cast v0, Lcom/android/dx/dex/code/TargetInsn;

    invoke-virtual {v0}, Lcom/android/dx/dex/code/TargetInsn;->getTargetOffset()I

    move-result v0

    .line 84
    and-int/lit16 v0, v0, 0xff

    invoke-static {p2, v0}, Lcom/android/dx/dex/code/form/Form10t;->opcodeUnit(Lcom/android/dx/dex/code/DalvInsn;I)S

    move-result v0

    invoke-static {p1, v0}, Lcom/android/dx/dex/code/form/Form10t;->write(Lcom/android/dx/util/AnnotatedOutput;S)V

    .line 85
    return-void
.end method
