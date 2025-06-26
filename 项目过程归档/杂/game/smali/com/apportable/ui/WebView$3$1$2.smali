.class Lcom/apportable/ui/WebView$3$1$2;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3$1;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/ui/WebView$3$1;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3$1;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$1$2;->this$2:Lcom/apportable/ui/WebView$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1$2;->this$2:Lcom/apportable/ui/WebView$3$1;

    # invokes: Lcom/apportable/ui/WebView$3$1;->superInvalidate()V
    invoke-static {v0}, Lcom/apportable/ui/WebView$3$1;->access$1700(Lcom/apportable/ui/WebView$3$1;)V

    .line 290
    return-void
.end method
