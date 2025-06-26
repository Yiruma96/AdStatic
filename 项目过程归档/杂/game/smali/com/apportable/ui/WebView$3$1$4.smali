.class Lcom/apportable/ui/WebView$3$1$4;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3$1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/ui/WebView$3$1;

.field final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3$1;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$1$4;->this$2:Lcom/apportable/ui/WebView$3$1;

    iput-object p2, p0, Lcom/apportable/ui/WebView$3$1$4;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1$4;->this$2:Lcom/apportable/ui/WebView$3$1;

    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1$4;->val$params:Landroid/view/ViewGroup$LayoutParams;

    # invokes: Lcom/apportable/ui/WebView$3$1;->superSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v0, v1}, Lcom/apportable/ui/WebView$3$1;->access$1900(Lcom/apportable/ui/WebView$3$1;Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    return-void
.end method
