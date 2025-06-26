.class public Lcom/flurry/sdk/ol$a;
.super Lcom/flurry/sdk/jv$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field protected static final a:[Lcom/flurry/sdk/jx;

.field protected static final b:[Lcom/flurry/sdk/om;


# instance fields
.field protected final c:[Lcom/flurry/sdk/jx;

.field protected final d:[Lcom/flurry/sdk/jx;

.field protected final e:[Lcom/flurry/sdk/om;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    new-array v0, v1, [Lcom/flurry/sdk/jx;

    sput-object v0, Lcom/flurry/sdk/ol$a;->a:[Lcom/flurry/sdk/jx;

    .line 85
    new-array v0, v1, [Lcom/flurry/sdk/om;

    sput-object v0, Lcom/flurry/sdk/ol$a;->b:[Lcom/flurry/sdk/om;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, v0, v0}, Lcom/flurry/sdk/ol$a;-><init>([Lcom/flurry/sdk/jx;[Lcom/flurry/sdk/jx;[Lcom/flurry/sdk/om;)V

    .line 108
    return-void
.end method

.method protected constructor <init>([Lcom/flurry/sdk/jx;[Lcom/flurry/sdk/jx;[Lcom/flurry/sdk/om;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/flurry/sdk/jv$a;-><init>()V

    .line 114
    if-nez p1, :cond_0

    sget-object p1, Lcom/flurry/sdk/ol$a;->a:[Lcom/flurry/sdk/jx;

    :cond_0
    iput-object p1, p0, Lcom/flurry/sdk/ol$a;->c:[Lcom/flurry/sdk/jx;

    .line 116
    if-nez p2, :cond_1

    sget-object p2, Lcom/flurry/sdk/ol$a;->a:[Lcom/flurry/sdk/jx;

    :cond_1
    iput-object p2, p0, Lcom/flurry/sdk/ol$a;->d:[Lcom/flurry/sdk/jx;

    .line 118
    if-nez p3, :cond_2

    sget-object p3, Lcom/flurry/sdk/ol$a;->b:[Lcom/flurry/sdk/om;

    :cond_2
    iput-object p3, p0, Lcom/flurry/sdk/ol$a;->e:[Lcom/flurry/sdk/om;

    .line 119
    return-void
.end method


# virtual methods
.method public a(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jv$a;
    .locals 4

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null Serializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ol$a;->c:[Lcom/flurry/sdk/jx;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qw;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/jx;

    .line 128
    new-instance v1, Lcom/flurry/sdk/ol$a;

    iget-object v2, p0, Lcom/flurry/sdk/ol$a;->d:[Lcom/flurry/sdk/jx;

    iget-object v3, p0, Lcom/flurry/sdk/ol$a;->e:[Lcom/flurry/sdk/om;

    invoke-direct {v1, v0, v2, v3}, Lcom/flurry/sdk/ol$a;-><init>([Lcom/flurry/sdk/jx;[Lcom/flurry/sdk/jx;[Lcom/flurry/sdk/om;)V

    return-object v1
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/flurry/sdk/ol$a;->d:[Lcom/flurry/sdk/jx;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/flurry/sdk/jx;)Lcom/flurry/sdk/jv$a;
    .locals 4

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not pass null Serializers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ol$a;->d:[Lcom/flurry/sdk/jx;

    invoke-static {v0, p1}, Lcom/flurry/sdk/qw;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/flurry/sdk/jx;

    .line 138
    new-instance v1, Lcom/flurry/sdk/ol$a;

    iget-object v2, p0, Lcom/flurry/sdk/ol$a;->c:[Lcom/flurry/sdk/jx;

    iget-object v3, p0, Lcom/flurry/sdk/ol$a;->e:[Lcom/flurry/sdk/om;

    invoke-direct {v1, v2, v0, v3}, Lcom/flurry/sdk/ol$a;-><init>([Lcom/flurry/sdk/jx;[Lcom/flurry/sdk/jx;[Lcom/flurry/sdk/om;)V

    return-object v1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/sdk/ol$a;->e:[Lcom/flurry/sdk/om;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/jx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/flurry/sdk/ol$a;->c:[Lcom/flurry/sdk/jx;

    invoke-static {v0}, Lcom/flurry/sdk/qw;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/jx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/flurry/sdk/ol$a;->d:[Lcom/flurry/sdk/jx;

    invoke-static {v0}, Lcom/flurry/sdk/qw;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/flurry/sdk/om;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/ol$a;->e:[Lcom/flurry/sdk/om;

    invoke-static {v0}, Lcom/flurry/sdk/qw;->b([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
