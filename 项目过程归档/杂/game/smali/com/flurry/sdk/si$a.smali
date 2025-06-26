.class public final enum Lcom/flurry/sdk/si$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/si;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/si$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/si$a;

.field public static final enum b:Lcom/flurry/sdk/si$a;

.field public static final enum c:Lcom/flurry/sdk/si$a;

.field private static final synthetic e:[Lcom/flurry/sdk/si$a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v2, 0xfa0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/flurry/sdk/si$a;

    const-string v1, "READ_IO_BUFFER"

    invoke-direct {v0, v1, v3, v2}, Lcom/flurry/sdk/si$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/si$a;->a:Lcom/flurry/sdk/si$a;

    .line 21
    new-instance v0, Lcom/flurry/sdk/si$a;

    const-string v1, "WRITE_ENCODING_BUFFER"

    invoke-direct {v0, v1, v4, v2}, Lcom/flurry/sdk/si$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/si$a;->b:Lcom/flurry/sdk/si$a;

    .line 27
    new-instance v0, Lcom/flurry/sdk/si$a;

    const-string v1, "WRITE_CONCAT_BUFFER"

    const/16 v2, 0x7d0

    invoke-direct {v0, v1, v5, v2}, Lcom/flurry/sdk/si$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/flurry/sdk/si$a;->c:Lcom/flurry/sdk/si$a;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/flurry/sdk/si$a;

    sget-object v1, Lcom/flurry/sdk/si$a;->a:Lcom/flurry/sdk/si$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/si$a;->b:Lcom/flurry/sdk/si$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/si$a;->c:Lcom/flurry/sdk/si$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/si$a;->e:[Lcom/flurry/sdk/si$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/flurry/sdk/si$a;->d:I

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/si$a;)I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/flurry/sdk/si$a;->d:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/si$a;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/flurry/sdk/si$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/si$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/si$a;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/flurry/sdk/si$a;->e:[Lcom/flurry/sdk/si$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/si$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/si$a;

    return-object v0
.end method
