.class public abstract Lcom/flurry/sdk/pb;
.super Lcom/flurry/sdk/pf;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/pf",
        "<TT;>;",
        "Lcom/flurry/sdk/jt;"
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Lcom/flurry/sdk/sh;

.field protected final c:Lcom/flurry/sdk/jz;

.field protected d:Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lcom/flurry/sdk/is;

.field protected f:Lcom/flurry/sdk/ov;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/sh;",
            "Z",
            "Lcom/flurry/sdk/jz;",
            "Lcom/flurry/sdk/is;",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/pf;-><init>(Ljava/lang/Class;Z)V

    .line 72
    iput-object p2, p0, Lcom/flurry/sdk/pb;->b:Lcom/flurry/sdk/sh;

    .line 74
    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/flurry/sdk/sh;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/flurry/sdk/pb;->a:Z

    .line 75
    iput-object p4, p0, Lcom/flurry/sdk/pb;->c:Lcom/flurry/sdk/jz;

    .line 76
    iput-object p5, p0, Lcom/flurry/sdk/pb;->e:Lcom/flurry/sdk/is;

    .line 77
    iput-object p6, p0, Lcom/flurry/sdk/pb;->d:Lcom/flurry/sdk/jk;

    .line 78
    invoke-static {}, Lcom/flurry/sdk/ov;->a()Lcom/flurry/sdk/ov;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/pb;->f:Lcom/flurry/sdk/ov;

    .line 79
    return-void
.end method


# virtual methods
.method protected final a(Lcom/flurry/sdk/ov;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ov;",
            "Lcom/flurry/sdk/sh;",
            "Lcom/flurry/sdk/jw;",
            ")",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/flurry/sdk/pb;->e:Lcom/flurry/sdk/is;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/ov;->a(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/ov$d;

    move-result-object v0

    .line 180
    iget-object v1, v0, Lcom/flurry/sdk/ov$d;->b:Lcom/flurry/sdk/ov;

    if-eq p1, v1, :cond_0

    .line 181
    iget-object v1, v0, Lcom/flurry/sdk/ov$d;->b:Lcom/flurry/sdk/ov;

    iput-object v1, p0, Lcom/flurry/sdk/pb;->f:Lcom/flurry/sdk/ov;

    .line 183
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/ov$d;->a:Lcom/flurry/sdk/jk;

    return-object v0
.end method

.method protected final a(Lcom/flurry/sdk/ov;Ljava/lang/Class;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/ov;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/flurry/sdk/jw;",
            ")",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/flurry/sdk/pb;->e:Lcom/flurry/sdk/is;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/ov;->a(Ljava/lang/Class;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/ov$d;

    move-result-object v0

    .line 167
    iget-object v1, v0, Lcom/flurry/sdk/ov$d;->b:Lcom/flurry/sdk/ov;

    if-eq p1, v1, :cond_0

    .line 168
    iget-object v1, v0, Lcom/flurry/sdk/ov$d;->b:Lcom/flurry/sdk/ov;

    iput-object v1, p0, Lcom/flurry/sdk/pb;->f:Lcom/flurry/sdk/ov;

    .line 170
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/ov$d;->a:Lcom/flurry/sdk/jk;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/flurry/sdk/jh;
        }
    .end annotation

    .prologue
    .line 154
    iget-boolean v0, p0, Lcom/flurry/sdk/pb;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/pb;->b:Lcom/flurry/sdk/sh;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/pb;->d:Lcom/flurry/sdk/jk;

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/flurry/sdk/pb;->b:Lcom/flurry/sdk/sh;

    iget-object v1, p0, Lcom/flurry/sdk/pb;->e:Lcom/flurry/sdk/is;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/pb;->d:Lcom/flurry/sdk/jk;

    .line 157
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/sdk/hf;",
            "Lcom/flurry/sdk/jw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p2}, Lcom/flurry/sdk/hf;->b()V

    .line 86
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pb;->b(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    .line 87
    invoke-virtual {p2}, Lcom/flurry/sdk/hf;->c()V

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/sdk/hf;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/jz;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jz;->c(Ljava/lang/Object;Lcom/flurry/sdk/hf;)V

    .line 96
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pb;->b(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    .line 97
    invoke-virtual {p4, p1, p2}, Lcom/flurry/sdk/jz;->f(Ljava/lang/Object;Lcom/flurry/sdk/hf;)V

    .line 98
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/flurry/sdk/hf;",
            "Lcom/flurry/sdk/jw;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation
.end method
