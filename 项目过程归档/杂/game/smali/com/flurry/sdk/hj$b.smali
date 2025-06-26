.class public final enum Lcom/flurry/sdk/hj$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/hj$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/hj$b;

.field public static final enum b:Lcom/flurry/sdk/hj$b;

.field public static final enum c:Lcom/flurry/sdk/hj$b;

.field public static final enum d:Lcom/flurry/sdk/hj$b;

.field public static final enum e:Lcom/flurry/sdk/hj$b;

.field public static final enum f:Lcom/flurry/sdk/hj$b;

.field private static final synthetic g:[Lcom/flurry/sdk/hj$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Lcom/flurry/sdk/hj$b;

    const-string v1, "INT"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hj$b;->a:Lcom/flurry/sdk/hj$b;

    new-instance v0, Lcom/flurry/sdk/hj$b;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hj$b;->b:Lcom/flurry/sdk/hj$b;

    new-instance v0, Lcom/flurry/sdk/hj$b;

    const-string v1, "BIG_INTEGER"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hj$b;->c:Lcom/flurry/sdk/hj$b;

    new-instance v0, Lcom/flurry/sdk/hj$b;

    const-string v1, "FLOAT"

    invoke-direct {v0, v1, v6}, Lcom/flurry/sdk/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hj$b;->d:Lcom/flurry/sdk/hj$b;

    new-instance v0, Lcom/flurry/sdk/hj$b;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v7}, Lcom/flurry/sdk/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hj$b;->e:Lcom/flurry/sdk/hj$b;

    new-instance v0, Lcom/flurry/sdk/hj$b;

    const-string v1, "BIG_DECIMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/hj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/hj$b;->f:Lcom/flurry/sdk/hj$b;

    .line 45
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/flurry/sdk/hj$b;

    sget-object v1, Lcom/flurry/sdk/hj$b;->a:Lcom/flurry/sdk/hj$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/hj$b;->b:Lcom/flurry/sdk/hj$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/hj$b;->c:Lcom/flurry/sdk/hj$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/flurry/sdk/hj$b;->d:Lcom/flurry/sdk/hj$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/flurry/sdk/hj$b;->e:Lcom/flurry/sdk/hj$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/flurry/sdk/hj$b;->f:Lcom/flurry/sdk/hj$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/flurry/sdk/hj$b;->g:[Lcom/flurry/sdk/hj$b;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/hj$b;
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/flurry/sdk/hj$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/hj$b;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/hj$b;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/flurry/sdk/hj$b;->g:[Lcom/flurry/sdk/hj$b;

    invoke-virtual {v0}, [Lcom/flurry/sdk/hj$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/hj$b;

    return-object v0
.end method
