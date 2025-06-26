.class Lcom/apportable/ui/WebView$3$1$6;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3$1;->onVisibilityChanged(Lcom/apportable/ui/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/ui/WebView$3$1;

.field final synthetic val$changedView:Lcom/apportable/ui/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3$1;Lcom/apportable/ui/View;I)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$1$6;->this$2:Lcom/apportable/ui/WebView$3$1;

    iput-object p2, p0, Lcom/apportable/ui/WebView$3$1$6;->val$changedView:Lcom/apportable/ui/View;

    iput p3, p0, Lcom/apportable/ui/WebView$3$1$6;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 346
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1$6;->this$2:Lcom/apportable/ui/WebView$3$1;

    iget-object v1, p0, Lcom/apportable/ui/WebView$3$1$6;->val$changedView:Lcom/apportable/ui/View;

    iget v2, p0, Lcom/apportable/ui/WebView$3$1$6;->val$visibility:I

    # invokes: Lcom/apportable/ui/WebView$3$1;->superOnVisibilityChanged(Lcom/apportable/ui/View;I)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/WebView$3$1;->access$2100(Lcom/apportable/ui/WebView$3$1;Lcom/apportable/ui/View;I)V

    .line 347
    return-void
.end method
