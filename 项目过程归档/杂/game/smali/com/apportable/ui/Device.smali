.class public Lcom/apportable/ui/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field public static final ALL_ORIENTATIONS_SUPPORTED:I = 0xf

.field private static final CHAR_SET:Ljava/lang/String; = "iso-8859-1"

.field public static final DELAY:J = 0x190L

.field public static final LANDSCAPE_LEFT_ORIENTATION:I = 0x3

.field public static final LANDSCAPE_LEFT_SUPPORTED:I = 0x4

.field public static final LANDSCAPE_RIGHT_ORIENTATION:I = 0x4

.field public static final LANDSCAPE_RIGHT_SUPPORTED:I = 0x8

.field public static final NO_ORIENTATION_SUPPORT:I = 0x0

.field public static final PORTRAIT_ORIENTATION:I = 0x1

.field public static final PORTRAIT_SUPPORTED:I = 0x1

.field public static final PORTRAIT_UPSIDEDOWN_ORIENTATION:I = 0x2

.field public static final PORTRAIT_UPSIDEDOWN_SUPPORTED:I = 0x2

.field private static final SHA1_ALGORITHM:Ljava/lang/String; = "SHA-1"

.field private static final TAG:Ljava/lang/String; = "ODIN"

.field public static final UNSPECIFIED_ORIENTATION:I


# instance fields
.field private listener:Lcom/apportable/ApportableOrientationEventListener;

.field private mEnabled:Z

.field private mObject:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/ui/Device;->listener:Lcom/apportable/ApportableOrientationEventListener;

    .line 48
    iput p2, p0, Lcom/apportable/ui/Device;->mObject:I

    .line 49
    new-instance v0, Lcom/apportable/ui/Device$1;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Device$1;-><init>(Lcom/apportable/ui/Device;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apportable/ui/Device;->listener:Lcom/apportable/ApportableOrientationEventListener;

    .line 65
    return-void
.end method

.method private static SHA1(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 137
    const/16 v1, 0x28

    new-array v1, v1, [B

    .line 138
    const-string v1, "iso-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 139
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/apportable/ui/Device;->convertToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string v1, "VerdeDevice"

    const-string v2, "Error generating generating SHA-1: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/apportable/ui/Device;)I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/apportable/ui/Device;->mObject:I

    return v0
.end method

.method static synthetic access$100(Lcom/apportable/ui/Device;II)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/apportable/ui/Device;->nativeOnOrientationChanged(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/apportable/ui/Device;)Lcom/apportable/ApportableOrientationEventListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/apportable/ui/Device;->listener:Lcom/apportable/ApportableOrientationEventListener;

    return-object v0
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 118
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move v0, v1

    .line 119
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 120
    aget-byte v2, p0, v0

    ushr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    move v3, v2

    move v2, v1

    .line 123
    :goto_1
    if-ltz v3, :cond_0

    const/16 v4, 0x9

    if-gt v3, v4, :cond_0

    .line 124
    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 127
    :goto_2
    aget-byte v3, p0, v0

    and-int/lit8 v4, v3, 0xf

    .line 128
    add-int/lit8 v3, v2, 0x1

    const/4 v6, 0x1

    if-lt v2, v6, :cond_2

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    add-int/lit8 v3, v3, -0xa

    add-int/lit8 v3, v3, 0x61

    int-to-char v3, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 130
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move v2, v3

    move v3, v4

    goto :goto_1
.end method

.method public static create(Landroid/content/Context;I)Lcom/apportable/ui/Device;
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/apportable/ui/Device;

    invoke-direct {v0, p0, p1}, Lcom/apportable/ui/Device;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static isAutorotationOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apportable/activity/VerdeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static macAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v0

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Lcom/apportable/app/VerdeApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 110
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 114
    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    const-string v2, "VerdeDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get device mac address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 114
    :cond_0
    const-string v0, ""

    goto :goto_1
.end method

.method private native nativeOnOrientationChanged(II)V
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    .line 90
    new-instance v0, Lcom/apportable/ui/Device$3;

    invoke-direct {v0, p0}, Lcom/apportable/ui/Device$3;-><init>(Lcom/apportable/ui/Device;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 97
    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apportable/ui/Device;->mEnabled:Z

    .line 78
    new-instance v0, Lcom/apportable/ui/Device$2;

    invoke-direct {v0, p0}, Lcom/apportable/ui/Device$2;-><init>(Lcom/apportable/ui/Device;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    return-void
.end method
