.class public final enum Lcom/chartboost/sdk/impl/ai$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/impl/ai$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/impl/ai$b;

.field public static final enum b:Lcom/chartboost/sdk/impl/ai$b;

.field public static final enum c:Lcom/chartboost/sdk/impl/ai$b;

.field private static final synthetic d:[Lcom/chartboost/sdk/impl/ai$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/chartboost/sdk/impl/ai$b;

    const-string v1, "REWARD_OFFER"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/ai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    .line 33
    new-instance v0, Lcom/chartboost/sdk/impl/ai$b;

    const-string v1, "VIDEO_PLAYING"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/impl/ai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    .line 34
    new-instance v0, Lcom/chartboost/sdk/impl/ai$b;

    const-string v1, "POST_VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/impl/ai$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/chartboost/sdk/impl/ai$b;

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->a:Lcom/chartboost/sdk/impl/ai$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->b:Lcom/chartboost/sdk/impl/ai$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/impl/ai$b;->c:Lcom/chartboost/sdk/impl/ai$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/chartboost/sdk/impl/ai$b;->d:[Lcom/chartboost/sdk/impl/ai$b;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/impl/ai$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/chartboost/sdk/impl/ai$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ai$b;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/impl/ai$b;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/chartboost/sdk/impl/ai$b;->d:[Lcom/chartboost/sdk/impl/ai$b;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/impl/ai$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/impl/ai$b;

    return-object v0
.end method
