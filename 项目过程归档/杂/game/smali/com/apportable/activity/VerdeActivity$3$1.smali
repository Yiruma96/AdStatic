.class Lcom/apportable/activity/VerdeActivity$3$1;
.super Ljava/lang/Object;
.source "VerdeActivity.java"

# interfaces
.implements Lcom/apportable/activity/BackgroundLibraryLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apportable/activity/VerdeActivity$3;->onFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apportable/activity/VerdeActivity$3;


# direct methods
.method constructor <init>(Lcom/apportable/activity/VerdeActivity$3;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 178
    if-nez p1, :cond_0

    .line 179
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-static {v0}, Lcom/apportable/Lifecycle;->onActivityInit(Lcom/apportable/activity/VerdeActivity;)V

    .line 180
    invoke-static {}, Lcom/apportable/Lifecycle;->onLibrariesFinishedLoading()V

    .line 223
    :goto_0
    return-void

    .line 185
    :cond_0
    instance-of v0, p1, Lcom/apportable/LibraryManager$NotEnoughSpaceException;

    if-eqz v0, :cond_1

    .line 186
    check-cast p1, Lcom/apportable/LibraryManager$NotEnoughSpaceException;

    .line 187
    const-string v1, "Insufficient Storage"

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The device does have enough space to expand native libraries "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->getRequiredSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/apportable/utils/Utils;->dataSizeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requred but "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apportable/LibraryManager$NotEnoughSpaceException;->getAvailableSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/apportable/utils/Utils;->dataSizeString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " available."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_5

    .line 208
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    iget-object v3, v3, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 212
    :goto_2
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 213
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 214
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 215
    const/4 v1, -0x1

    const-string v2, "OK"

    new-instance v3, Lcom/apportable/activity/VerdeActivity$3$1$1;

    invoke-direct {v3, p0}, Lcom/apportable/activity/VerdeActivity$3$1$1;-><init>(Lcom/apportable/activity/VerdeActivity$3$1;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 221
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 189
    :cond_1
    instance-of v0, p1, Lcom/apportable/LibraryManager$CorruptedAPKException;

    if-eqz v0, :cond_2

    .line 190
    const-string v1, "Corrupted APK"

    .line 191
    const-string v0, "Please uninstall and re-download/install"

    goto :goto_1

    .line 192
    :cond_2
    instance-of v0, p1, Lcom/apportable/LibraryManager$PermissionException;

    if-eqz v0, :cond_3

    .line 193
    const-string v1, "Permission Error"

    .line 194
    const-string v0, "Unable to unpack native libraries due to insufficent permissions."

    goto :goto_1

    .line 195
    :cond_3
    instance-of v0, p1, Lcom/apportable/LibraryManager$InvalidArchitectureException;

    if-eqz v0, :cond_4

    .line 196
    check-cast p1, Lcom/apportable/LibraryManager$InvalidArchitectureException;

    .line 197
    const-string v1, "Incorrect Achitecture"

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find an appropriate native library architecture for this device. Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apportable/LibraryManager$InvalidArchitectureException;->getPackagedABIs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " but only "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apportable/LibraryManager$InvalidArchitectureException;->getSupportedABIs()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " are supported on this device."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 200
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    iget-object v0, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    iget-object v0, v0, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->finish()V

    goto/16 :goto_0

    .line 210
    :cond_5
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/apportable/activity/VerdeActivity$3$1;->this$1:Lcom/apportable/activity/VerdeActivity$3;

    iget-object v3, v3, Lcom/apportable/activity/VerdeActivity$3;->this$0:Lcom/apportable/activity/VerdeActivity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto/16 :goto_2
.end method
