.class public final Lcom/chartboost/sdk/InPlay/CBInPlay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static e:Lcom/chartboost/sdk/InPlay/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:Lcom/chartboost/sdk/Libraries/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static cacheInPlay(Ljava/lang/String;)V
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 78
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 79
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 80
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    .line 82
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->a(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public static getInPlay(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 102
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 103
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 104
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    .line 106
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->c(Ljava/lang/String;)Lcom/chartboost/sdk/InPlay/CBInPlay;

    move-result-object v0

    return-object v0
.end method

.method public static hasInPlay(Ljava/lang/String;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {}, Lcom/chartboost/sdk/b;->o()V

    .line 90
    invoke-static {}, Lcom/chartboost/sdk/b;->n()V

    .line 91
    invoke-static {}, Lcom/chartboost/sdk/b;->m()V

    .line 92
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    .line 94
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/InPlay/CBInPlay;->e:Lcom/chartboost/sdk/InPlay/a;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a()Lcom/chartboost/sdk/Libraries/e$a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Lcom/chartboost/sdk/Libraries/e$a;

    return-object v0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Landroid/graphics/Bitmap;

    .line 54
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/Libraries/e$a;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->d:Lcom/chartboost/sdk/Libraries/e$a;

    .line 70
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public click()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->b(Lcom/chartboost/sdk/InPlay/CBInPlay;)V

    .line 38
    return-void
.end method

.method public getAppIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/chartboost/sdk/InPlay/CBInPlay;->a:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/chartboost/sdk/InPlay/a;->a()Lcom/chartboost/sdk/InPlay/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/InPlay/a;->a(Lcom/chartboost/sdk/InPlay/CBInPlay;)V

    .line 34
    return-void
.end method
