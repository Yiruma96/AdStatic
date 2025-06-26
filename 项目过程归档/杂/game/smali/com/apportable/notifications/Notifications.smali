.class public Lcom/apportable/notifications/Notifications;
.super Ljava/lang/Object;
.source "Notifications.java"


# static fields
.field private static final LOCALNOTIFICATION_KEY:Ljava/lang/String; = "LocalNotification"

.field private static final TAG:Ljava/lang/String; = "Notifications"

.field private static localNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apportable/ui/LocalNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAllLocalNotifications()V
    .locals 3

    .prologue
    .line 106
    const-class v1, Lcom/apportable/notifications/Notifications;

    monitor-enter v1

    .line 107
    :try_start_0
    invoke-static {}, Lcom/apportable/notifications/Notifications;->getScheduledLocalNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-static {}, Lcom/apportable/notifications/Notifications;->persistNotifications()V

    .line 110
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/apportable/notifications/LocalNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 112
    return-void

    .line 108
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static deserializeObject(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;[B)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 249
    if-nez p1, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 254
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 255
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 256
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 258
    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 267
    :catch_1
    move-exception v1

    .line 268
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 159
    :try_start_0
    const-string v0, "notification"

    .line 160
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 162
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 163
    const-string v2, "notification_icon"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 164
    if-nez v2, :cond_0

    .line 165
    const-string v2, "Notifications"

    const-string v4, "Notification Icon not found!  Will use app icon for notification icon."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v2, "icon"

    const-string v4, "drawable"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 169
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 170
    const-string v6, "app_name"

    const-string v7, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 174
    const-string v6, "com.apportable.activity.VerdeActivity"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 176
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 177
    if-eqz p4, :cond_1

    .line 178
    const-string v6, "LocalNotification"

    invoke-static {p4}, Lcom/apportable/notifications/Notifications;->serializeObject(Ljava/io/Serializable;)[B

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 181
    :cond_1
    const/4 v6, 0x0

    const/high16 v8, 0x8000000

    invoke-static {p0, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 184
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_6

    .line 185
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 187
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 188
    invoke-virtual {v7, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 189
    invoke-virtual {v7, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 190
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 191
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 192
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 194
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/apportable/ui/LocalNotification;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 195
    :goto_0
    if-eqz v2, :cond_2

    .line 196
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 199
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/apportable/ui/LocalNotification;->getPicture()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    :cond_3
    if-eqz v1, :cond_5

    .line 202
    new-instance v2, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v2, v4}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 203
    invoke-virtual {v2, v1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    .line 204
    invoke-virtual {v1, v3}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    .line 205
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 223
    :goto_1
    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 224
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 230
    :goto_2
    return-void

    :cond_4
    move-object v2, v1

    .line 194
    goto :goto_0

    .line 213
    :cond_5
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v4}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 214
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    goto :goto_1

    .line 219
    :cond_6
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 220
    invoke-virtual {v1, p0, v3, p1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 227
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "Notifications"

    const-string v2, "Exception posting notification:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static getActivityLocalNotification()Lcom/apportable/ui/LocalNotification;
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LocalNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    const/4 v0, 0x0

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 45
    :cond_1
    const-class v1, Lcom/apportable/ui/LocalNotification;

    invoke-static {v1, v0}, Lcom/apportable/notifications/Notifications;->deserializeObject(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apportable/ui/LocalNotification;

    .line 47
    if-nez v0, :cond_0

    .line 48
    const-string v1, "Notifications"

    const-string v2, "notification decoding failed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getScheduledLocalNotifications()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/apportable/ui/LocalNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    .line 62
    :try_start_0
    const-string v1, "Notifications"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 63
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 64
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    .line 65
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 66
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :goto_0
    sget-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    .line 77
    :cond_0
    sget-object v0, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    return-object v0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    const-string v0, "Notifications"

    const-string v1, "No notifications list exists yet."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :catch_1
    move-exception v0

    .line 70
    const-string v1, "Notifications"

    const-string v2, "Exception loading notification list.  Will start new list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected static persistNotifications()V
    .locals 4

    .prologue
    .line 81
    const-class v1, Lcom/apportable/notifications/Notifications;

    monitor-enter v1

    .line 82
    :try_start_0
    invoke-static {}, Lcom/apportable/notifications/Notifications;->getScheduledLocalNotifications()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :try_start_1
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    const-string v2, "Notifications"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/apportable/app/VerdeApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 85
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 86
    sget-object v3, Lcom/apportable/notifications/Notifications;->localNotifications:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 88
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 93
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    const-string v2, "Notifications"

    const-string v3, "Exception saving notification list.  Notifications may not be saved!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static postLocalNotification(Landroid/content/Context;Lcom/apportable/ui/LocalNotification;)V
    .locals 3

    .prologue
    .line 115
    const/4 v0, 0x1

    .line 116
    invoke-virtual {p1}, Lcom/apportable/ui/LocalNotification;->getAlertBody()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {p1}, Lcom/apportable/ui/LocalNotification;->getSoundName()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-static {p0, v1, v2, v0, p1}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    .line 118
    return-void
.end method

.method public static postLocalNotification(Lcom/apportable/ui/LocalNotification;Z)V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getAlertBody()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getSoundName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0, v1, v2, p1, p0}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    .line 123
    return-void
.end method

.method public static postNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/apportable/ui/LocalNotification;

    invoke-direct {v0, p0}, Lcom/apportable/ui/LocalNotification;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v0, p3}, Lcom/apportable/ui/LocalNotification;->setPayload(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p1}, Lcom/apportable/ui/LocalNotification;->setAlertBody(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, p2}, Lcom/apportable/ui/LocalNotification;->setSoundName(Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    .line 138
    return-void
.end method

.method public static postNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    .line 142
    return-void
.end method

.method public static postNotification(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    invoke-static {p0, p1, v0, p2, v0}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    .line 150
    return-void
.end method

.method public static postNotification(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/apportable/notifications/Notifications;->doPostNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/apportable/ui/LocalNotification;)V

    .line 146
    return-void
.end method

.method public static postNotification(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/apportable/notifications/Notifications;->postNotification(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 127
    return-void
.end method

.method public static removeActivityLocalNotification()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/apportable/activity/VerdeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LocalNotification"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static scheduleLocalNotification(Lcom/apportable/ui/LocalNotification;)V
    .locals 3

    .prologue
    .line 97
    const-class v1, Lcom/apportable/notifications/Notifications;

    monitor-enter v1

    .line 98
    :try_start_0
    invoke-static {}, Lcom/apportable/notifications/Notifications;->getScheduledLocalNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/apportable/notifications/LocalNotificationService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 103
    return-void

    .line 99
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static serializeObject(Ljava/io/Serializable;)[B
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 235
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 236
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 237
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 239
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 243
    const/4 v0, 0x0

    goto :goto_0
.end method
