.class Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;
.super Ljava/lang/Object;
.source "ProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/dexmaker/stock/ProxyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodSetEntry"
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final originalMethod:Ljava/lang/reflect/Method;

.field private final paramTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final returnType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 1

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->originalMethod:Ljava/lang/reflect/Method;

    .line 754
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->name:Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->paramTypes:[Ljava/lang/Class;

    .line 756
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->returnType:Ljava/lang/Class;

    .line 757
    return-void
.end method

.method static synthetic access$000(Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;)Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->originalMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 761
    instance-of v1, p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    if-eqz v1, :cond_0

    .line 762
    check-cast p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    .line 763
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->returnType:Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->returnType:Ljava/lang/Class;

    .line 764
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->paramTypes:[Ljava/lang/Class;

    iget-object v2, p1, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->paramTypes:[Ljava/lang/Class;

    .line 765
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 767
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 772
    const/16 v0, 0x11

    .line 773
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v1, v1, 0x20f

    add-int/2addr v0, v1

    .line 774
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->returnType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 775
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->paramTypes:[Ljava/lang/Class;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 776
    return v0
.end method
