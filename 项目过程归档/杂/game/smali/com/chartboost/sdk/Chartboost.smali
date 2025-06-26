.class public final Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$a;,
        Lcom/chartboost/sdk/Chartboost$CBFramework;
    }
.end annotation


# static fields
.field protected static a:Landroid/os/Handler;

.field protected static b:Lcom/chartboost/sdk/Libraries/k;

.field private static volatile c:Lcom/chartboost/sdk/Chartboost;

.field private static d:Lcom/chartboost/sdk/CBImpressionActivity;

.field private static e:Lcom/chartboost/sdk/Model/a;

.field private static f:Lcom/chartboost/sdk/impl/az;

.field private static g:Lcom/chartboost/sdk/impl/bb;

.field private static h:Lcom/chartboost/sdk/impl/m;

.field private static i:Lcom/chartboost/sdk/Tracking/a;

.field private static j:Z

.field private static k:Landroid/util/SparseBooleanArray;

.field private static l:Lcom/chartboost/sdk/e;

.field private static m:Lcom/chartboost/sdk/c;

.field private static n:Z

.field private static o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    .line 46
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 47
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 48
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    .line 49
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    .line 50
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    .line 51
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 52
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 53
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    .line 54
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    .line 55
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    .line 58
    sput-boolean v2, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 64
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->b:Landroid/app/Application;

    .line 91
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    .line 92
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    .line 94
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/os/Handler;)V

    .line 95
    invoke-static {}, Lcom/chartboost/sdk/impl/az;->a()Lcom/chartboost/sdk/impl/az;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    .line 96
    invoke-static {}, Lcom/chartboost/sdk/e;->a()Lcom/chartboost/sdk/e;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    .line 97
    sget-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bb;->a(Landroid/content/Context;)Lcom/chartboost/sdk/impl/bb;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    .line 98
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    .line 99
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    .line 100
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 101
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    sget-object v1, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->a(Landroid/content/Context;)V

    .line 102
    new-instance v0, Lcom/chartboost/sdk/Chartboost$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/Chartboost$a;-><init>(Lcom/chartboost/sdk/Chartboost$1;)V

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    .line 105
    invoke-static {p2}, Lcom/chartboost/sdk/b;->a(Ljava/lang/String;)V

    .line 106
    invoke-static {p3}, Lcom/chartboost/sdk/b;->b(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->a()V

    .line 111
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->a()V

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Activity;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Lcom/chartboost/sdk/Chartboost$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/chartboost/sdk/Chartboost;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/Chartboost;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    return-object p0
.end method

.method private static a(IZ)V
    .locals 1

    .prologue
    .line 960
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 961
    return-void
.end method

.method protected static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 221
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    .line 222
    instance-of v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 223
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 224
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 232
    :goto_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->e(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 249
    :cond_0
    :goto_1
    return-void

    .line 226
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->l()V

    move-object v0, p0

    .line 229
    check-cast v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 239
    instance-of v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_3

    .line 240
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 243
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    invoke-virtual {v0, p0, v1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/a;)V

    .line 244
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 246
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->m:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->u()V

    goto :goto_1
.end method

.method static synthetic a(Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->b(Landroid/app/Activity;Z)V

    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .locals 2

    .prologue
    .line 791
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-nez v0, :cond_0

    .line 792
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    .line 793
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 794
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 797
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 798
    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->t()V

    .line 317
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    return-void
.end method

.method protected static a(Lcom/chartboost/sdk/Model/a;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 815
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 816
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->d()Lcom/chartboost/sdk/impl/bq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/bq;->h()Lcom/chartboost/sdk/Model/a;

    move-result-object v3

    if-eq v3, p0, :cond_0

    .line 818
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 877
    :goto_0
    return-void

    .line 822
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 823
    sget-boolean v3, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-eqz v3, :cond_2

    .line 824
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->b()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;)V

    goto :goto_0

    .line 827
    :cond_1
    const-string v0, "Chartboost"

    const-string v1, "Missing view controller to manage the open impression activity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 833
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->m()Z

    move-result v0

    if-nez v0, :cond_3

    .line 834
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 838
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v4

    .line 839
    if-nez v4, :cond_4

    .line 840
    const-string v0, "Chartboost"

    const-string v1, "Failed to display impression as the host activity reference has been lost!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 844
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    if-eq v0, p0, :cond_5

    .line 846
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 849
    :cond_5
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 850
    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v5, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 852
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_6

    move v0, v1

    .line 854
    :goto_1
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_7

    move v3, v1

    .line 856
    :goto_2
    const-string v6, "paramFullscreen"

    if-eqz v0, :cond_8

    if-nez v3, :cond_8

    :goto_3
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 859
    :try_start_0
    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 860
    const/4 v0, 0x1

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->n:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 861
    :catch_0
    move-exception v0

    .line 862
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Chartboost impression activity not declared in manifest. Please add the following inside your manifest\'s <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v2

    .line 852
    goto :goto_1

    :cond_7
    move v3, v2

    .line 854
    goto :goto_2

    :cond_8
    move v1, v2

    .line 856
    goto :goto_3

    .line 870
    :cond_9
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_a

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->m()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 872
    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/e;->a(Lcom/chartboost/sdk/Model/a;)V

    goto/16 :goto_0

    .line 874
    :cond_a
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Model/a;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto/16 :goto_0
.end method

.method protected static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 885
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 889
    :goto_0
    return-void

    .line 888
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method protected static a()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 419
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v1

    .line 420
    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v2

    .line 421
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/chartboost/sdk/Model/a;->b:Lcom/chartboost/sdk/Model/a$b;

    sget-object v4, Lcom/chartboost/sdk/Model/a$b;->c:Lcom/chartboost/sdk/Model/a$b;

    if-ne v3, v4, :cond_1

    .line 422
    invoke-virtual {v2}, Lcom/chartboost/sdk/Model/a;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    :goto_0
    return v0

    .line 424
    :cond_0
    new-instance v2, Lcom/chartboost/sdk/Chartboost$10;

    invoke-direct {v2, v1}, Lcom/chartboost/sdk/Chartboost$10;-><init>(Lcom/chartboost/sdk/c;)V

    invoke-static {v2}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 431
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v2

    .line 432
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/chartboost/sdk/e;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 433
    new-instance v3, Lcom/chartboost/sdk/Chartboost$11;

    invoke-direct {v3, v2, v1}, Lcom/chartboost/sdk/Chartboost$11;-><init>(Lcom/chartboost/sdk/e;Lcom/chartboost/sdk/c;)V

    invoke-static {v3}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 440
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 755
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 758
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/chartboost/sdk/CBImpressionActivity;)Lcom/chartboost/sdk/CBImpressionActivity;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method protected static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 465
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 466
    return-void
.end method

.method private static b(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 946
    if-nez p0, :cond_0

    .line 949
    :goto_0
    return-void

    .line 948
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method protected static b(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 1

    .prologue
    .line 336
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/a;->v()V

    .line 340
    :cond_0
    return-void
.end method

.method private static b(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 0

    .prologue
    .line 900
    return-void
.end method

.method protected static c()V
    .locals 1

    .prologue
    .line 803
    sget-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    if-eqz v0, :cond_0

    .line 804
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 805
    const/4 v0, 0x0

    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->j:Z

    .line 807
    :cond_0
    return-void
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->d(Landroid/app/Activity;)V

    return-void
.end method

.method protected static c(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->d()Lcom/chartboost/sdk/e;

    move-result-object v0

    .line 382
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->g(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 383
    invoke-static {}, Lcom/chartboost/sdk/c;->a()Lcom/chartboost/sdk/c;

    move-result-object v1

    .line 384
    invoke-virtual {v1}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/Model/a;

    move-result-object v1

    .line 385
    if-eqz v1, :cond_0

    .line 386
    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/e;->c(Lcom/chartboost/sdk/Model/a;)V

    .line 387
    sput-object v1, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/Model/a;

    .line 389
    :cond_0
    invoke-static {p0, v2}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 390
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_1

    .line 391
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->c()V

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_2

    .line 395
    invoke-static {p0, v2}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 397
    :cond_2
    return-void
.end method

.method private static c(Lcom/chartboost/sdk/Libraries/k;Z)V
    .locals 1

    .prologue
    .line 953
    if-nez p0, :cond_0

    .line 956
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->a()I

    move-result v0

    invoke-static {v0, p1}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method public static cacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 566
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 567
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 568
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 569
    const-string v0, "Chartboost"

    const-string v1, "cacheInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 571
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cacheMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 611
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 612
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 613
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    const-string v0, "Chartboost"

    const-string v1, "cacheMoreApps location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 616
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/aw;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cacheRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 521
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 522
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 523
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 524
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    const-string v0, "Chartboost"

    const-string v1, "cacheRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 526
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static clearCache()V
    .locals 2

    .prologue
    .line 493
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 494
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 495
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 496
    sget-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling clearImageCache()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 500
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/bd;->a()Lcom/chartboost/sdk/impl/bd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bd;->b()V

    .line 501
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/af;->a()V

    .line 502
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ae;->a()V

    .line 503
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aw;->a()V

    .line 504
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->b()V

    .line 505
    return-void
.end method

.method public static createSurfaceView(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1000
    invoke-static {p0}, Lcom/chartboost/sdk/impl/bh;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1011
    :goto_0
    return-void

    .line 1002
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/Chartboost$3;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/Chartboost$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected static d()Lcom/chartboost/sdk/e;
    .locals 1

    .prologue
    .line 966
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->b()Landroid/app/Activity;

    move-result-object v0

    .line 967
    if-nez v0, :cond_0

    .line 968
    const/4 v0, 0x0

    .line 969
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/e;

    goto :goto_0
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->f(Lcom/chartboost/sdk/Libraries/k;)V

    .line 167
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 170
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->a:Landroid/os/Handler;

    sget-object v1, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    invoke-static {p0}, Lcom/chartboost/sdk/Libraries/k;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/k;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    .line 175
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->getImpressionsUseActivities()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->createSurfaceView(Landroid/app/Activity;)V

    .line 180
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/bb;->d()V

    .line 181
    return-void
.end method

.method protected static d(Lcom/chartboost/sdk/Libraries/k;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 938
    if-nez p0, :cond_1

    .line 941
    :cond_0
    :goto_0
    return v0

    .line 940
    :cond_1
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->k:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 941
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static didPassAgeGate(Z)V
    .locals 0
    .param p0, "pass"    # Z

    .prologue
    .line 477
    invoke-static {p0}, Lcom/chartboost/sdk/b;->d(Z)V

    .line 478
    return-void
.end method

.method static synthetic e()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->o:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->f(Lcom/chartboost/sdk/Libraries/k;)V

    return-void
.end method

.method private static e(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 765
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 766
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne v2, p0, :cond_1

    .line 770
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 766
    goto :goto_0

    .line 768
    :cond_2
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v2, :cond_3

    .line 769
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 770
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method private static f(Lcom/chartboost/sdk/Libraries/k;)V
    .locals 2

    .prologue
    .line 358
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;)V

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 362
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Libraries/k;Z)V

    .line 365
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    sget-object v1, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/az;->c(Landroid/content/Context;)V

    .line 368
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/m;->b()V

    .line 369
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bb;->g()V

    .line 372
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    if-nez v0, :cond_2

    .line 373
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->a()Lcom/chartboost/sdk/Tracking/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    .line 374
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->c()V

    .line 375
    return-void
.end method

.method static synthetic f()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->m()Z

    move-result v0

    return v0
.end method

.method static synthetic g()Lcom/chartboost/sdk/impl/az;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->f:Lcom/chartboost/sdk/impl/az;

    return-object v0
.end method

.method private static g(Lcom/chartboost/sdk/Libraries/k;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 777
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 778
    if-nez p0, :cond_2

    .line 779
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v2, :cond_1

    .line 784
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 779
    goto :goto_0

    .line 780
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Libraries/k;->b(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 782
    :cond_3
    sget-object v2, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v2, :cond_4

    .line 783
    if-eqz p0, :cond_0

    move v0, v1

    goto :goto_0

    .line 784
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Libraries/k;->a(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getAutoCacheAds()Z
    .locals 1

    .prologue
    .line 701
    invoke-static {}, Lcom/chartboost/sdk/b;->g()Z

    move-result v0

    return v0
.end method

.method public static getCustomId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 659
    invoke-static {}, Lcom/chartboost/sdk/b;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDelegate()Lcom/chartboost/sdk/a;
    .locals 1

    .prologue
    .line 687
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    return-object v0
.end method

.method protected static getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 881
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/k;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getImpressionsUseActivities()Z
    .locals 1

    .prologue
    .line 977
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v0

    return v0
.end method

.method public static getLoggingLevel()Lcom/chartboost/sdk/Libraries/CBLogging$Level;
    .locals 1

    .prologue
    .line 682
    invoke-static {}, Lcom/chartboost/sdk/b;->i()Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 894
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/k;->b()Landroid/content/Context;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->k()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic h()Lcom/chartboost/sdk/impl/m;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->h:Lcom/chartboost/sdk/impl/m;

    return-object v0
.end method

.method public static hasInterstitial(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 554
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 555
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 556
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 557
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasMoreApps(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 600
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 601
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 602
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/aw;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasRewardedVideo(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 512
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 513
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 514
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic i()Lcom/chartboost/sdk/impl/bb;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/impl/bb;

    return-object v0
.end method

.method static synthetic j()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->l()V

    return-void
.end method

.method static synthetic k()Lcom/chartboost/sdk/CBImpressionActivity;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object v0
.end method

.method private static l()V
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/chartboost/sdk/b;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling startSession()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/chartboost/sdk/b;->c(Z)V

    .line 259
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/Tracking/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Tracking/a;->h()V

    .line 260
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->b()V

    .line 262
    invoke-static {}, Lcom/chartboost/sdk/Tracking/a;->i()Z

    move-result v0

    .line 265
    new-instance v1, Lcom/chartboost/sdk/Chartboost$6;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/Chartboost$6;-><init>(Z)V

    invoke-static {v1}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/b$a;)V

    .line 293
    return-void
.end method

.method private static m()Z
    .locals 1

    .prologue
    .line 933
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->d(Lcom/chartboost/sdk/Libraries/k;)Z

    move-result v0

    return v0
.end method

.method public static onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 402
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 403
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/Libraries/k;

    if-nez v1, :cond_0

    .line 404
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 408
    sget-boolean v1, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-eqz v1, :cond_1

    .line 409
    sput-boolean v0, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 410
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()Z

    .line 411
    const/4 v0, 0x1

    .line 415
    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->a()Z

    move-result v0

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 151
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 152
    new-instance v0, Lcom/chartboost/sdk/Chartboost$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$4;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 446
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 447
    new-instance v0, Lcom/chartboost/sdk/Chartboost$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$2;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 461
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 322
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 323
    new-instance v0, Lcom/chartboost/sdk/Chartboost$8;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$8;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 300
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 301
    new-instance v0, Lcom/chartboost/sdk/Chartboost$7;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$7;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public static onStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 187
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 188
    new-instance v0, Lcom/chartboost/sdk/Chartboost$5;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$5;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public static onStop(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 345
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 346
    new-instance v0, Lcom/chartboost/sdk/Chartboost$9;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$9;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 355
    return-void
.end method

.method public static setAutoCacheAds(Z)V
    .locals 0
    .param p0, "autoCacheAds"    # Z

    .prologue
    .line 709
    invoke-static {p0}, Lcom/chartboost/sdk/b;->b(Z)V

    .line 710
    return-void
.end method

.method public static setCustomId(Ljava/lang/String;)V
    .locals 0
    .param p0, "customID"    # Ljava/lang/String;

    .prologue
    .line 668
    invoke-static {p0}, Lcom/chartboost/sdk/b;->c(Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public static setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 0
    .param p0, "delegate"    # Lcom/chartboost/sdk/ChartboostDelegate;

    .prologue
    .line 693
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/a;)V

    .line 694
    return-void
.end method

.method public static setFramework(Lcom/chartboost/sdk/Chartboost$CBFramework;)V
    .locals 0
    .param p0, "framework"    # Lcom/chartboost/sdk/Chartboost$CBFramework;

    .prologue
    .line 648
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Chartboost$CBFramework;)V

    .line 649
    return-void
.end method

.method public static setImpressionsUseActivities(Z)V
    .locals 0
    .param p0, "impressionsUseActivities"    # Z

    .prologue
    .line 993
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Z)V

    .line 994
    return-void
.end method

.method public static setLoggingLevel(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V
    .locals 0
    .param p0, "lvl"    # Lcom/chartboost/sdk/Libraries/CBLogging$Level;

    .prologue
    .line 675
    invoke-static {p0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/Libraries/CBLogging$Level;)V

    .line 676
    return-void
.end method

.method public static setShouldDisplayLoadingViewForMoreApps(Z)V
    .locals 0
    .param p0, "shouldDisplay"    # Z

    .prologue
    .line 731
    invoke-static {p0}, Lcom/chartboost/sdk/b;->g(Z)V

    .line 732
    return-void
.end method

.method public static setShouldPauseClickForConfirmation(Z)V
    .locals 0
    .param p0, "shouldPause"    # Z

    .prologue
    .line 485
    invoke-static {p0}, Lcom/chartboost/sdk/b;->e(Z)V

    .line 486
    return-void
.end method

.method public static setShouldPrefetchVideoContent(Z)V
    .locals 0
    .param p0, "shouldPrefetch"    # Z

    .prologue
    .line 740
    invoke-static {p0}, Lcom/chartboost/sdk/b;->h(Z)V

    .line 741
    if-eqz p0, :cond_0

    .line 742
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->a()V

    .line 745
    :goto_0
    return-void

    .line 744
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/be;->c()V

    goto :goto_0
.end method

.method public static setShouldRequestInterstitialsInFirstSession(Z)V
    .locals 0
    .param p0, "shouldRequest"    # Z

    .prologue
    .line 720
    invoke-static {p0}, Lcom/chartboost/sdk/b;->f(Z)V

    .line 721
    return-void
.end method

.method public static showInterstitial(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 583
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 584
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 585
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 586
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    const-string v0, "Chartboost"

    const-string v1, "showInterstitial location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadInterstitial(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/ae;->f()Lcom/chartboost/sdk/impl/ae;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/ae;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showMoreApps(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 627
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 628
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 629
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 630
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    const-string v0, "Chartboost"

    const-string v1, "showMoreApps location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 633
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadMoreApps(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/aw;->f()Lcom/chartboost/sdk/impl/aw;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/aw;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showRewardedVideo(Ljava/lang/String;)V
    .locals 2
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 538
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 539
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 540
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 541
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    const-string v0, "Chartboost"

    const-string v1, "showRewardedVideo location cannot be empty"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 544
    invoke-static {}, Lcom/chartboost/sdk/b;->d()Lcom/chartboost/sdk/a;

    move-result-object v0

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-interface {v0, p0, v1}, Lcom/chartboost/sdk/a;->didFailToLoadRewardedVideo(Ljava/lang/String;Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/impl/af;->h()Lcom/chartboost/sdk/impl/af;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/impl/af;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startWithAppId(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appSignature"    # Ljava/lang/String;

    .prologue
    .line 124
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    if-nez v0, :cond_4

    .line 125
    const-class v1, Lcom/chartboost/sdk/Chartboost;

    monitor-enter v1

    .line 126
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/Chartboost;->c:Lcom/chartboost/sdk/Chartboost;

    if-nez v0, :cond_3

    .line 127
    if-nez p0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Activity object is null. Please pass a valid activity object"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 130
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 131
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "appId or appSignature is null. Please pass a valid id\'s"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    new-instance v0, Lcom/chartboost/sdk/Chartboost$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/chartboost/sdk/Chartboost$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    .line 140
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    :cond_4
    return-void
.end method
