.class Lcom/apportable/ui/WebView$3$1$3;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/WebView$3$1;->requestFocus(ILandroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/ui/WebView$3$1;

.field final synthetic val$direction:I

.field final synthetic val$previouslyFocusedRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/apportable/ui/WebView$3$1;ILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/apportable/ui/WebView$3$1$3;->this$2:Lcom/apportable/ui/WebView$3$1;

    iput p2, p0, Lcom/apportable/ui/WebView$3$1$3;->val$direction:I

    iput-object p3, p0, Lcom/apportable/ui/WebView$3$1$3;->val$previouslyFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/apportable/ui/WebView$3$1$3;->this$2:Lcom/apportable/ui/WebView$3$1;

    iget v1, p0, Lcom/apportable/ui/WebView$3$1$3;->val$direction:I

    iget-object v2, p0, Lcom/apportable/ui/WebView$3$1$3;->val$previouslyFocusedRect:Landroid/graphics/Rect;

    # invokes: Lcom/apportable/ui/WebView$3$1;->superRequestFocus(ILandroid/graphics/Rect;)Z
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/WebView$3$1;->access$1800(Lcom/apportable/ui/WebView$3$1;ILandroid/graphics/Rect;)Z

    .line 304
    return-void
.end method
