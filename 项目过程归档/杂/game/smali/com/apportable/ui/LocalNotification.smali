.class public Lcom/apportable/ui/LocalNotification;
.super Ljava/lang/Object;
.source "LocalNotification.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/apportable/ui/LocalNotification;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;


# instance fields
.field private alertAction:Ljava/lang/String;

.field private alertBody:Ljava/lang/String;

.field private alertLaunchImage:Ljava/lang/String;

.field private applicationIconBadgeNumber:J

.field private context:Landroid/content/Context;

.field private fireDate:D

.field private hasAction:Z

.field private icon:Landroid/graphics/Bitmap;

.field private payload:Ljava/lang/String;

.field private picture:Landroid/graphics/Bitmap;

.field private soundName:Ljava/lang/String;

.field private timeZoneName:Ljava/lang/String;

.field private userInfo:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    const-string v0, "LocalNotification"

    sput-object v0, Lcom/apportable/ui/LocalNotification;->TAG:Ljava/lang/String;

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "fireDate"

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "alertBody"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "hasAction"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "alertAction"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "alertLaunchImage"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "soundName"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "applicationIconBadgeNumber"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "userInfoParcelBytes"

    const-class v4, [B

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "timeZoneName"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "payload"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/apportable/ui/LocalNotification;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    .line 63
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    .line 65
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    .line 67
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    .line 68
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    .line 69
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    .line 70
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    .line 71
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->icon:Landroid/graphics/Bitmap;

    .line 73
    iput-object v2, p0, Lcom/apportable/ui/LocalNotification;->picture:Landroid/graphics/Bitmap;

    .line 74
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->context:Landroid/content/Context;

    .line 75
    return-void
.end method

.method private getTimeZoneOffsetInMillis()I
    .locals 4

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    goto :goto_0
.end method

.method private loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/apportable/ui/LocalNotification;->loadBitmapAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-object v0

    .line 227
    :cond_1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 231
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 234
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    if-nez v0, :cond_0

    .line 242
    sget-object v1, Lcom/apportable/ui/LocalNotification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load bitmap from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    sget-object v1, Lcom/apportable/ui/LocalNotification;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception whilst downloading bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBitmapAsset(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 254
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 255
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-object v0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 289
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 290
    const-string v0, "userInfoParcelBytes"

    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 292
    if-eqz v0, :cond_0

    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 294
    array-length v3, v0

    invoke-virtual {v2, v0, v5, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 295
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 296
    invoke-virtual {v2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    .line 301
    :goto_0
    const-string v0, "fireDate"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    .line 302
    const-string v0, "alertBody"

    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    .line 303
    const-string v0, "hasAction"

    invoke-virtual {v1, v0, v5}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    .line 304
    const-string v0, "alertAction"

    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    .line 305
    const-string v0, "alertLaunchImage"

    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    .line 306
    const-string v0, "soundName"

    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    .line 307
    const-string v0, "applicationIconBadgeNumber"

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    .line 308
    const-string v0, "timeZoneName"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    .line 309
    const-string v0, "payload"

    invoke-virtual {v1, v0, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    .line 310
    return-void

    .line 298
    :cond_0
    iput-object v4, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 318
    const-string v1, "fireDate"

    iget-wide v2, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;D)V

    .line 319
    const-string v1, "alertBody"

    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    const-string v1, "hasAction"

    iget-boolean v2, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    .line 321
    const-string v1, "alertAction"

    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    const-string v1, "alertLaunchImage"

    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    const-string v1, "soundName"

    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 324
    const-string v1, "applicationIconBadgeNumber"

    iget-wide v2, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    .line 325
    const-string v1, "timeZoneName"

    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    const-string v1, "payload"

    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 329
    const-string v1, "userInfoParcelBytes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 337
    return-void

    .line 331
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 332
    iget-object v2, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 333
    const-string v2, "userInfoParcelBytes"

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/apportable/ui/LocalNotification;)I
    .locals 5

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    move-result-wide v0

    .line 274
    invoke-virtual {p1}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    move-result-wide v2

    .line 275
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/apportable/ui/LocalNotification;

    invoke-virtual {p0, p1}, Lcom/apportable/ui/LocalNotification;->compareTo(Lcom/apportable/ui/LocalNotification;)I

    move-result v0

    return v0
.end method

.method public fireNow()V
    .locals 2

    .prologue
    .line 78
    invoke-static {p0}, Lcom/apportable/notifications/Notifications;->scheduleLocalNotification(Lcom/apportable/ui/LocalNotification;)V

    .line 79
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/apportable/ui/LocalNotification;->setFireDate(D)V

    .line 80
    return-void
.end method

.method public getAlertAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    return-object v0
.end method

.method public getAlertBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    return-object v0
.end method

.method public getAlertLaunchImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationIconBadgeNumber()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    return-wide v0
.end method

.method public getFireDate()D
    .locals 2

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    return-wide v0
.end method

.method public getFireDateInMilli()J
    .locals 4

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getPicture()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->picture:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSoundName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeZoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZoneOffset()I
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZoneOffsetInMillis()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method public getUTCFireDateInMilli()J
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZone()Ljava/util/TimeZone;

    .line 93
    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    move-result-wide v0

    .line 94
    invoke-direct {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZoneOffsetInMillis()I

    .line 95
    invoke-direct {p0}, Lcom/apportable/ui/LocalNotification;->getTimeZoneOffsetInMillis()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 96
    return-wide v0
.end method

.method public getUserInfo()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    return v0
.end method

.method public setAlertAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->alertAction:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setAlertBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public setAlertLaunchImage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->alertLaunchImage:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public setApplicationIconBadgeNumber(J)V
    .locals 1

    .prologue
    .line 189
    iput-wide p1, p0, Lcom/apportable/ui/LocalNotification;->applicationIconBadgeNumber:J

    .line 190
    return-void
.end method

.method public setFireDate(D)V
    .locals 1

    .prologue
    .line 165
    iput-wide p1, p0, Lcom/apportable/ui/LocalNotification;->fireDate:D

    .line 166
    return-void
.end method

.method public setHasAction(Z)V
    .locals 0

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/apportable/ui/LocalNotification;->hasAction:Z

    .line 174
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->icon:Landroid/graphics/Bitmap;

    .line 206
    return-void
.end method

.method public setIconFromPath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/apportable/ui/LocalNotification;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->icon:Landroid/graphics/Bitmap;

    .line 210
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->payload:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setPicture(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->picture:Landroid/graphics/Bitmap;

    .line 214
    return-void
.end method

.method public setPictureFromPath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/apportable/ui/LocalNotification;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apportable/ui/LocalNotification;->picture:Landroid/graphics/Bitmap;

    .line 218
    return-void
.end method

.method public setSoundName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->soundName:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setTimeZoneName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->timeZoneName:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setUserInfo(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/apportable/ui/LocalNotification;->userInfo:Landroid/os/Bundle;

    .line 194
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<LocalNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/apportable/ui/LocalNotification;->getFireDateInMilli()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/apportable/ui/LocalNotification;->alertBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
