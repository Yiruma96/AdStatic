.class Lcom/apportable/ui/WebView$5;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView;->loadHTMLString(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/WebView;

.field final synthetic val$baseURL:Ljava/lang/String;

.field final synthetic val$html:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lcom/apportable/ui/WebView$5;->this$0:Lcom/apportable/ui/WebView;

    iput-object p2, p0, Lcom/apportable/ui/WebView$5;->val$baseURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/apportable/ui/WebView$5;->val$html:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    new-instance v1, Lcom/apportable/ui/WebView$5$1;

    invoke-direct {v1, p0}, Lcom/apportable/ui/WebView$5$1;-><init>(Lcom/apportable/ui/WebView$5;)V

    invoke-virtual {v0, v1}, Lcom/apportable/activity/VerdeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 450
    return-void
.end method
