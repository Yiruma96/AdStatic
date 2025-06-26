.class public final Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/b$a;
    }
.end annotation


# static fields
.field protected static a:Landroid/content/Context;

.field protected static b:Landroid/app/Application;

.field public static c:Lcom/chartboost/sdk/c$a;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Lcom/chartboost/sdk/a;

.field private static g:Z

.field private static h:Z

.field private static i:Z

.field private static j:Lcom/chartboost/sdk/Chartboost$CBFramework;

.field private static k:Ljava/lang/String;

.field private static l:Landroid/content/SharedPreferences;

.field private static m:Z

.field private static volatile n:Z

.field private static o:Z

.field private static p:Z

.field private static q:Z

.field private static r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/chartboost/sdk/b;->g:Z

    .line 35
    sput-boolean v0, Lcom/chartboost/sdk/b;->h:Z

    .line 36
    sput-boolean v0, Lcom/chartboost/sdk/b;->i:Z

    .line 37
    sput-object v1, Lcom/chartboost/sdk/b;->j:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 38
    sput-object v1, Lcom/chartboost/sdk/b;->k:Ljava/lang/String;

    .line 39
    sput-object v1, Lcom/chartboost/sdk/b;->l:Landroid/content/SharedPreferences;

    .line 40
    sput-boolean v2, Lcom/chartboost/sdk/b;->m:Z

    .line 41
    sput-boolean v0, Lcom/chartboost/sdk/b;->n:Z

    .line 42
    sput-object v1, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    .line 44
    sput-object v1, Lcom/chartboost/sdk/b;->b:Landroid/app/Application;

    .line 45
    sput-boolean v0, Lcom/chartboost/sdk/b;->o:Z

    .line 47
    sput-boolean v2, Lcom/chartboost/sdk/b;->p:Z

    .line 48
    sput-boolean v0, Lcom/chartboost/sdk/b;->q:Z

    .line 49
    sput-boolean v2, Lcom/chartboost/sdk/b;->r:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static a()Lcom/chartboost/sdk/Chartboost$CBFramework;
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 88
    sget-object v0, Lcom/chartboost/sdk/b;->j:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->j:Lcom/chartboost/sdk/Chartboost$CBFramework;

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/Chartboost$CBFramework;)V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 79
    if-nez p0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Pass a valid CBFramework enum value"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    sput-object p0, Lcom/chartboost/sdk/b;->j:Lcom/chartboost/sdk/Chartboost$CBFramework;

    .line 82
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 0

    .prologue
    .line 241
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 242
    sput-object p0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .line 243
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 8

    .prologue
    .line 268
    if-eqz p0, :cond_7

    .line 269
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/e$a;->f()Ljava/util/Map;

    move-result-object v2

    .line 270
    if-eqz v2, :cond_7

    .line 271
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 272
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 273
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 274
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 275
    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 276
    :cond_1
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 277
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 278
    :cond_2
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_3

    .line 279
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 280
    :cond_3
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_4

    .line 281
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v3, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 282
    :cond_4
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_5

    .line 283
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 284
    :cond_5
    if-eqz v1, :cond_0

    .line 285
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 288
    :cond_6
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    :cond_7
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/a;)V
    .locals 0

    .prologue
    .line 131
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 132
    sput-object p0, Lcom/chartboost/sdk/b;->f:Lcom/chartboost/sdk/a;

    .line 133
    return-void
.end method

.method public static a(Lcom/chartboost/sdk/b$a;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 294
    new-instance v0, Lcom/chartboost/sdk/impl/ba;

    const-string v1, "/api/config"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/ba;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/ba;->a(Z)V

    .line 296
    invoke-virtual {v0, v4}, Lcom/chartboost/sdk/impl/ba;->b(Z)V

    .line 297
    sget-object v1, Lcom/chartboost/sdk/impl/l$a;->c:Lcom/chartboost/sdk/impl/l$a;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/l$a;)V

    .line 298
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/g$k;

    const-string v2, "status"

    sget-object v3, Lcom/chartboost/sdk/Libraries/a;->a:Lcom/chartboost/sdk/Libraries/g$a;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/g$a;)Lcom/chartboost/sdk/Libraries/g$k;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/g;->a([Lcom/chartboost/sdk/Libraries/g$k;)Lcom/chartboost/sdk/Libraries/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/Libraries/g$a;)V

    .line 300
    new-instance v1, Lcom/chartboost/sdk/b$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/b$1;-><init>(Lcom/chartboost/sdk/b$a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ba;->a(Lcom/chartboost/sdk/impl/ba$c;)V

    .line 317
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 103
    sput-object p0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appId"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 156
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 157
    sput-boolean p0, Lcom/chartboost/sdk/b;->g:Z

    .line 158
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 94
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 95
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appId"

    sget-object v2, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/chartboost/sdk/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 118
    sput-object p0, Lcom/chartboost/sdk/b;->e:Ljava/lang/String;

    .line 119
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appSignature"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 120
    return-void
.end method

.method public static b(Z)V
    .locals 0

    .prologue
    .line 215
    sput-boolean p0, Lcom/chartboost/sdk/b;->m:Z

    .line 216
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 110
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "appSignature"

    sget-object v2, Lcom/chartboost/sdk/b;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->e:Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/chartboost/sdk/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 260
    sput-object p0, Lcom/chartboost/sdk/b;->k:Ljava/lang/String;

    .line 261
    return-void
.end method

.method protected static c(Z)V
    .locals 0

    .prologue
    .line 335
    sput-boolean p0, Lcom/chartboost/sdk/b;->n:Z

    .line 336
    return-void
.end method

.method public static d()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 125
    sget-object v0, Lcom/chartboost/sdk/b;->f:Lcom/chartboost/sdk/a;

    return-object v0
.end method

.method public static d(Z)V
    .locals 1

    .prologue
    .line 363
    sget-object v0, Lcom/chartboost/sdk/b;->c:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lcom/chartboost/sdk/b;->c:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/c$a;->a(Z)V

    .line 365
    :cond_0
    return-void
.end method

.method protected static e(Z)V
    .locals 0

    .prologue
    .line 368
    sput-boolean p0, Lcom/chartboost/sdk/b;->o:Z

    .line 369
    return-void
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 142
    sget-boolean v0, Lcom/chartboost/sdk/b;->g:Z

    return v0
.end method

.method public static f(Z)V
    .locals 0

    .prologue
    .line 376
    sput-boolean p0, Lcom/chartboost/sdk/b;->p:Z

    .line 377
    return-void
.end method

.method public static f()Z
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 190
    sget-boolean v0, Lcom/chartboost/sdk/b;->i:Z

    return v0
.end method

.method public static g(Z)V
    .locals 0

    .prologue
    .line 384
    sput-boolean p0, Lcom/chartboost/sdk/b;->q:Z

    .line 385
    return-void
.end method

.method public static g()Z
    .locals 1

    .prologue
    .line 207
    sget-boolean v0, Lcom/chartboost/sdk/b;->m:Z

    return v0
.end method

.method public static h()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 220
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 221
    invoke-static {}, Lcom/chartboost/sdk/b;->t()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "trackingLevels"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    const/4 v0, 0x0

    .line 223
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/e$a;->j(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/e$a;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 229
    :cond_0
    return-object v0
.end method

.method public static h(Z)V
    .locals 0

    .prologue
    .line 392
    sput-boolean p0, Lcom/chartboost/sdk/b;->r:Z

    .line 393
    return-void
.end method

.method public static i()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 250
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBLogging;->a:Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 255
    sget-object v0, Lcom/chartboost/sdk/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static l()Z
    .locals 1

    .prologue
    .line 330
    sget-boolean v0, Lcom/chartboost/sdk/b;->n:Z

    return v0
.end method

.method public static m()V
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lcom/chartboost/sdk/b;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need call Chartboost.onStart() before calling any public APIs "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_0
    return-void
.end method

.method public static n()V
    .locals 2

    .prologue
    .line 350
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The activity context must be set through the Chartboost onCreate method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :cond_0
    return-void
.end method

.method public static o()V
    .locals 2

    .prologue
    .line 358
    sget-object v0, Lcom/chartboost/sdk/b;->b:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Need to intialize chartboost using Chartboost.init() as the application object is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    return-void
.end method

.method public static p()Z
    .locals 1

    .prologue
    .line 372
    sget-boolean v0, Lcom/chartboost/sdk/b;->o:Z

    return v0
.end method

.method public static q()Z
    .locals 1

    .prologue
    .line 380
    sget-boolean v0, Lcom/chartboost/sdk/b;->p:Z

    return v0
.end method

.method public static r()Z
    .locals 1

    .prologue
    .line 388
    sget-boolean v0, Lcom/chartboost/sdk/b;->q:Z

    return v0
.end method

.method public static s()Z
    .locals 1

    .prologue
    .line 396
    sget-boolean v0, Lcom/chartboost/sdk/b;->r:Z

    return v0
.end method

.method private static t()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/chartboost/sdk/b;->l:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->l:Landroid/content/SharedPreferences;

    .line 58
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/b;->l:Landroid/content/SharedPreferences;

    return-object v0
.end method
