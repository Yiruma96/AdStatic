.class public Lcom/flurry/sdk/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ca$1;,
        Lcom/flurry/sdk/ca$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ex",
        "<TObjectType;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TObjectType;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TObjectType;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/flurry/sdk/ca;->a:Ljava/lang/Class;

    .line 36
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TObjectType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 56
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-object v0

    .line 61
    :cond_0
    new-instance v1, Lcom/flurry/sdk/jq;

    invoke-direct {v1}, Lcom/flurry/sdk/jq;-><init>()V

    .line 64
    new-instance v2, Lcom/flurry/sdk/oc;

    const-string v3, "AvroJsonObjectSerializerModule"

    new-instance v4, Lcom/flurry/sdk/hq;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v6, v6, v0}, Lcom/flurry/sdk/hq;-><init>(IIILjava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/flurry/sdk/oc;-><init>(Ljava/lang/String;Lcom/flurry/sdk/hq;)V

    .line 65
    const-class v3, Ljava/lang/CharSequence;

    new-instance v4, Lcom/flurry/sdk/ca$a;

    invoke-direct {v4, v0}, Lcom/flurry/sdk/ca$a;-><init>(Lcom/flurry/sdk/ca$1;)V

    invoke-virtual {v2, v3, v4}, Lcom/flurry/sdk/oc;->a(Ljava/lang/Class;Lcom/flurry/sdk/jl;)Lcom/flurry/sdk/oc;

    .line 66
    invoke-virtual {v1, v2}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/jp;)V

    .line 68
    iget-object v0, p0, Lcom/flurry/sdk/ca;->a:Ljava/lang/Class;

    invoke-virtual {v1, p1, v0}, Lcom/flurry/sdk/jq;->a(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TObjectType;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    new-instance v0, Lcom/flurry/sdk/jq;

    invoke-direct {v0}, Lcom/flurry/sdk/jq;-><init>()V

    .line 47
    sget-object v1, Lcom/flurry/sdk/ju$a;->m:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/ju$a;Z)Lcom/flurry/sdk/jq;

    .line 48
    sget-object v1, Lcom/flurry/sdk/ju$a;->b:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/ju$a;Z)Lcom/flurry/sdk/jq;

    .line 49
    sget-object v1, Lcom/flurry/sdk/ju$a;->c:Lcom/flurry/sdk/ju$a;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/jq;->a(Lcom/flurry/sdk/ju$a;Z)Lcom/flurry/sdk/jq;

    .line 51
    invoke-virtual {v0, p1, p2}, Lcom/flurry/sdk/jq;->a(Ljava/io/OutputStream;Ljava/lang/Object;)V

    goto :goto_0
.end method
