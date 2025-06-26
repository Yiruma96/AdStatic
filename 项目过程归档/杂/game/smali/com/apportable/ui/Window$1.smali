.class Lcom/apportable/ui/Window$1;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/Window;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Window;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Window;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/apportable/ui/Window$1;->this$0:Lcom/apportable/ui/Window;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/apportable/ui/Window$1;->this$0:Lcom/apportable/ui/Window;

    # invokes: Lcom/apportable/ui/Window;->reapplySystemUiVisibility()V
    invoke-static {v0}, Lcom/apportable/ui/Window;->access$000(Lcom/apportable/ui/Window;)V

    .line 49
    return-void
.end method
