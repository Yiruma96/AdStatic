.class Lcom/flurry/sdk/fm$b;
.super Lcom/flurry/sdk/fm$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/flurry/sdk/fm;

.field private c:Lcom/flurry/sdk/fn;

.field private d:Lcom/flurry/sdk/fn;


# direct methods
.method private constructor <init>(Lcom/flurry/sdk/fm;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fn;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/flurry/sdk/fn;",
            "Lcom/flurry/sdk/fn;",
            "Lcom/flurry/sdk/fn;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    iput-object p1, p0, Lcom/flurry/sdk/fm$b;->b:Lcom/flurry/sdk/fm;

    .line 167
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/flurry/sdk/fm$a;-><init>(Lcom/flurry/sdk/fm;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fm$1;)V

    .line 168
    iput-object p6, p0, Lcom/flurry/sdk/fm$b;->c:Lcom/flurry/sdk/fn;

    .line 169
    iput-object p7, p0, Lcom/flurry/sdk/fm$b;->d:Lcom/flurry/sdk/fn;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lcom/flurry/sdk/fm;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fm$1;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct/range {p0 .. p7}, Lcom/flurry/sdk/fm$b;-><init>(Lcom/flurry/sdk/fm;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fn;Lcom/flurry/sdk/fn;)V

    return-void
.end method


# virtual methods
.method b(Lcom/flurry/sdk/hf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 189
    const-string v0, "response"

    invoke-virtual {p1, v0}, Lcom/flurry/sdk/hf;->a(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/flurry/sdk/fm$b;->c:Lcom/flurry/sdk/fn;

    iget-object v1, p0, Lcom/flurry/sdk/fm$b;->b:Lcom/flurry/sdk/fm;

    invoke-static {v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fm;)Lcom/flurry/sdk/fn$o;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/fn;->a(Lcom/flurry/sdk/fn$o;Lcom/flurry/sdk/hf;)V

    .line 192
    iget-object v0, p0, Lcom/flurry/sdk/fm$b;->d:Lcom/flurry/sdk/fn;

    invoke-virtual {v0}, Lcom/flurry/sdk/fn;->k()Ljava/util/List;

    move-result-object v0

    .line 193
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/fn;->b(Ljava/util/List;)Lcom/flurry/sdk/fn;

    move-result-object v0

    .line 195
    const-string v1, "errors"

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/hf;->a(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/flurry/sdk/fm$b;->b:Lcom/flurry/sdk/fm;

    invoke-static {v1}, Lcom/flurry/sdk/fm;->a(Lcom/flurry/sdk/fm;)Lcom/flurry/sdk/fn$o;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/fn;->a(Lcom/flurry/sdk/fn$o;Lcom/flurry/sdk/hf;)V

    .line 198
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 177
    invoke-super {p0, p1}, Lcom/flurry/sdk/fm$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v0

    .line 178
    :cond_1
    instance-of v1, p1, Lcom/flurry/sdk/fm$b;

    if-eqz v1, :cond_0

    .line 179
    check-cast p1, Lcom/flurry/sdk/fm$b;

    .line 180
    iget-object v1, p0, Lcom/flurry/sdk/fm$b;->c:Lcom/flurry/sdk/fn;

    iget-object v2, p1, Lcom/flurry/sdk/fm$b;->c:Lcom/flurry/sdk/fn;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/flurry/sdk/fm$b;->d:Lcom/flurry/sdk/fn;

    iget-object v2, p1, Lcom/flurry/sdk/fm$b;->d:Lcom/flurry/sdk/fn;

    invoke-virtual {v1, v2}, Lcom/flurry/sdk/fn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Lcom/flurry/sdk/fm$a;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/flurry/sdk/fm$b;->c:Lcom/flurry/sdk/fn;

    invoke-virtual {v1}, Lcom/flurry/sdk/fn;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/flurry/sdk/fm$b;->d:Lcom/flurry/sdk/fn;

    invoke-virtual {v1}, Lcom/flurry/sdk/fn;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
