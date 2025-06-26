.class final Lcom/flurry/sdk/sa$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/sa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field protected final a:Lcom/flurry/sdk/sc;

.field protected final b:Lcom/flurry/sdk/sa$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/sc;Lcom/flurry/sdk/sa$a;)V
    .locals 0

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Lcom/flurry/sdk/sa$a;->a:Lcom/flurry/sdk/sc;

    .line 921
    iput-object p2, p0, Lcom/flurry/sdk/sa$a;->b:Lcom/flurry/sdk/sa$a;

    .line 922
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 926
    const/4 v1, 0x1

    .line 927
    iget-object v0, p0, Lcom/flurry/sdk/sa$a;->b:Lcom/flurry/sdk/sa$a;

    :goto_0
    if-eqz v0, :cond_0

    .line 928
    add-int/lit8 v1, v1, 0x1

    .line 927
    iget-object v0, v0, Lcom/flurry/sdk/sa$a;->b:Lcom/flurry/sdk/sa$a;

    goto :goto_0

    .line 930
    :cond_0
    return v1
.end method

.method public a(III)Lcom/flurry/sdk/sc;
    .locals 3

    .prologue
    .line 935
    iget-object v0, p0, Lcom/flurry/sdk/sa$a;->a:Lcom/flurry/sdk/sc;

    invoke-virtual {v0}, Lcom/flurry/sdk/sc;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 936
    iget-object v0, p0, Lcom/flurry/sdk/sa$a;->a:Lcom/flurry/sdk/sc;

    invoke-virtual {v0, p2, p3}, Lcom/flurry/sdk/sc;->a(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lcom/flurry/sdk/sa$a;->a:Lcom/flurry/sdk/sc;

    .line 948
    :cond_0
    :goto_0
    return-object v0

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/sa$a;->b:Lcom/flurry/sdk/sa$a;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 941
    iget-object v0, v1, Lcom/flurry/sdk/sa$a;->a:Lcom/flurry/sdk/sc;

    .line 942
    invoke-virtual {v0}, Lcom/flurry/sdk/sc;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 943
    invoke-virtual {v0, p2, p3}, Lcom/flurry/sdk/sc;->a(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 940
    :cond_2
    iget-object v0, v1, Lcom/flurry/sdk/sa$a;->b:Lcom/flurry/sdk/sa$a;

    move-object v1, v0

    goto :goto_1

    .line 948
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I[II)Lcom/flurry/sdk/sc;
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/flurry/sdk/sa$a;->a:Lcom/flurry/sdk/sc;

    invoke-virtual {v0}, Lcom/flurry/sdk/sc;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 954
    iget-object v0, p0, Lcom/flurry/sdk/sa$a;->a:Lcom/flurry/sdk/sc;

    invoke-virtual {v0, p2, p3}, Lcom/flurry/sdk/sc;->a([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/flurry/sdk/sa$a;->a:Lcom/flurry/sdk/sc;

    .line 966
    :cond_0
    :goto_0
    return-object v0

    .line 958
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/sa$a;->b:Lcom/flurry/sdk/sa$a;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 959
    iget-object v0, v1, Lcom/flurry/sdk/sa$a;->a:Lcom/flurry/sdk/sc;

    .line 960
    invoke-virtual {v0}, Lcom/flurry/sdk/sc;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 961
    invoke-virtual {v0, p2, p3}, Lcom/flurry/sdk/sc;->a([II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 958
    :cond_2
    iget-object v0, v1, Lcom/flurry/sdk/sa$a;->b:Lcom/flurry/sdk/sa$a;

    move-object v1, v0

    goto :goto_1

    .line 966
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
