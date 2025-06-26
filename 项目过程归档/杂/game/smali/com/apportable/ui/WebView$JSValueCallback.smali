.class Lcom/apportable/ui/WebView$JSValueCallback;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSValueCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mOwner:Lcom/apportable/ui/WebView;

.field final synthetic this$0:Lcom/apportable/ui/WebView;


# direct methods
.method public constructor <init>(Lcom/apportable/ui/WebView;Lcom/apportable/ui/WebView;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/apportable/ui/WebView$JSValueCallback;->this$0:Lcom/apportable/ui/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/apportable/ui/WebView$JSValueCallback;->mOwner:Lcom/apportable/ui/WebView;

    .line 84
    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 78
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/apportable/ui/WebView$JSValueCallback;->onReceiveValue(Ljava/lang/String;)V

    return-void
.end method

.method public onReceiveValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/apportable/ui/WebView$JSValueCallback;->this$0:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mJsTimeout:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$000(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/apportable/ui/WebView$JSValueCallback;->mOwner:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mJsResult:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$100(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/apportable/ui/WebView$JSValueCallback;->mOwner:Lcom/apportable/ui/WebView;

    # getter for: Lcom/apportable/ui/WebView;->mJsFinished:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/apportable/ui/WebView;->access$200(Lcom/apportable/ui/WebView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 92
    :cond_0
    return-void

    .line 89
    :cond_1
    const-string p1, ""

    goto :goto_0
.end method
