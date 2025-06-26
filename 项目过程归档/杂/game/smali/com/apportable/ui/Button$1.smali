.class Lcom/apportable/ui/Button$1;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/ui/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/Button;


# direct methods
.method constructor <init>(Lcom/apportable/ui/Button;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/apportable/ui/Button$1;->this$0:Lcom/apportable/ui/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/apportable/ui/Button$1;->this$0:Lcom/apportable/ui/Button;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/apportable/ui/Button;->sendEvent(I)V

    .line 86
    return-void
.end method
