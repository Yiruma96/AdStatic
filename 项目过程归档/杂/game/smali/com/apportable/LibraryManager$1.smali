.class Lcom/apportable/LibraryManager$1;
.super Ljava/lang/Object;
.source "LibraryManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/LibraryManager;->languages()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/LibraryManager;

.field final synthetic val$defLoc:Ljava/util/Locale;


# direct methods
.method constructor <init>(Lcom/apportable/LibraryManager;Ljava/util/Locale;)V
    .locals 0

    .prologue
    .line 510
    iput-object p1, p0, Lcom/apportable/LibraryManager$1;->this$0:Lcom/apportable/LibraryManager;

    iput-object p2, p0, Lcom/apportable/LibraryManager$1;->val$defLoc:Ljava/util/Locale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 510
    check-cast p1, Ljava/util/Locale;

    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, Lcom/apportable/LibraryManager$1;->compare(Ljava/util/Locale;Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Locale;Ljava/util/Locale;)I
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 513
    invoke-virtual {p1, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    const/4 v0, 0x0

    .line 530
    :cond_0
    :goto_0
    return v0

    .line 516
    :cond_1
    iget-object v2, p0, Lcom/apportable/LibraryManager$1;->val$defLoc:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/apportable/LibraryManager$1;->val$defLoc:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 519
    goto :goto_0

    .line 521
    :cond_2
    iget-object v2, p0, Lcom/apportable/LibraryManager$1;->val$defLoc:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 522
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 524
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 526
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 527
    goto :goto_0

    .line 530
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
