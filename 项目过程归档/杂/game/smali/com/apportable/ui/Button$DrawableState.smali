.class final enum Lcom/apportable/ui/Button$DrawableState;
.super Ljava/lang/Enum;
.source "Button.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DrawableState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/apportable/ui/Button$DrawableState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/apportable/ui/Button$DrawableState;

.field public static final enum Disabled:Lcom/apportable/ui/Button$DrawableState;

.field public static final enum Highlighted:Lcom/apportable/ui/Button$DrawableState;

.field public static final enum Normal:Lcom/apportable/ui/Button$DrawableState;

.field public static final enum Selected:Lcom/apportable/ui/Button$DrawableState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 173
    new-instance v0, Lcom/apportable/ui/Button$DrawableState;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/apportable/ui/Button$DrawableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    .line 174
    new-instance v0, Lcom/apportable/ui/Button$DrawableState;

    const-string v1, "Selected"

    invoke-direct {v0, v1, v3}, Lcom/apportable/ui/Button$DrawableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apportable/ui/Button$DrawableState;->Selected:Lcom/apportable/ui/Button$DrawableState;

    .line 175
    new-instance v0, Lcom/apportable/ui/Button$DrawableState;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v4}, Lcom/apportable/ui/Button$DrawableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    .line 176
    new-instance v0, Lcom/apportable/ui/Button$DrawableState;

    const-string v1, "Highlighted"

    invoke-direct {v0, v1, v5}, Lcom/apportable/ui/Button$DrawableState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/apportable/ui/Button$DrawableState;->Highlighted:Lcom/apportable/ui/Button$DrawableState;

    .line 172
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/apportable/ui/Button$DrawableState;

    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Normal:Lcom/apportable/ui/Button$DrawableState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Selected:Lcom/apportable/ui/Button$DrawableState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Disabled:Lcom/apportable/ui/Button$DrawableState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/apportable/ui/Button$DrawableState;->Highlighted:Lcom/apportable/ui/Button$DrawableState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/apportable/ui/Button$DrawableState;->$VALUES:[Lcom/apportable/ui/Button$DrawableState;

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
    .line 172
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/apportable/ui/Button$DrawableState;
    .locals 1

    .prologue
    .line 172
    const-class v0, Lcom/apportable/ui/Button$DrawableState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/apportable/ui/Button$DrawableState;

    return-object v0
.end method

.method public static values()[Lcom/apportable/ui/Button$DrawableState;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/apportable/ui/Button$DrawableState;->$VALUES:[Lcom/apportable/ui/Button$DrawableState;

    invoke-virtual {v0}, [Lcom/apportable/ui/Button$DrawableState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apportable/ui/Button$DrawableState;

    return-object v0
.end method
