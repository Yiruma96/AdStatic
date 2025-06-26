.class public Lcom/dd/plist/NSSet;
.super Lcom/dd/plist/NSObject;
.source "NSSet.java"


# instance fields
.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 47
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    .line 48
    return-void
.end method

.method public varargs constructor <init>([Lcom/dd/plist/NSObject;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    .line 56
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 57
    return-void
.end method


# virtual methods
.method public addObject(Lcom/dd/plist/NSObject;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public allObjects()[Lcom/dd/plist/NSObject;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/dd/plist/NSSet;->count()I

    move-result v1

    new-array v1, v1, [Lcom/dd/plist/NSObject;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dd/plist/NSObject;

    return-object v0
.end method

.method public anyObject()Lcom/dd/plist/NSObject;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    goto :goto_0
.end method

.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    .line 207
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 208
    invoke-virtual {v0, p1}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    goto :goto_0

    .line 210
    :cond_0
    return-void
.end method

.method public containsObject(Lcom/dd/plist/NSObject;)Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 163
    if-nez p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 169
    check-cast p1, Lcom/dd/plist/NSSet;

    .line 170
    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    iget-object v2, p1, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    iget-object v2, p1, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 156
    .line 157
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0xcb

    .line 158
    return v0

    .line 157
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public intersectsSet(Lcom/dd/plist/NSSet;)Z
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 125
    invoke-virtual {p1, v0}, Lcom/dd/plist/NSSet;->containsObject(Lcom/dd/plist/NSObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSubsetOfSet(Lcom/dd/plist/NSSet;)Z
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 138
    invoke-virtual {p1, v0}, Lcom/dd/plist/NSSet;->containsObject(Lcom/dd/plist/NSObject;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public member(Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public objectIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/dd/plist/NSObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public removeObject(Lcom/dd/plist/NSObject;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    .line 215
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 216
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->getID(Lcom/dd/plist/NSObject;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeID(I)V

    goto :goto_0

    .line 218
    :cond_0
    return-void
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 3

    .prologue
    .line 193
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSSet;->indent(Ljava/lang/StringBuilder;I)V

    .line 194
    const-string v0, "<array>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v0, p0, Lcom/dd/plist/NSSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dd/plist/NSObject;

    .line 197
    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    .line 198
    sget-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSSet;->indent(Ljava/lang/StringBuilder;I)V

    .line 201
    const-string v0, "</array>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    return-void
.end method
