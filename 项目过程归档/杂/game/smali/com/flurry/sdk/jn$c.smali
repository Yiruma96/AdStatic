.class abstract Lcom/flurry/sdk/jn$c;
.super Lcom/flurry/sdk/jn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CFG::",
        "Lcom/flurry/sdk/jn$b;",
        "T:",
        "Lcom/flurry/sdk/jn$c",
        "<TCFG;TT;>;>",
        "Lcom/flurry/sdk/jn",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected i:I


# direct methods
.method protected constructor <init>(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iq;Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ng;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/je;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/iu",
            "<+",
            "Lcom/flurry/sdk/ir;",
            ">;",
            "Lcom/flurry/sdk/iq;",
            "Lcom/flurry/sdk/ne",
            "<*>;",
            "Lcom/flurry/sdk/ng;",
            "Lcom/flurry/sdk/jr;",
            "Lcom/flurry/sdk/qs;",
            "Lcom/flurry/sdk/je;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1025
    invoke-direct/range {p0 .. p7}, Lcom/flurry/sdk/jn;-><init>(Lcom/flurry/sdk/iu;Lcom/flurry/sdk/iq;Lcom/flurry/sdk/ne;Lcom/flurry/sdk/ng;Lcom/flurry/sdk/jr;Lcom/flurry/sdk/qs;Lcom/flurry/sdk/je;)V

    .line 1026
    iput p8, p0, Lcom/flurry/sdk/jn$c;->i:I

    .line 1027
    return-void
.end method

.method protected constructor <init>(Lcom/flurry/sdk/jn$c;Lcom/flurry/sdk/jn$a;Lcom/flurry/sdk/ng;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jn$c",
            "<TCFG;TT;>;",
            "Lcom/flurry/sdk/jn$a;",
            "Lcom/flurry/sdk/ng;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1044
    invoke-direct {p0, p1, p2, p3}, Lcom/flurry/sdk/jn;-><init>(Lcom/flurry/sdk/jn;Lcom/flurry/sdk/jn$a;Lcom/flurry/sdk/ng;)V

    .line 1045
    iget v0, p1, Lcom/flurry/sdk/jn$c;->i:I

    iput v0, p0, Lcom/flurry/sdk/jn$c;->i:I

    .line 1046
    return-void
.end method

.method static d(Ljava/lang/Class;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Enum",
            "<TF;>;:",
            "Lcom/flurry/sdk/jn$b;",
            ">(",
            "Ljava/lang/Class",
            "<TF;>;)I"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1054
    .line 1055
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    array-length v5, v0

    move v4, v1

    move v3, v1

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    move-object v1, v2

    .line 1056
    check-cast v1, Lcom/flurry/sdk/jn$b;

    invoke-interface {v1}, Lcom/flurry/sdk/jn$b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    check-cast v2, Lcom/flurry/sdk/jn$b;

    invoke-interface {v2}, Lcom/flurry/sdk/jn$b;->b()I

    move-result v1

    or-int/2addr v1, v3

    .line 1055
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v1

    goto :goto_0

    .line 1060
    :cond_0
    return v3

    :cond_1
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jn$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1132
    iget v0, p0, Lcom/flurry/sdk/jn$c;->i:I

    invoke-interface {p1}, Lcom/flurry/sdk/jn$b;->b()I

    move-result v1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/jn$c;->i:I

    .line 1133
    return-void
.end method

.method public a(Lcom/flurry/sdk/jn$b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1147
    if-eqz p2, :cond_0

    .line 1148
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jn$c;->b(Lcom/flurry/sdk/jn$b;)V

    .line 1152
    :goto_0
    return-void

    .line 1150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/jn$c;->a(Lcom/flurry/sdk/jn$b;)V

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/jn$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCFG;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1120
    iget v0, p0, Lcom/flurry/sdk/jn$c;->i:I

    invoke-interface {p1}, Lcom/flurry/sdk/jn$b;->b()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/flurry/sdk/jn$c;->i:I

    .line 1121
    return-void
.end method
