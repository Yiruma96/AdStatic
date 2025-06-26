.class Lcom/apportable/ui/AlertView$3;
.super Ljava/lang/Object;
.source "AlertView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/ui/AlertView;->onClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/ui/AlertView;

.field final synthetic val$buttonIndex:I


# direct methods
.method constructor <init>(Lcom/apportable/ui/AlertView;I)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/apportable/ui/AlertView$3;->this$0:Lcom/apportable/ui/AlertView;

    iput p2, p0, Lcom/apportable/ui/AlertView$3;->val$buttonIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/apportable/ui/AlertView$3;->this$0:Lcom/apportable/ui/AlertView;

    iget-object v1, p0, Lcom/apportable/ui/AlertView$3;->this$0:Lcom/apportable/ui/AlertView;

    iget v1, v1, Lcom/apportable/ui/AlertView;->mObject:I

    iget v2, p0, Lcom/apportable/ui/AlertView$3;->val$buttonIndex:I

    # invokes: Lcom/apportable/ui/AlertView;->nativeOnClick(II)V
    invoke-static {v0, v1, v2}, Lcom/apportable/ui/AlertView;->access$500(Lcom/apportable/ui/AlertView;II)V

    .line 173
    return-void
.end method
