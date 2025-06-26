.class public final Lcom/google/dexmaker/TypeId;
.super Ljava/lang/Object;
.source "TypeId.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BOOLEAN:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYTE:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CHAR:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLOAT:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final INT:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final OBJECT:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_TO_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/dexmaker/TypeId",
            "<*>;>;"
        }
    .end annotation
.end field

.field public static final SHORT:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRING:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final VOID:Lcom/google/dexmaker/TypeId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/dexmaker/TypeId",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final constant:Lcom/android/dx/rop/cst/CstType;

.field final name:Ljava/lang/String;

.field final ropType:Lcom/android/dx/rop/type/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->BOOLEAN:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->BOOLEAN:Lcom/google/dexmaker/TypeId;

    .line 40
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->BYTE:Lcom/google/dexmaker/TypeId;

    .line 43
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->CHAR:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->CHAR:Lcom/google/dexmaker/TypeId;

    .line 47
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->DOUBLE:Lcom/google/dexmaker/TypeId;

    .line 50
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->FLOAT:Lcom/google/dexmaker/TypeId;

    .line 53
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    .line 56
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->LONG:Lcom/google/dexmaker/TypeId;

    .line 59
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->SHORT:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->SHORT:Lcom/google/dexmaker/TypeId;

    .line 62
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->VOID:Lcom/google/dexmaker/TypeId;

    .line 65
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    .line 68
    new-instance v0, Lcom/google/dexmaker/TypeId;

    sget-object v1, Lcom/android/dx/rop/type/Type;->STRING:Lcom/android/dx/rop/type/Type;

    invoke-direct {v0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/google/dexmaker/TypeId;->STRING:Lcom/google/dexmaker/TypeId;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    .line 73
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/dexmaker/TypeId;->BOOLEAN:Lcom/google/dexmaker/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/dexmaker/TypeId;->BYTE:Lcom/google/dexmaker/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/dexmaker/TypeId;->CHAR:Lcom/google/dexmaker/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/dexmaker/TypeId;->DOUBLE:Lcom/google/dexmaker/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/dexmaker/TypeId;->FLOAT:Lcom/google/dexmaker/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/dexmaker/TypeId;->LONG:Lcom/google/dexmaker/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/dexmaker/TypeId;->SHORT:Lcom/google/dexmaker/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/dexmaker/TypeId;->VOID:Lcom/google/dexmaker/TypeId;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method constructor <init>(Lcom/android/dx/rop/type/Type;)V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p1}, Lcom/android/dx/rop/type/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/dexmaker/TypeId;-><init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;)V

    .line 92
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;)V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 98
    :cond_1
    iput-object p1, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/google/dexmaker/TypeId;->ropType:Lcom/android/dx/rop/type/Type;

    .line 100
    invoke-static {p2}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/TypeId;->constant:Lcom/android/dx/rop/cst/CstType;

    .line 101
    return-void
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/google/dexmaker/TypeId;->PRIMITIVE_TO_TYPE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/TypeId;

    .line 117
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/String;)Lcom/google/dexmaker/TypeId;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static get(Ljava/lang/String;)Lcom/google/dexmaker/TypeId;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v0, Lcom/google/dexmaker/TypeId;

    invoke-static {p0}, Lcom/android/dx/rop/type/Type;->internReturnType(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/dexmaker/TypeId;-><init>(Ljava/lang/String;Lcom/android/dx/rop/type/Type;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 137
    instance-of v0, p1, Lcom/google/dexmaker/TypeId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/dexmaker/TypeId;

    iget-object v0, p1, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs getConstructor([Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)",
            "Lcom/google/dexmaker/MethodId",
            "<TT;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/google/dexmaker/MethodId;

    sget-object v1, Lcom/google/dexmaker/TypeId;->VOID:Lcom/google/dexmaker/TypeId;

    const-string v2, "<init>"

    new-instance v3, Lcom/google/dexmaker/TypeList;

    invoke-direct {v3, p1}, Lcom/google/dexmaker/TypeList;-><init>([Lcom/google/dexmaker/TypeId;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/dexmaker/MethodId;-><init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;Lcom/google/dexmaker/TypeList;)V

    return-object v0
.end method

.method public getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/TypeId",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/dexmaker/FieldId",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v0, Lcom/google/dexmaker/FieldId;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/dexmaker/FieldId;-><init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;)V

    return-object v0
.end method

.method public varargs getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/dexmaker/TypeId",
            "<TR;>;",
            "Ljava/lang/String;",
            "[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;)",
            "Lcom/google/dexmaker/MethodId",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/google/dexmaker/MethodId;

    new-instance v1, Lcom/google/dexmaker/TypeList;

    invoke-direct {v1, p3}, Lcom/google/dexmaker/TypeList;-><init>([Lcom/google/dexmaker/TypeId;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/dexmaker/MethodId;-><init>(Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/String;Lcom/google/dexmaker/TypeList;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/dexmaker/TypeId;->name:Ljava/lang/String;

    return-object v0
.end method
