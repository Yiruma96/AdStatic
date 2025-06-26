.class Lcom/apportable/activity/VerdeActivity$4;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/activity/VerdeActivity;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 232
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeOnCreate()V
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$300()V

    .line 233
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 237
    # invokes: Lcom/apportable/activity/VerdeActivity;->nativeHandleUri(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/apportable/activity/VerdeActivity;->access$400(Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apportable/app/VerdeApplication;->getSurface()Lcom/apportable/gl/GLSurfaceView;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    # getter for: Lcom/apportable/activity/VerdeActivity;->rootOfAllEvil:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/apportable/activity/VerdeActivity;->access$200(Lcom/apportable/activity/VerdeActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 244
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 246
    :cond_1
    invoke-static {}, Lcom/apportable/utils/MetaData;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    .line 247
    const/4 v0, 0x0

    .line 248
    const-string v2, "apportable.updater"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 249
    const-string v0, "apportable.updater"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 252
    :goto_0
    if-eqz v1, :cond_2

    .line 255
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 257
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 258
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/AsyncTask;

    .line 259
    # getter for: Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$500()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " will now check for updates."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/app/Activity;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_1
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$4;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityCreate(Lcom/apportable/activity/VerdeActivity;)V

    .line 269
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    # getter for: Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception while creating updater object.  Will continue without update!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 265
    :cond_2
    # getter for: Lcom/apportable/activity/VerdeActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "No updater."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
