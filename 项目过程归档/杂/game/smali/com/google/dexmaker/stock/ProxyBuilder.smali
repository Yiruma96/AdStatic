.class public final Lcom/google/dexmaker/stock/ProxyBuilder;
.super Ljava/lang/Object;
.source "ProxyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final FIELD_NAME_HANDLER:Ljava/lang/String; = "$__handler"

.field private static final FIELD_NAME_METHODS:Ljava/lang/String; = "$__methodArray"

.field private static final PRIMITIVE_TO_BOXED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/dexmaker/MethodId",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/dexmaker/TypeId",
            "<*>;",
            "Lcom/google/dexmaker/MethodId",
            "<**>;>;"
        }
    .end annotation
.end field

.field private static final generatedProxyClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final baseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private constructorArgTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private constructorArgValues:[Ljava/lang/Object;

.field private dexCache:Ljava/io/File;

.field private handler:Ljava/lang/reflect/InvocationHandler;

.field private interfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private parentClassLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->generatedProxyClasses:Ljava/util/Map;

    .line 695
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    .line 696
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    .line 709
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 710
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v1

    .line 711
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v0

    .line 712
    const-string v3, "valueOf"

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/google/dexmaker/TypeId;

    aput-object v1, v4, v6

    invoke-virtual {v0, v0, v3, v4}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v0

    .line 713
    sget-object v3, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 726
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 727
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->BOOLEAN:Lcom/google/dexmaker/TypeId;

    const-string v4, "booleanValue"

    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    const-string v4, "intValue"

    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->BYTE:Lcom/google/dexmaker/TypeId;

    const-string v4, "byteValue"

    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->LONG:Lcom/google/dexmaker/TypeId;

    const-string v4, "longValue"

    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->SHORT:Lcom/google/dexmaker/TypeId;

    const-string v4, "shortValue"

    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->FLOAT:Lcom/google/dexmaker/TypeId;

    const-string v4, "floatValue"

    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->DOUBLE:Lcom/google/dexmaker/TypeId;

    const-string v4, "doubleValue"

    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    sget-object v3, Lcom/google/dexmaker/TypeId;->CHAR:Lcom/google/dexmaker/TypeId;

    const-string v4, "charValue"

    new-array v5, v6, [Lcom/google/dexmaker/TypeId;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    sput-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;

    .line 736
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const-class v0, Lcom/google/dexmaker/stock/ProxyBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    .line 133
    new-array v0, v1, [Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    .line 134
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    .line 135
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    .line 138
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    .line 139
    return-void
.end method

.method private static varargs asSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 686
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static boxIfRequired(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)Lcom/google/dexmaker/Local;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/dexmaker/Code;",
            "Lcom/google/dexmaker/Local",
            "<*>;",
            "Lcom/google/dexmaker/Local",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/dexmaker/Local",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 513
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TYPE_TO_UNBOX_METHOD:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/dexmaker/Local;->getType()Lcom/google/dexmaker/TypeId;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/MethodId;

    .line 514
    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-object p1

    .line 517
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/dexmaker/Local;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/dexmaker/Code;->invokeStatic(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    move-object p1, p2

    .line 518
    goto :goto_0
.end method

.method public static varargs callSuper(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 523
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 524
    invoke-static {p1}, Lcom/google/dexmaker/stock/ProxyBuilder;->superMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 525
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 526
    :catch_0
    move-exception v0

    .line 527
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private static check(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 542
    if-nez p0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    return-void
.end method

.method private static classArrayToTypeArray([Ljava/lang/Class;)[Lcom/google/dexmaker/TypeId;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 655
    array-length v0, p0

    new-array v1, v0, [Lcom/google/dexmaker/TypeId;

    .line 656
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 657
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    aput-object v2, v1, v0

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_0
    return-object v1
.end method

.method public static forClass(Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Lcom/google/dexmaker/stock/ProxyBuilder;

    invoke-direct {v0, p0}, Lcom/google/dexmaker/stock/ProxyBuilder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method private static generateCodeForAllMethods(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;[Ljava/lang/reflect/Method;Lcom/google/dexmaker/TypeId;)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "G:TT;>(",
            "Lcom/google/dexmaker/DexMaker;",
            "Lcom/google/dexmaker/TypeId",
            "<TG;>;[",
            "Ljava/lang/reflect/Method;",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    const-class v5, Ljava/lang/reflect/InvocationHandler;

    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v8

    .line 353
    const-class v5, [Ljava/lang/reflect/Method;

    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v9

    .line 354
    const-string v5, "$__handler"

    .line 355
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v5}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v10

    .line 356
    const-string v5, "$__methodArray"

    .line 357
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v5}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v11

    .line 358
    const-class v5, Ljava/lang/reflect/Method;

    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v12

    .line 359
    const-class v5, [Ljava/lang/Object;

    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v13

    .line 360
    sget-object v5, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    const-string v6, "invoke"

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/dexmaker/TypeId;

    const/4 v14, 0x0

    sget-object v15, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    aput-object v15, v7, v14

    const/4 v14, 0x1

    aput-object v12, v7, v14

    const/4 v14, 0x2

    aput-object v13, v7, v14

    invoke-virtual {v8, v5, v6, v7}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v14

    .line 362
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    move-object/from16 v0, p2

    array-length v5, v0

    if-ge v6, v5, :cond_6

    .line 406
    aget-object v15, p2, v6

    .line 407
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    .line 408
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v16

    .line 409
    move-object/from16 v0, v16

    array-length v5, v0

    new-array v0, v5, [Lcom/google/dexmaker/TypeId;

    move-object/from16 v17, v0

    .line 410
    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v5, v0, :cond_0

    .line 411
    aget-object v18, v16, v5

    invoke-static/range {v18 .. v18}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v18

    aput-object v18, v17, v5

    .line 410
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 413
    :cond_0
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v18

    .line 414
    invoke-static/range {v18 .. v18}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v19

    .line 415
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v20

    .line 416
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v7, v2}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v5

    .line 417
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;

    move-result-object v21

    .line 418
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->getThis(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v22

    .line 419
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v23

    .line 420
    sget-object v5, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v24

    .line 421
    sget-object v5, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v25

    .line 422
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v26

    .line 423
    sget-object v5, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v27

    .line 424
    sget-object v5, Lcom/google/dexmaker/TypeId;->OBJECT:Lcom/google/dexmaker/TypeId;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v28

    .line 425
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v29

    .line 426
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v30

    .line 427
    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v31

    .line 428
    sget-object v5, Lcom/google/dexmaker/TypeId;->INT:Lcom/google/dexmaker/TypeId;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v32

    .line 429
    sget-object v5, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_BOXED:Ljava/util/Map;

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 430
    const/4 v7, 0x0

    .line 431
    if-eqz v5, :cond_7

    .line 432
    invoke-static {v5}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v5

    .line 434
    :goto_2
    move-object/from16 v0, v16

    array-length v7, v0

    new-array v0, v7, [Lcom/google/dexmaker/Local;

    move-object/from16 v33, v0

    .line 435
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v34

    .line 436
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v7

    .line 438
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    .line 439
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v11, v1}, Lcom/google/dexmaker/Code;->sget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;)V

    .line 440
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/dexmaker/Code;->aget(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 441
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    .line 442
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/dexmaker/Code;->newArray(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 443
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-virtual {v0, v10, v1, v2}, Lcom/google/dexmaker/Code;->iget(Lcom/google/dexmaker/FieldId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 446
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    .line 447
    new-instance v27, Lcom/google/dexmaker/Label;

    invoke-direct/range {v27 .. v27}, Lcom/google/dexmaker/Label;-><init>()V

    .line 448
    sget-object v30, Lcom/google/dexmaker/Comparison;->EQ:Lcom/google/dexmaker/Comparison;

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v27

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/google/dexmaker/Code;->compare(Lcom/google/dexmaker/Comparison;Lcom/google/dexmaker/Label;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 452
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    if-ge v7, v0, :cond_1

    .line 453
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/dexmaker/Code;->loadConstant(Lcom/google/dexmaker/Local;Ljava/lang/Object;)V

    .line 454
    aget-object v30, v17, v7

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Lcom/google/dexmaker/Code;->getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v30

    .line 455
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/google/dexmaker/stock/ProxyBuilder;->boxIfRequired(Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)Lcom/google/dexmaker/Local;

    move-result-object v30

    .line 456
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/dexmaker/Code;->aput(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 452
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 458
    :cond_1
    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/dexmaker/Local;

    const/16 v25, 0x0

    aput-object v22, v7, v25

    const/16 v25, 0x1

    aput-object v31, v7, v25

    const/16 v25, 0x2

    aput-object v26, v7, v25

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v14, v1, v2, v7}, Lcom/google/dexmaker/Code;->invokeInterface(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 460
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move-object/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v5}, Lcom/google/dexmaker/stock/ProxyBuilder;->generateCodeForReturnStatement(Lcom/google/dexmaker/Code;Ljava/lang/Class;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 466
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->mark(Lcom/google/dexmaker/Label;)V

    .line 467
    const/4 v5, 0x0

    :goto_4
    move-object/from16 v0, v33

    array-length v7, v0

    if-ge v5, v7, :cond_2

    .line 468
    aget-object v7, v17, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v7}, Lcom/google/dexmaker/Code;->getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v7

    aput-object v7, v33, v5

    .line 467
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 470
    :cond_2
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 471
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/google/dexmaker/Code;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 472
    invoke-virtual/range {v21 .. v21}, Lcom/google/dexmaker/Code;->returnVoid()V

    .line 488
    :goto_5
    invoke-static {v15}, Lcom/google/dexmaker/stock/ProxyBuilder;->superMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v5

    .line 487
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v5, v2}, Lcom/google/dexmaker/TypeId;->getMethod(Lcom/google/dexmaker/TypeId;Ljava/lang/String;[Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v5

    .line 489
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;

    move-result-object v7

    .line 490
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/google/dexmaker/Code;->getThis(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v15

    .line 491
    move-object/from16 v0, v16

    array-length v5, v0

    new-array v0, v5, [Lcom/google/dexmaker/Local;

    move-object/from16 v16, v0

    .line 492
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v5, v0, :cond_4

    .line 493
    aget-object v21, v17, v5

    move-object/from16 v0, v21

    invoke-virtual {v7, v5, v0}, Lcom/google/dexmaker/Code;->getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v21

    aput-object v21, v16, v5

    .line 492
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 474
    :cond_3
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/dexmaker/stock/ProxyBuilder;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 475
    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/google/dexmaker/Code;->returnValue(Lcom/google/dexmaker/Local;)V

    goto :goto_5

    .line 495
    :cond_4
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 496
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v5, v15, v1}, Lcom/google/dexmaker/Code;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 497
    invoke-virtual {v7}, Lcom/google/dexmaker/Code;->returnVoid()V

    .line 362
    :goto_7
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_0

    .line 499
    :cond_5
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/google/dexmaker/Code;->newLocal(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v5

    .line 500
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v7, v15, v1, v5}, Lcom/google/dexmaker/stock/ProxyBuilder;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 501
    invoke-virtual {v7, v5}, Lcom/google/dexmaker/Code;->returnValue(Lcom/google/dexmaker/Local;)V

    goto :goto_7

    .line 504
    :cond_6
    return-void

    :cond_7
    move-object v5, v7

    goto/16 :goto_2
.end method

.method private static generateCodeForReturnStatement(Lcom/google/dexmaker/Code;Ljava/lang/Class;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 2

    .prologue
    .line 672
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p0, p4, p2}, Lcom/google/dexmaker/Code;->cast(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 674
    invoke-static {p1}, Lcom/google/dexmaker/stock/ProxyBuilder;->getUnboxMethodForPrimitive(Ljava/lang/Class;)Lcom/google/dexmaker/MethodId;

    move-result-object v0

    .line 675
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/dexmaker/Local;

    invoke-virtual {p0, v0, p3, p4, v1}, Lcom/google/dexmaker/Code;->invokeVirtual(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 676
    invoke-virtual {p0, p3}, Lcom/google/dexmaker/Code;->returnValue(Lcom/google/dexmaker/Local;)V

    .line 683
    :goto_0
    return-void

    .line 677
    :cond_0
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/google/dexmaker/Code;->returnVoid()V

    goto :goto_0

    .line 680
    :cond_1
    invoke-virtual {p0, p3, p2}, Lcom/google/dexmaker/Code;->cast(Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V

    .line 681
    invoke-virtual {p0, p3}, Lcom/google/dexmaker/Code;->returnValue(Lcom/google/dexmaker/Local;)V

    goto :goto_0
.end method

.method private static generateConstructorsAndFields(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "G:TT;>(",
            "Lcom/google/dexmaker/DexMaker;",
            "Lcom/google/dexmaker/TypeId",
            "<TG;>;",
            "Lcom/google/dexmaker/TypeId",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x0

    .line 549
    const-class v0, Ljava/lang/reflect/InvocationHandler;

    invoke-static {v0}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v0

    .line 550
    const-class v2, [Ljava/lang/reflect/Method;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v2

    .line 551
    const-string v3, "$__handler"

    invoke-virtual {p1, v0, v3}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v0

    .line 553
    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3, v10}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V

    .line 554
    const-string v0, "$__methodArray"

    invoke-virtual {p1, v2, v0}, Lcom/google/dexmaker/TypeId;->getField(Lcom/google/dexmaker/TypeId;Ljava/lang/String;)Lcom/google/dexmaker/FieldId;

    move-result-object v0

    .line 556
    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v10}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/FieldId;ILjava/lang/Object;)V

    .line 557
    invoke-static {p3}, Lcom/google/dexmaker/stock/ProxyBuilder;->getConstructorsToOverwrite(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 558
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v6, :cond_0

    .line 557
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 561
    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->classArrayToTypeArray([Ljava/lang/Class;)[Lcom/google/dexmaker/TypeId;

    move-result-object v5

    .line 562
    invoke-virtual {p1, v5}, Lcom/google/dexmaker/TypeId;->getConstructor([Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v0

    .line 563
    const/4 v6, 0x1

    invoke-virtual {p0, v0, v6}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/MethodId;I)Lcom/google/dexmaker/Code;

    move-result-object v6

    .line 564
    invoke-virtual {v6, p1}, Lcom/google/dexmaker/Code;->getThis(Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v7

    .line 565
    array-length v0, v5

    new-array v8, v0, [Lcom/google/dexmaker/Local;

    move v0, v1

    .line 566
    :goto_2
    array-length v9, v8

    if-ge v0, v9, :cond_1

    .line 567
    aget-object v9, v5, v0

    invoke-virtual {v6, v0, v9}, Lcom/google/dexmaker/Code;->getParameter(ILcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/Local;

    move-result-object v9

    aput-object v9, v8, v0

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 569
    :cond_1
    invoke-virtual {p2, v5}, Lcom/google/dexmaker/TypeId;->getConstructor([Lcom/google/dexmaker/TypeId;)Lcom/google/dexmaker/MethodId;

    move-result-object v0

    .line 570
    invoke-virtual {v6, v0, v10, v7, v8}, Lcom/google/dexmaker/Code;->invokeDirect(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 571
    invoke-virtual {v6}, Lcom/google/dexmaker/Code;->returnVoid()V

    goto :goto_1

    .line 573
    :cond_2
    return-void
.end method

.method private static getConstructorsToOverwrite(Ljava/lang/Class;)[Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[",
            "Ljava/lang/reflect/Constructor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 580
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Constructor;

    return-object v0
.end method

.method private getInterfacesAsTypeIds()[Lcom/google/dexmaker/TypeId;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/google/dexmaker/TypeId",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Lcom/google/dexmaker/TypeId;

    .line 585
    const/4 v0, 0x0

    .line 586
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 587
    add-int/lit8 v2, v1, 0x1

    invoke-static {v0}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 588
    goto :goto_0

    .line 589
    :cond_0
    return-object v3
.end method

.method public static getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
    .locals 3

    .prologue
    .line 324
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "$__handler"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 325
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 326
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/InvocationHandler;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a valid proxy instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 329
    :catch_1
    move-exception v0

    .line 331
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static getMethodNameForProxyOf(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;",
            ">;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 616
    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 617
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_1

    .line 621
    new-instance v5, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    invoke-direct {v5, v4}, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;-><init>(Ljava/lang/reflect/Method;)V

    .line 622
    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-interface {p1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 616
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 628
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_0

    .line 632
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "finalize"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 636
    :cond_2
    new-instance v5, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    invoke-direct {v5, v4}, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;-><init>(Ljava/lang/reflect/Method;)V

    .line 637
    invoke-interface {p2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 642
    invoke-interface {p1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 645
    :cond_3
    invoke-virtual {p3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0

    .line 646
    invoke-direct {p0, p1, p2, v3}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 648
    :cond_4
    return-void
.end method

.method private getMethodsToProxyRecursive()[Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 597
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 598
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 599
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    :goto_0
    if-eqz v0, :cond_0

    .line 600
    invoke-direct {p0, v1, v2, v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    .line 599
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 603
    invoke-direct {p0, v1, v2, v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodsToProxy(Ljava/util/Set;Ljava/util/Set;Ljava/lang/Class;)V

    goto :goto_1

    .line 606
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/reflect/Method;

    .line 607
    const/4 v0, 0x0

    .line 608
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;

    .line 609
    add-int/lit8 v2, v1, 0x1

    # getter for: Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->originalMethod:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;->access$000(Lcom/google/dexmaker/stock/ProxyBuilder$MethodSetEntry;)Ljava/lang/reflect/Method;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 610
    goto :goto_2

    .line 611
    :cond_2
    return-object v3
.end method

.method private static getUnboxMethodForPrimitive(Ljava/lang/Class;)Lcom/google/dexmaker/MethodId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/dexmaker/MethodId",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 690
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->PRIMITIVE_TO_UNBOX_METHOD:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/dexmaker/MethodId;

    return-object v0
.end method

.method private static invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Code;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;)V
    .locals 0

    .prologue
    .line 509
    invoke-virtual {p1, p0, p4, p2, p3}, Lcom/google/dexmaker/Code;->invokeSuper(Lcom/google/dexmaker/MethodId;Lcom/google/dexmaker/Local;Lcom/google/dexmaker/Local;[Lcom/google/dexmaker/Local;)V

    .line 510
    return-void
.end method

.method public static isProxyClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 343
    :try_start_0
    const-string v0, "$__handler"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static launderCause(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 276
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 278
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 279
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 282
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 283
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 286
    :cond_1
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static setHandlerInstanceField(Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V
    .locals 2

    .prologue
    .line 291
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "$__handler"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 292
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 293
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 301
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 296
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 297
    :catch_1
    move-exception v0

    .line 299
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static setMethodsStaticField(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    :try_start_0
    const-string v0, "$__methodArray"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 306
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 315
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 310
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 311
    :catch_1
    move-exception v0

    .line 313
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static superMethodName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x5f

    .line 536
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "super$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    .line 538
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x5b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3b

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 202
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->handler:Ljava/lang/reflect/InvocationHandler;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "handler == null"

    invoke-static {v0, v3}, Lcom/google/dexmaker/stock/ProxyBuilder;->check(ZLjava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v3, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    array-length v3, v3

    if-ne v0, v3, :cond_1

    :goto_1
    const-string v0, "constructorArgValues.length != constructorArgTypes.length"

    invoke-static {v1, v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->check(ZLjava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/google/dexmaker/stock/ProxyBuilder;->buildProxyClass()Ljava/lang/Class;

    move-result-object v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    :try_start_1
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->handler:Ljava/lang/reflect/InvocationHandler;

    invoke-static {v0, v1}, Lcom/google/dexmaker/stock/ProxyBuilder;->setHandlerInstanceField(Ljava/lang/Object;Ljava/lang/reflect/InvocationHandler;)V

    .line 227
    return-object v0

    :cond_0
    move v0, v2

    .line 202
    goto :goto_0

    :cond_1
    move v1, v2

    .line 203
    goto :goto_1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No constructor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with parameter types "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    .line 211
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 216
    :catch_1
    move-exception v0

    .line 218
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 219
    :catch_2
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 222
    :catch_3
    move-exception v0

    .line 224
    invoke-static {v0}, Lcom/google/dexmaker/stock/ProxyBuilder;->launderCause(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public buildProxyClass()Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    sget-object v0, Lcom/google/dexmaker/stock/ProxyBuilder;->generatedProxyClasses:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 236
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    .line 238
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/dexmaker/stock/ProxyBuilder;->asSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    return-object v0

    .line 243
    :cond_0
    new-instance v0, Lcom/google/dexmaker/DexMaker;

    invoke-direct {v0}, Lcom/google/dexmaker/DexMaker;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodNameForProxyOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "L"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/String;)Lcom/google/dexmaker/TypeId;

    move-result-object v1

    .line 246
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    invoke-static {v2}, Lcom/google/dexmaker/TypeId;->get(Ljava/lang/Class;)Lcom/google/dexmaker/TypeId;

    move-result-object v4

    .line 247
    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    invoke-static {v0, v1, v4, v2}, Lcom/google/dexmaker/stock/ProxyBuilder;->generateConstructorsAndFields(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;Lcom/google/dexmaker/TypeId;Ljava/lang/Class;)V

    .line 248
    invoke-direct {p0}, Lcom/google/dexmaker/stock/ProxyBuilder;->getMethodsToProxyRecursive()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 249
    invoke-static {v0, v1, v7, v4}, Lcom/google/dexmaker/stock/ProxyBuilder;->generateCodeForAllMethods(Lcom/google/dexmaker/DexMaker;Lcom/google/dexmaker/TypeId;[Ljava/lang/reflect/Method;Lcom/google/dexmaker/TypeId;)V

    .line 250
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".generated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 251
    invoke-direct {p0}, Lcom/google/dexmaker/stock/ProxyBuilder;->getInterfacesAsTypeIds()[Lcom/google/dexmaker/TypeId;

    move-result-object v5

    .line 250
    invoke-virtual/range {v0 .. v5}, Lcom/google/dexmaker/DexMaker;->declare(Lcom/google/dexmaker/TypeId;Ljava/lang/String;ILcom/google/dexmaker/TypeId;[Lcom/google/dexmaker/TypeId;)V

    .line 252
    iget-object v1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->dexCache:Ljava/io/File;

    invoke-virtual {v0, v1, v2}, Lcom/google/dexmaker/DexMaker;->generateAndLoad(Ljava/lang/ClassLoader;Ljava/io/File;)Ljava/lang/ClassLoader;

    move-result-object v0

    .line 254
    :try_start_0
    invoke-direct {p0, v0, v6}, Lcom/google/dexmaker/stock/ProxyBuilder;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 263
    invoke-static {v0, v7}, Lcom/google/dexmaker/stock/ProxyBuilder;->setMethodsStaticField(Ljava/lang/Class;[Ljava/lang/reflect/Method;)V

    .line 264
    sget-object v1, Lcom/google/dexmaker/stock/ProxyBuilder;->generatedProxyClasses:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 257
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot proxy inaccessible class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->baseClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 259
    :catch_1
    move-exception v0

    .line 261
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public varargs constructorArgTypes([Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgTypes:[Ljava/lang/Class;

    .line 187
    return-object p0
.end method

.method public varargs constructorArgValues([Ljava/lang/Object;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 181
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->constructorArgValues:[Ljava/lang/Object;

    .line 182
    return-object p0
.end method

.method public dexCache(Ljava/io/File;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->dexCache:Ljava/io/File;

    .line 167
    return-object p0
.end method

.method public handler(Ljava/lang/reflect/InvocationHandler;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/InvocationHandler;",
            ")",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->handler:Ljava/lang/reflect/InvocationHandler;

    .line 157
    return-object p0
.end method

.method public varargs implementing([Ljava/lang/Class;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 171
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 172
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_0

    .line 173
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an interface: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    iget-object v3, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->interfaces:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    return-object p0
.end method

.method public parentClassLoader(Ljava/lang/ClassLoader;)Lcom/google/dexmaker/stock/ProxyBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/google/dexmaker/stock/ProxyBuilder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/dexmaker/stock/ProxyBuilder;->parentClassLoader:Ljava/lang/ClassLoader;

    .line 152
    return-object p0
.end method
