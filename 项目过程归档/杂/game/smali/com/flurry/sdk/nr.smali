.class public Lcom/flurry/sdk/nr;
.super Lcom/flurry/sdk/nw;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/qs;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/nw;-><init>(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/qs;)V

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/flurry/sdk/sh;
    .locals 4

    .prologue
    .line 48
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    invoke-static {p1}, Lcom/flurry/sdk/qs;->a(Ljava/lang/String;)Lcom/flurry/sdk/sh;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 58
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/flurry/sdk/nr;->c:Lcom/flurry/sdk/qs;

    iget-object v2, p0, Lcom/flurry/sdk/nr;->d:Lcom/flurry/sdk/sh;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/qs;->a(Lcom/flurry/sdk/sh;Ljava/lang/Class;)Lcom/flurry/sdk/sh;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for id type \'Id.class\'): no such class found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (for id type \'Id.class\'): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/flurry/sdk/nr;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/flurry/sdk/nr;->b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 77
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    .line 82
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "java.util"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    instance-of v1, p1, Ljava/util/EnumSet;

    if-eqz v1, :cond_2

    .line 93
    check-cast p1, Ljava/util/EnumSet;

    invoke-static {p1}, Lcom/flurry/sdk/qy;->a(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    invoke-static {}, Lcom/flurry/sdk/qs;->a()Lcom/flurry/sdk/qs;

    move-result-object v1

    const-class v2, Ljava/util/EnumSet;

    invoke-virtual {v1, v2, v0}, Lcom/flurry/sdk/qs;->b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/sdk/ql;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/ql;->m()Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_1
    :goto_0
    return-object v0

    .line 96
    :cond_2
    instance-of v1, p1, Ljava/util/EnumMap;

    if-eqz v1, :cond_3

    .line 97
    check-cast p1, Ljava/util/EnumMap;

    invoke-static {p1}, Lcom/flurry/sdk/qy;->a(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object v0

    .line 98
    const-class v1, Ljava/lang/Object;

    .line 100
    invoke-static {}, Lcom/flurry/sdk/qs;->a()Lcom/flurry/sdk/qs;

    move-result-object v2

    const-class v3, Ljava/util/EnumMap;

    invoke-virtual {v2, v3, v0, v1}, Lcom/flurry/sdk/qs;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/flurry/sdk/qo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/qo;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_3
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, ".Arrays$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ".Collections$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 111
    const-string v0, "java.util.ArrayList"

    goto :goto_0

    .line 114
    :cond_5
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 122
    invoke-static {p2}, Lcom/flurry/sdk/qy;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/flurry/sdk/nr;->d:Lcom/flurry/sdk/sh;

    invoke-virtual {v1}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v1

    .line 129
    invoke-static {v1}, Lcom/flurry/sdk/qy;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/nr;->d:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->p()Ljava/lang/Class;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
