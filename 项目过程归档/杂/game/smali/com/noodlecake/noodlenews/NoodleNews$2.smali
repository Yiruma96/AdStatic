.class final Lcom/noodlecake/noodlenews/NoodleNews$2;
.super Ljava/lang/Object;
.source "NoodleNews.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noodlecake/noodlenews/NoodleNews;->gotoReviewScreen(I)V
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
    .line 101
    iput p1, p0, Lcom/noodlecake/noodlenews/NoodleNews$2;->val$platform:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    iget v0, p0, Lcom/noodlecake/noodlenews/NoodleNews$2;->val$platform:I

    invoke-static {v0}, Lcom/noodlecake/noodlenews/NoodleNews;->getAppUrl(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    return-void
.end method
