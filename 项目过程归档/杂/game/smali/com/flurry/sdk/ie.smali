.class public final Lcom/flurry/sdk/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Lcom/flurry/sdk/hc;

.field protected final c:Z

.field protected final d:Lcom/flurry/sdk/si;

.field protected e:[B

.field protected f:[B

.field protected g:[C

.field protected h:[C

.field protected i:[C


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/si;Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/flurry/sdk/ie;->e:[B

    .line 63
    iput-object v0, p0, Lcom/flurry/sdk/ie;->f:[B

    .line 70
    iput-object v0, p0, Lcom/flurry/sdk/ie;->g:[C

    .line 77
    iput-object v0, p0, Lcom/flurry/sdk/ie;->h:[C

    .line 85
    iput-object v0, p0, Lcom/flurry/sdk/ie;->i:[C

    .line 95
    iput-object p1, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    .line 96
    iput-object p2, p0, Lcom/flurry/sdk/ie;->a:Ljava/lang/Object;

    .line 97
    iput-boolean p3, p0, Lcom/flurry/sdk/ie;->c:Z

    .line 98
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/flurry/sdk/ie;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/hc;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flurry/sdk/ie;->b:Lcom/flurry/sdk/hc;

    .line 103
    return-void
.end method

.method public final a([B)V
    .locals 2

    .prologue
    .line 181
    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/flurry/sdk/ie;->e:[B

    if-eq p1, v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->e:[B

    .line 189
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$a;->a:Lcom/flurry/sdk/si$a;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$a;[B)V

    .line 191
    :cond_1
    return-void
.end method

.method public final a([C)V
    .locals 2

    .prologue
    .line 209
    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/flurry/sdk/ie;->g:[C

    if-eq p1, v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->g:[C

    .line 214
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$b;->a:Lcom/flurry/sdk/si$b;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$b;[C)V

    .line 216
    :cond_1
    return-void
.end method

.method public final a(I)[C
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/flurry/sdk/ie;->i:[C

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocNameCopyBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$b;->d:Lcom/flurry/sdk/si$b;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$b;I)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->i:[C

    .line 172
    iget-object v0, p0, Lcom/flurry/sdk/ie;->i:[C

    return-object v0
.end method

.method public final b()Lcom/flurry/sdk/hc;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/ie;->b:Lcom/flurry/sdk/hc;

    return-object v0
.end method

.method public final b([B)V
    .locals 2

    .prologue
    .line 195
    if-eqz p1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/flurry/sdk/ie;->f:[B

    if-eq p1, v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->f:[B

    .line 203
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$a;->b:Lcom/flurry/sdk/si$a;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$a;[B)V

    .line 205
    :cond_1
    return-void
.end method

.method public final b([C)V
    .locals 2

    .prologue
    .line 220
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/flurry/sdk/ie;->h:[C

    if-eq p1, v0, :cond_0

    .line 222
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->h:[C

    .line 225
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$b;->b:Lcom/flurry/sdk/si$b;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$b;[C)V

    .line 227
    :cond_1
    return-void
.end method

.method public final c([C)V
    .locals 2

    .prologue
    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/flurry/sdk/ie;->i:[C

    if-eq p1, v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to release buffer not owned by the context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->i:[C

    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$b;->d:Lcom/flurry/sdk/si$b;

    invoke-virtual {v0, v1, p1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$b;[C)V

    .line 238
    :cond_1
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/flurry/sdk/ie;->c:Z

    return v0
.end method

.method public final d()Lcom/flurry/sdk/sp;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Lcom/flurry/sdk/sp;

    iget-object v1, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    invoke-direct {v0, v1}, Lcom/flurry/sdk/sp;-><init>(Lcom/flurry/sdk/si;)V

    return-object v0
.end method

.method public final e()[B
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/flurry/sdk/ie;->e:[B

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocReadIOBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$a;->a:Lcom/flurry/sdk/si$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->e:[B

    .line 136
    iget-object v0, p0, Lcom/flurry/sdk/ie;->e:[B

    return-object v0
.end method

.method public final f()[B
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/flurry/sdk/ie;->f:[B

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocWriteEncodingBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$a;->b:Lcom/flurry/sdk/si$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$a;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->f:[B

    .line 145
    iget-object v0, p0, Lcom/flurry/sdk/ie;->f:[B

    return-object v0
.end method

.method public final g()[C
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/flurry/sdk/ie;->g:[C

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocTokenBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$b;->a:Lcom/flurry/sdk/si$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$b;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->g:[C

    .line 154
    iget-object v0, p0, Lcom/flurry/sdk/ie;->g:[C

    return-object v0
.end method

.method public final h()[C
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/flurry/sdk/ie;->h:[C

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to call allocConcatBuffer() second time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/ie;->d:Lcom/flurry/sdk/si;

    sget-object v1, Lcom/flurry/sdk/si$b;->b:Lcom/flurry/sdk/si$b;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/si;->a(Lcom/flurry/sdk/si$b;)[C

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ie;->h:[C

    .line 163
    iget-object v0, p0, Lcom/flurry/sdk/ie;->h:[C

    return-object v0
.end method
