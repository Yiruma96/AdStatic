.class final enum Lcom/google/dexmaker/UnaryOp$2;
.super Lcom/google/dexmaker/UnaryOp;
.source "UnaryOp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/UnaryOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/dexmaker/UnaryOp;-><init>(Ljava/lang/String;ILcom/google/dexmaker/UnaryOp$1;)V

    return-void
.end method


# virtual methods
.method rop(Lcom/google/dexmaker/TypeId;)Lcom/android/dx/rop/code/Rop;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)",
            "Lcom/android/dx/rop/code/Rop;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p1, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    invoke-static {v0}, Lcom/android/dx/rop/code/Rops;->opNeg(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v0

    return-object v0
.end method
