.class public abstract enum Lcom/google/dexmaker/BinaryOp;
.super Ljava/lang/Enum;
.source "BinaryOp.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/dexmaker/BinaryOp;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/dexmaker/BinaryOp;

.field public static final enum ADD:Lcom/google/dexmaker/BinaryOp;

.field public static final enum AND:Lcom/google/dexmaker/BinaryOp;

.field public static final enum DIVIDE:Lcom/google/dexmaker/BinaryOp;

.field public static final enum MULTIPLY:Lcom/google/dexmaker/BinaryOp;

.field public static final enum OR:Lcom/google/dexmaker/BinaryOp;

.field public static final enum REMAINDER:Lcom/google/dexmaker/BinaryOp;

.field public static final enum SHIFT_LEFT:Lcom/google/dexmaker/BinaryOp;

.field public static final enum SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

.field public static final enum SUBTRACT:Lcom/google/dexmaker/BinaryOp;

.field public static final enum UNSIGNED_SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

.field public static final enum XOR:Lcom/google/dexmaker/BinaryOp;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/google/dexmaker/BinaryOp$1;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v3}, Lcom/google/dexmaker/BinaryOp$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->ADD:Lcom/google/dexmaker/BinaryOp;

    .line 48
    new-instance v0, Lcom/google/dexmaker/BinaryOp$2;

    const-string v1, "SUBTRACT"

    invoke-direct {v0, v1, v4}, Lcom/google/dexmaker/BinaryOp$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->SUBTRACT:Lcom/google/dexmaker/BinaryOp;

    .line 55
    new-instance v0, Lcom/google/dexmaker/BinaryOp$3;

    const-string v1, "MULTIPLY"

    invoke-direct {v0, v1, v5}, Lcom/google/dexmaker/BinaryOp$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->MULTIPLY:Lcom/google/dexmaker/BinaryOp;

    .line 62
    new-instance v0, Lcom/google/dexmaker/BinaryOp$4;

    const-string v1, "DIVIDE"

    invoke-direct {v0, v1, v6}, Lcom/google/dexmaker/BinaryOp$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->DIVIDE:Lcom/google/dexmaker/BinaryOp;

    .line 69
    new-instance v0, Lcom/google/dexmaker/BinaryOp$5;

    const-string v1, "REMAINDER"

    invoke-direct {v0, v1, v7}, Lcom/google/dexmaker/BinaryOp$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->REMAINDER:Lcom/google/dexmaker/BinaryOp;

    .line 76
    new-instance v0, Lcom/google/dexmaker/BinaryOp$6;

    const-string v1, "AND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->AND:Lcom/google/dexmaker/BinaryOp;

    .line 83
    new-instance v0, Lcom/google/dexmaker/BinaryOp$7;

    const-string v1, "OR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->OR:Lcom/google/dexmaker/BinaryOp;

    .line 90
    new-instance v0, Lcom/google/dexmaker/BinaryOp$8;

    const-string v1, "XOR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->XOR:Lcom/google/dexmaker/BinaryOp;

    .line 97
    new-instance v0, Lcom/google/dexmaker/BinaryOp$9;

    const-string v1, "SHIFT_LEFT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->SHIFT_LEFT:Lcom/google/dexmaker/BinaryOp;

    .line 104
    new-instance v0, Lcom/google/dexmaker/BinaryOp$10;

    const-string v1, "SHIFT_RIGHT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

    .line 111
    new-instance v0, Lcom/google/dexmaker/BinaryOp$11;

    const-string v1, "UNSIGNED_SHIFT_RIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/google/dexmaker/BinaryOp$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->UNSIGNED_SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

    .line 39
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/dexmaker/BinaryOp;

    sget-object v1, Lcom/google/dexmaker/BinaryOp;->ADD:Lcom/google/dexmaker/BinaryOp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/dexmaker/BinaryOp;->SUBTRACT:Lcom/google/dexmaker/BinaryOp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/dexmaker/BinaryOp;->MULTIPLY:Lcom/google/dexmaker/BinaryOp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/dexmaker/BinaryOp;->DIVIDE:Lcom/google/dexmaker/BinaryOp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/dexmaker/BinaryOp;->REMAINDER:Lcom/google/dexmaker/BinaryOp;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/dexmaker/BinaryOp;->AND:Lcom/google/dexmaker/BinaryOp;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/dexmaker/BinaryOp;->OR:Lcom/google/dexmaker/BinaryOp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/dexmaker/BinaryOp;->XOR:Lcom/google/dexmaker/BinaryOp;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/dexmaker/BinaryOp;->SHIFT_LEFT:Lcom/google/dexmaker/BinaryOp;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/dexmaker/BinaryOp;->SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/dexmaker/BinaryOp;->UNSIGNED_SHIFT_RIGHT:Lcom/google/dexmaker/BinaryOp;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/dexmaker/BinaryOp;->$VALUES:[Lcom/google/dexmaker/BinaryOp;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/dexmaker/BinaryOp$1;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/google/dexmaker/BinaryOp;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/dexmaker/BinaryOp;
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/dexmaker/BinaryOp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/BinaryOp;

    return-object v0
.end method

.method public static values()[Lcom/google/dexmaker/BinaryOp;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/dexmaker/BinaryOp;->$VALUES:[Lcom/google/dexmaker/BinaryOp;

    invoke-virtual {v0}, [Lcom/google/dexmaker/BinaryOp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/dexmaker/BinaryOp;

    return-object v0
.end method


# virtual methods
.method abstract rop(Lcom/android/dx/rop/type/TypeList;)Lcom/android/dx/rop/code/Rop;
.end method
