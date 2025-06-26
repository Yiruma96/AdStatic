.class final Lcom/flurry/sdk/ov$e;
.super Lcom/flurry/sdk/ov;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ov;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/jk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/flurry/sdk/ov;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/flurry/sdk/ov$e;->a:Ljava/lang/Class;

    .line 132
    iput-object p2, p0, Lcom/flurry/sdk/ov$e;->b:Lcom/flurry/sdk/jk;

    .line 133
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/flurry/sdk/jk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/flurry/sdk/ov$e;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/flurry/sdk/ov$e;->b:Lcom/flurry/sdk/jk;

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/Class;Lcom/flurry/sdk/jk;)Lcom/flurry/sdk/ov;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/flurry/sdk/ov;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/flurry/sdk/ov$a;

    iget-object v1, p0, Lcom/flurry/sdk/ov$e;->a:Ljava/lang/Class;

    iget-object v2, p0, Lcom/flurry/sdk/ov$e;->b:Lcom/flurry/sdk/jk;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/flurry/sdk/ov$a;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jk;Ljava/lang/Class;Lcom/flurry/sdk/jk;)V

    return-object v0
.end method
