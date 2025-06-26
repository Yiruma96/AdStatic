.class public final Lcom/chartboost/sdk/Model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Model/a$1;,
        Lcom/chartboost/sdk/Model/a$a;,
        Lcom/chartboost/sdk/Model/a$d;,
        Lcom/chartboost/sdk/Model/a$c;,
        Lcom/chartboost/sdk/Model/a$b;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Date;

.field public b:Lcom/chartboost/sdk/Model/a$b;

.field public c:Lcom/chartboost/sdk/Model/a$c;

.field public d:Ljava/lang/String;

.field public e:Lcom/chartboost/sdk/Model/a$d;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Lcom/chartboost/sdk/impl/bq;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Lcom/chartboost/sdk/impl/ba;

.field public p:Z

.field public q:Z

.field private r:Lcom/chartboost/sdk/Libraries/e$a;

.field private s:Z

.field private t:Ljava/lang/Boolean;

.field private u:Lcom/chartboost/sdk/f;

.field private v:Lcom/chartboost/sdk/Model/a$a;

.field private w:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/a$c;ZLjava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    .line 96
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 101
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->l:Z

    .line 103
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 105
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->n:Z

    .line 111
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->q:Z

    .line 116
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 117
    iput-boolean p2, p0, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 118
    iput-boolean p2, p0, Lcom/chartboost/sdk/Model/a;->g:Z

    .line 119
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->h:Z

    .line 120
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    .line 121
    iput-boolean p4, p0, Lcom/chartboost/sdk/Model/a;->j:Z

    .line 122
    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 123
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->d:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 124
    iput-object p3, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "Default"

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 0

    .prologue
    .line 379
    if-nez p1, :cond_0

    sget-object p1, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 380
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/e$a;Lcom/chartboost/sdk/Model/a$a;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    if-nez p1, :cond_0

    .line 132
    invoke-static {}, Lcom/chartboost/sdk/Libraries/e$a;->a()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object p1

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    .line 134
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->a:Ljava/util/Date;

    .line 135
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 136
    iput-object p2, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    .line 138
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "native"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    sget-object v0, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/f;->a(Lcom/chartboost/sdk/Libraries/e$a;)Z

    .line 169
    return-void

    .line 143
    :pswitch_0
    const-string v0, "media-type"

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 145
    new-instance v0, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ai;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 146
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_0

    .line 148
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->a:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 149
    new-instance v0, Lcom/chartboost/sdk/impl/ah;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ah;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    goto :goto_0

    .line 153
    :pswitch_1
    sget-object v0, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    .line 154
    new-instance v0, Lcom/chartboost/sdk/impl/ai;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ai;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 155
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_0

    .line 158
    :pswitch_2
    new-instance v0, Lcom/chartboost/sdk/impl/ax;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ax;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    .line 159
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    goto :goto_0

    .line 165
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/impl/bs;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/bs;-><init>(Lcom/chartboost/sdk/Model/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0, p1}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 230
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    .line 312
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->s:Z

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v3, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->l:Z

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 211
    :goto_0
    return v0

    .line 192
    :cond_1
    if-eqz p1, :cond_3

    .line 193
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "deep-link"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 196
    :try_start_0
    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 198
    :try_start_1
    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v3, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v0

    .line 207
    :cond_2
    :goto_2
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    if-eqz v0, :cond_5

    move v0, v1

    .line 208
    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v3, "link"

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 200
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 203
    :catch_0
    move-exception v0

    goto :goto_2

    .line 209
    :cond_5
    iput-boolean v2, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0, p1, p2}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    move v0, v2

    .line 211
    goto :goto_0

    .line 203
    :catch_1
    move-exception v3

    move-object p1, v0

    goto :goto_2
.end method

.method public b()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 179
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 185
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->t:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 236
    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->v:Lcom/chartboost/sdk/Model/a$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/Model/a$a;->d(Lcom/chartboost/sdk/Model/a;)V

    .line 243
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->b()Z

    .line 251
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 252
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    .line 254
    :cond_0
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- no view protocol exists!!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    :cond_1
    const-string v0, "CBImpression"

    const-string v1, "reinitializing -- view not yet created"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->j()V

    .line 264
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->h:Z

    if-nez v0, :cond_0

    .line 265
    sget-object v0, Lcom/chartboost/sdk/Model/a$b;->d:Lcom/chartboost/sdk/Model/a$b;

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 271
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->d()V

    .line 270
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    goto :goto_0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->i:Lcom/chartboost/sdk/impl/bq;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->i:Lcom/chartboost/sdk/impl/bq;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bq;->d()V

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/f$a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->i:Lcom/chartboost/sdk/impl/bq;

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v1}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/bq;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->i:Lcom/chartboost/sdk/impl/bq;

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->f()V

    .line 287
    :cond_2
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string v1, "CBImpression"

    const-string v2, "Exception raised while cleaning up views"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public k()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    move-result-object v0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Lcom/chartboost/sdk/f$a;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->e()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/f$a;->setVisibility(I)V

    .line 308
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->l:Z

    .line 316
    return-void
.end method

.method public o()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Model/a;->w:Ljava/lang/Runnable;

    .line 323
    :cond_0
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->l:Z

    .line 324
    iput-boolean v1, p0, Lcom/chartboost/sdk/Model/a;->k:Z

    .line 325
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Libraries/e$a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Lcom/chartboost/sdk/d;
    .locals 2

    .prologue
    .line 332
    sget-object v0, Lcom/chartboost/sdk/Model/a$1;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/a$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 339
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    :goto_0
    return-object v0

    .line 334
    :pswitch_0
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    goto :goto_0

    .line 336
    :pswitch_1
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public r()V
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/d;->j(Lcom/chartboost/sdk/Model/a;)V

    .line 349
    return-void
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->j()Z

    move-result v0

    .line 355
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public t()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 360
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->k()V

    .line 362
    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/a;->p:Z

    .line 366
    return-void
.end method

.method public v()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->u:Lcom/chartboost/sdk/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/f;->l()V

    .line 371
    :cond_0
    return-void
.end method

.method public w()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    if-nez v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Libraries/e$a;->a:Lcom/chartboost/sdk/Libraries/e$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Model/a;->r:Lcom/chartboost/sdk/Libraries/e$a;

    goto :goto_0
.end method
