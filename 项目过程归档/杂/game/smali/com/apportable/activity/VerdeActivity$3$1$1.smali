.class Lcom/apportable/activity/VerdeActivity$3$1$1;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity$3$1;->onFinished(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/apportable/activity/VerdeActivity$3$1;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity$3$1;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$3$1$1;->this$2:Lcom/apportable/activity/VerdeActivity$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3$1$1;->this$2:Lcom/apportable/activity/VerdeActivity$3$1;

    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->finish()V

    .line 219
    return-void
.end method
