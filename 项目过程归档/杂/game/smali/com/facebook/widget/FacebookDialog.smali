.class public Lcom/facebook/widget/FacebookDialog;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/FacebookDialog$PendingCall;,
        Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;,
        Lcom/facebook/widget/FacebookDialog$Builder;,
        Lcom/facebook/widget/FacebookDialog$OnPresentCallback;,
        Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;,
        Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;,
        Lcom/facebook/widget/FacebookDialog$DialogFeature;,
        Lcom/facebook/widget/FacebookDialog$Callback;
    }
.end annotation


# static fields
.field public static final COMPLETION_GESTURE_CANCEL:Ljava/lang/String; = "cancel"

.field private static final EXTRA_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.DID_COMPLETE"

.field private static final EXTRA_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.COMPLETION_GESTURE"

.field private static final EXTRA_DIALOG_COMPLETION_ID_KEY:Ljava/lang/String; = "com.facebook.platform.extra.POST_ID"

.field private static final MIN_NATIVE_SHARE_PROTOCOL_VERSION:I = 0x1332b3a

.field private static attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field private fragment:Landroid/support/v4/app/Fragment;

.field private onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    .line 187
    iput-object p2, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    .line 188
    iput-object p3, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 189
    iput-object p4, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog$1;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 1

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Lcom/facebook/NativeAppCallAttachmentStore;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/facebook/widget/FacebookDialog;->getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;

    move-result-object v0

    return-object v0
.end method

.method public static varargs canPresentOpenGraphActionDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;)Z
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public static varargs canPresentShareDialog(Landroid/content/Context;[Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;)Z
    .locals 1

    .prologue
    .line 262
    sget-object v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    invoke-static {v0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method private static getAttachmentStore()Lcom/facebook/NativeAppCallAttachmentStore;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-direct {v0}, Lcom/facebook/NativeAppCallAttachmentStore;-><init>()V

    sput-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    .line 293
    :cond_0
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    return-object v0
.end method

.method private static getMinVersionForFeatures(Ljava/lang/Iterable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 296
    const/high16 v0, -0x80000000

    .line 297
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/FacebookDialog$DialogFeature;

    .line 299
    invoke-interface {v0}, Lcom/facebook/widget/FacebookDialog$DialogFeature;->getMinVersion()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v1, v0

    .line 300
    goto :goto_0

    .line 301
    :cond_0
    return v1
.end method

.method public static getNativeDialogCompletionGesture(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "com.facebook.platform.extra.COMPLETION_GESTURE"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNativeDialogDidComplete(Landroid/os/Bundle;)Z
    .locals 2

    .prologue
    .line 155
    const-string v0, "com.facebook.platform.extra.DID_COMPLETE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getNativeDialogPostId(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, "com.facebook.platform.extra.POST_ID"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/Integer;)I
    .locals 1

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersion(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static handleActivityResult(Landroid/content/Context;Lcom/facebook/widget/FacebookDialog$PendingCall;ILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)Z
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 234
    :cond_0
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Lcom/facebook/widget/FacebookDialog;->attachmentStore:Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-virtual {p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/facebook/NativeAppCallAttachmentStore;->cleanupAttachmentsForCall(Landroid/content/Context;Ljava/util/UUID;)V

    .line 238
    :cond_1
    if-eqz p4, :cond_2

    .line 239
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->getErrorFromResult(Landroid/content/Intent;)Ljava/lang/Exception;

    move-result-object v0

    .line 241
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p4, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$Callback;->onError(Lcom/facebook/widget/FacebookDialog$PendingCall;Ljava/lang/Exception;Landroid/os/Bundle;)V

    .line 247
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p4, p1, v0}, Lcom/facebook/widget/FacebookDialog$Callback;->onComplete(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private static handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 281
    invoke-static {p1}, Lcom/facebook/widget/FacebookDialog;->getMinVersionForFeatures(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/Integer;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public present()Lcom/facebook/widget/FacebookDialog$PendingCall;
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->onPresentCallback:Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/facebook/widget/FacebookDialog$OnPresentCallback;->onPresent(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    :goto_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    return-object v0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v2}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getRequestCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
