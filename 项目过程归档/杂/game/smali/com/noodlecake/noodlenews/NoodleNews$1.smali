.class final Lcom/noodlecake/noodlenews/NoodleNews$1;
.super Ljava/lang/Object;
.source "NoodleNews.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noodlecake/noodlenews/NoodleNews;->showMoreGames(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$platform:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/noodlecake/noodlenews/NoodleNews$1;->val$platform:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    const-class v2, Lcom/noodlecake/noodlenews/MoreGamesWebView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    const-string v1, "com.noodlecake.noodlenews.MoreGamesWebView.key_platform"

    iget v2, p0, Lcom/noodlecake/noodlenews/NoodleNews$1;->val$platform:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apportable/activity/VerdeActivity;->startActivity(Landroid/content/Intent;)V

    .line 45
    return-void
.end method
