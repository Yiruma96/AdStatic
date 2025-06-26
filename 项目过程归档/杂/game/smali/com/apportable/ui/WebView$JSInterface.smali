.class Lcom/apportable/ui/WebView$JSInterface;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSInterface"
.end annotation


# instance fields
.field private mOwner:Lcom/apportable/ui/WebView;

.field final synthetic this$0:Lcom/apportable/ui/WebView;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/apportable/ui/WebView$JSInterface;->this$0:Lcom/apportable/ui/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p2, p0, Lcom/apportable/ui/WebView$JSInterface;->mOwner:Lcom/apportable/ui/WebView;

    .line 67
    return-void
.end method


# virtual methods
.method public ReturnValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/apportable/ui/WebView$JSInterface;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$000(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/apportable/ui/WebView$JSInterface;->mOwner:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$100(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/apportable/ui/WebView$JSInterface;->mOwner:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$200(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    :cond_0
    return-void
.end method
