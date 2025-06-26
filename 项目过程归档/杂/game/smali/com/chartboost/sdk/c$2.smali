.class Lcom/chartboost/sdk/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/Model/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/c;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 126
    .line 127
    iget-object v1, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->f:Z

    .line 129
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v2, Lcom/chartboost/sdk/Model/a$b;->a:Lcom/chartboost/sdk/Model/a$b;

    if-ne v1, v2, :cond_0

    .line 132
    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->b:Lcom/chartboost/sdk/Model/a$b;

    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 137
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "####### impressionReadyToBeDisplayed"

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->g(Lcom/chartboost/sdk/Model/a;)V

    .line 140
    :cond_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->o(Lcom/chartboost/sdk/Model/a;)V

    .line 141
    return-void

    .line 129
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/a;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 223
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 166
    .line 168
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 170
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->a()Z

    move-result v0

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 174
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 175
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 181
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 182
    :goto_0
    if-eqz v0, :cond_5

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/impl/ba;

    move-result-object v1

    .line 185
    const-string v0, "to"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 186
    const-string v0, "cgn"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 187
    const-string v0, "creative"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 188
    const-string v0, "ad_id"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 189
    const-string v0, "cgn"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 190
    const-string v0, "creative"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 191
    const-string v0, "type"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 192
    const-string v0, "more_type"

    invoke-virtual {v1, v0, p3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)V

    .line 194
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "retarget_reinstall"

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v2, Lcom/chartboost/sdk/Model/a$d;->b:Lcom/chartboost/sdk/Model/a$d;

    if-eq v0, v2, :cond_2

    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->e:Lcom/chartboost/sdk/Model/a$d;

    sget-object v2, Lcom/chartboost/sdk/Model/a$d;->c:Lcom/chartboost/sdk/Model/a$d;

    if-ne v0, v2, :cond_3

    .line 199
    :cond_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->l()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 200
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->l()Lcom/chartboost/sdk/f$a;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/ai$a;

    .line 201
    :goto_1
    if-eqz v0, :cond_3

    .line 202
    const-string v2, "total_time"

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->d()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    const-string v2, "playback_time"

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai$a;->e()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    :cond_3
    iput-object v1, p1, Lcom/chartboost/sdk/Model/a;->o:Lcom/chartboost/sdk/impl/ba;

    .line 207
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1, p2, v5}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/a;Ljava/lang/String;Lcom/chartboost/sdk/c$b;)V

    .line 213
    :goto_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void

    :cond_4
    move v0, v2

    .line 181
    goto/16 :goto_0

    .line 209
    :cond_5
    iget-object v0, p0, Lcom/chartboost/sdk/c$2;->a:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/impl/bc$a;

    sget-object v4, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/chartboost/sdk/impl/bc$a;->a(Lcom/chartboost/sdk/Model/a;ZLjava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBClickError;Lcom/chartboost/sdk/c$b;)V

    goto :goto_2

    :cond_6
    move-object v0, v5

    goto :goto_1
.end method

.method public b(Lcom/chartboost/sdk/Model/a;)V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 149
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->b()Lcom/chartboost/sdk/d$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/d$a;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 151
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v1, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v0, v1, :cond_0

    .line 152
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/e;->b(Lcom/chartboost/sdk/Model/a;)V

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->q()Lcom/chartboost/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Tracking/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public c(Lcom/chartboost/sdk/Model/a;)V
    .locals 4

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->m:Z

    .line 228
    iget-object v0, p1, Lcom/chartboost/sdk/Model/a;->c:Lcom/chartboost/sdk/Model/a$c;

    sget-object v1, Lcom/chartboost/sdk/Model/a$c;->c:Lcom/chartboost/sdk/Model/a$c;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/Model/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/a;->w()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    const-string v3, "reward"

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/Libraries/e$a;->f(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/chartboost/sdk/a;->didCompleteRewardedVideo(Ljava/lang/String;I)V

    .line 231
    :cond_0
    invoke-static {p1}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/a;)V

    .line 232
    return-void
.end method

.method public d(Lcom/chartboost/sdk/Model/a;)V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/chartboost/sdk/Model/a;->n:Z

    .line 237
    return-void
.end method
