.class public final enum Lcom/flurry/sdk/kg$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/kg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/flurry/sdk/kg$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/flurry/sdk/kg$a;

.field public static final enum b:Lcom/flurry/sdk/kg$a;

.field public static final enum c:Lcom/flurry/sdk/kg$a;

.field public static final enum d:Lcom/flurry/sdk/kg$a;

.field private static final synthetic e:[Lcom/flurry/sdk/kg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/flurry/sdk/kg$a;

    const-string v1, "ALWAYS"

    invoke-direct {v0, v1, v2}, Lcom/flurry/sdk/kg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kg$a;->a:Lcom/flurry/sdk/kg$a;

    .line 158
    new-instance v0, Lcom/flurry/sdk/kg$a;

    const-string v1, "NON_NULL"

    invoke-direct {v0, v1, v3}, Lcom/flurry/sdk/kg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kg$a;->b:Lcom/flurry/sdk/kg$a;

    .line 168
    new-instance v0, Lcom/flurry/sdk/kg$a;

    const-string v1, "NON_DEFAULT"

    invoke-direct {v0, v1, v4}, Lcom/flurry/sdk/kg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kg$a;->c:Lcom/flurry/sdk/kg$a;

    .line 190
    new-instance v0, Lcom/flurry/sdk/kg$a;

    const-string v1, "NON_EMPTY"

    invoke-direct {v0, v1, v5}, Lcom/flurry/sdk/kg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/flurry/sdk/kg$a;->d:Lcom/flurry/sdk/kg$a;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/flurry/sdk/kg$a;

    sget-object v1, Lcom/flurry/sdk/kg$a;->a:Lcom/flurry/sdk/kg$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/flurry/sdk/kg$a;->b:Lcom/flurry/sdk/kg$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/flurry/sdk/kg$a;->c:Lcom/flurry/sdk/kg$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/flurry/sdk/kg$a;->d:Lcom/flurry/sdk/kg$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/flurry/sdk/kg$a;->e:[Lcom/flurry/sdk/kg$a;

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
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/flurry/sdk/kg$a;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lcom/flurry/sdk/kg$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/kg$a;

    return-object v0
.end method

.method public static values()[Lcom/flurry/sdk/kg$a;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/flurry/sdk/kg$a;->e:[Lcom/flurry/sdk/kg$a;

    invoke-virtual {v0}, [Lcom/flurry/sdk/kg$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/kg$a;

    return-object v0
.end method
