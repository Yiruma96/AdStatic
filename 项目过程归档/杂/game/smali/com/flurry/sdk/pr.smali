.class public Lcom/flurry/sdk/pr;
.super Lcom/flurry/sdk/py$a;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/jt;


# annotations
.annotation runtime Lcom/flurry/sdk/kb;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/flurry/sdk/py$a",
        "<[",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/flurry/sdk/jt;"
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Lcom/flurry/sdk/sh;

.field protected c:Lcom/flurry/sdk/jk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/flurry/sdk/ov;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 73
    const-class v0, [Ljava/lang/Object;

    invoke-direct {p0, v0, p3, p4}, Lcom/flurry/sdk/py$a;-><init>(Ljava/lang/Class;Lcom/flurry/sdk/jz;Lcom/flurry/sdk/is;)V

    .line 74
    iput-object p1, p0, Lcom/flurry/sdk/pr;->b:Lcom/flurry/sdk/sh;

    .line 75
    iput-boolean p2, p0, Lcom/flurry/sdk/pr;->a:Z

    .line 76
    invoke-static {}, Lcom/flurry/sdk/ov;->a()Lcom/flurry/sdk/ov;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/pr;->d:Lcom/flurry/sdk/ov;

    .line 77
    iput-object p5, p0, Lcom/flurry/sdk/pr;->c:Lcom/flurry/sdk/jk;

    .line 78
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
    .line 273
    iget-object v0, p0, Lcom/flurry/sdk/pr;->f:Lcom/flurry/sdk/is;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/ov;->a(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/ov$d;

    move-result-object v0

    .line 275
    iget-object v1, v0, Lcom/flurry/sdk/ov$d;->b:Lcom/flurry/sdk/ov;

    if-eq p1, v1, :cond_0

    .line 276
    iget-object v1, v0, Lcom/flurry/sdk/ov$d;->b:Lcom/flurry/sdk/ov;

    iput-object v1, p0, Lcom/flurry/sdk/pr;->d:Lcom/flurry/sdk/ov;

    .line 278
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
    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/pr;->f:Lcom/flurry/sdk/is;

    invoke-virtual {p1, p2, p3, v0}, Lcom/flurry/sdk/ov;->a(Ljava/lang/Class;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/ov$d;

    move-result-object v0

    .line 261
    iget-object v1, v0, Lcom/flurry/sdk/ov$d;->b:Lcom/flurry/sdk/ov;

    if-eq p1, v1, :cond_0

    .line 262
    iget-object v1, v0, Lcom/flurry/sdk/ov$d;->b:Lcom/flurry/sdk/ov;

    iput-object v1, p0, Lcom/flurry/sdk/pr;->d:Lcom/flurry/sdk/ov;

    .line 264
    :cond_0
    iget-object v0, v0, Lcom/flurry/sdk/ov$d;->a:Lcom/flurry/sdk/jk;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/jz;)Lcom/flurry/sdk/pf;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/jz;",
            ")",
            "Lcom/flurry/sdk/pf",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lcom/flurry/sdk/pr;

    iget-object v1, p0, Lcom/flurry/sdk/pr;->b:Lcom/flurry/sdk/sh;

    iget-boolean v2, p0, Lcom/flurry/sdk/pr;->a:Z

    iget-object v4, p0, Lcom/flurry/sdk/pr;->f:Lcom/flurry/sdk/is;

    iget-object v5, p0, Lcom/flurry/sdk/pr;->c:Lcom/flurry/sdk/jk;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/pr;-><init>(Lcom/flurry/sdk/sh;ZLcom/flurry/sdk/jz;Lcom/flurry/sdk/is;Lcom/flurry/sdk/jk;)V

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
    .line 248
    iget-boolean v0, p0, Lcom/flurry/sdk/pr;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/pr;->c:Lcom/flurry/sdk/jk;

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/pr;->b:Lcom/flurry/sdk/sh;

    iget-object v1, p0, Lcom/flurry/sdk/pr;->f:Lcom/flurry/sdk/is;

    invoke-virtual {p1, v0, v1}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/sh;Lcom/flurry/sdk/is;)Lcom/flurry/sdk/jk;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/pr;->c:Lcom/flurry/sdk/jk;

    .line 251
    :cond_0
    return-void
.end method

.method public a([Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 90
    array-length v3, p1

    .line 91
    if-nez v3, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/flurry/sdk/pr;->c:Lcom/flurry/sdk/jk;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/flurry/sdk/pr;->c:Lcom/flurry/sdk/jk;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/flurry/sdk/pr;->a([Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jk;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/flurry/sdk/pr;->e:Lcom/flurry/sdk/jz;

    if-eqz v0, :cond_3

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pr;->b([Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    goto :goto_0

    .line 102
    :cond_3
    const/4 v2, 0x0

    .line 103
    const/4 v1, 0x0

    .line 105
    :try_start_0
    iget-object v4, p0, Lcom/flurry/sdk/pr;->d:Lcom/flurry/sdk/ov;

    .line 106
    :goto_1
    if-ge v2, v3, :cond_0

    .line 107
    aget-object v1, p1, v2

    .line 108
    if-nez v1, :cond_4

    .line 109
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/hf;)V

    .line 106
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Lcom/flurry/sdk/ov;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 114
    if-nez v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/flurry/sdk/pr;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {v0}, Lcom/flurry/sdk/sh;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/flurry/sdk/pr;->b:Lcom/flurry/sdk/sh;

    invoke-virtual {p3, v0, v5}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/sh;Ljava/lang/Class;)Lcom/flurry/sdk/sh;

    move-result-object v0

    invoke-virtual {p0, v4, v0, p3}, Lcom/flurry/sdk/pr;->a(Lcom/flurry/sdk/ov;Lcom/flurry/sdk/sh;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 123
    :cond_5
    :goto_3
    invoke-virtual {v0, v1, p2, p3}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    throw v0

    .line 120
    :cond_6
    :try_start_1
    invoke-virtual {p0, v4, v5, p3}, Lcom/flurry/sdk/pr;->a(Lcom/flurry/sdk/ov;Ljava/lang/Class;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jk;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_3

    .line 134
    :goto_4
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 135
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    .line 137
    :cond_7
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_8

    .line 138
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 140
    :cond_8
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 127
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public a([Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Lcom/flurry/sdk/hf;",
            "Lcom/flurry/sdk/jw;",
            "Lcom/flurry/sdk/jk",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 148
    array-length v3, p1

    .line 149
    iget-object v4, p0, Lcom/flurry/sdk/pr;->e:Lcom/flurry/sdk/jz;

    .line 151
    const/4 v0, 0x0

    .line 152
    const/4 v1, 0x0

    move v2, v0

    .line 154
    :goto_0
    if-ge v2, v3, :cond_4

    .line 155
    :try_start_0
    aget-object v1, p1, v2

    .line 156
    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/hf;)V

    .line 154
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 160
    :cond_0
    if-nez v4, :cond_1

    .line 161
    invoke-virtual {p4, v1, p2, p3}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    throw v0

    .line 163
    :cond_1
    :try_start_1
    invoke-virtual {p4, v1, p2, p3, v4}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 168
    :catch_1
    move-exception v0

    .line 170
    :goto_2
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 171
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 173
    :cond_2
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_3

    .line 174
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 176
    :cond_3
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 178
    :cond_4
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lcom/flurry/sdk/pr;->a([Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V

    return-void
.end method

.method public b([Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/flurry/sdk/he;
        }
    .end annotation

    .prologue
    .line 183
    array-length v3, p1

    .line 184
    iget-object v4, p0, Lcom/flurry/sdk/pr;->e:Lcom/flurry/sdk/jz;

    .line 185
    const/4 v2, 0x0

    .line 186
    const/4 v1, 0x0

    .line 188
    :try_start_0
    iget-object v5, p0, Lcom/flurry/sdk/pr;->d:Lcom/flurry/sdk/ov;

    .line 189
    :goto_0
    if-ge v2, v3, :cond_4

    .line 190
    aget-object v1, p1, v2

    .line 191
    if-nez v1, :cond_0

    .line 192
    invoke-virtual {p3, p2}, Lcom/flurry/sdk/jw;->a(Lcom/flurry/sdk/hf;)V

    .line 189
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 196
    invoke-virtual {v5, v6}, Lcom/flurry/sdk/ov;->a(Ljava/lang/Class;)Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 197
    if-nez v0, :cond_1

    .line 198
    invoke-virtual {p0, v5, v6, p3}, Lcom/flurry/sdk/pr;->a(Lcom/flurry/sdk/ov;Ljava/lang/Class;Lcom/flurry/sdk/jw;)Lcom/flurry/sdk/jk;

    move-result-object v0

    .line 200
    :cond_1
    invoke-virtual {v0, v1, p2, p3, v4}, Lcom/flurry/sdk/jk;->a(Ljava/lang/Object;Lcom/flurry/sdk/hf;Lcom/flurry/sdk/jw;Lcom/flurry/sdk/jz;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    throw v0

    .line 206
    :goto_2
    instance-of v3, v0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 209
    :cond_2
    instance-of v3, v0, Ljava/lang/Error;

    if-eqz v3, :cond_3

    .line 210
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 212
    :cond_3
    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/jh;->a(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/flurry/sdk/jh;

    move-result-object v0

    throw v0

    .line 214
    :cond_4
    return-void

    .line 204
    :catch_1
    move-exception v0

    goto :goto_2
.end method
