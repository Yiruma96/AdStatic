.class public Lcom/apportable/net/Reachability;
.super Landroid/content/BroadcastReceiver;
.source "Reachability.java"


# static fields
.field public static final AUTHENTICATING:I = 0x1

.field public static final AVAILABLE:I = 0x10

.field public static final BLOCKED:I = 0x2

.field public static final CAPTIVE_PORTAL_CHECK:I = 0x3

.field public static final CONNECTED:I = 0x4

.field public static final CONNECTING:I = 0x5

.field public static final DISCONNECTED:I = 0x6

.field public static final DISCONNECTING:I = 0x7

.field public static final FAILED:I = 0x8

.field public static final FAILOVER:I = 0x20

.field public static final IDLE:I = 0x9

.field public static final OBTAINING_IPADDR:I = 0xa

.field public static final ROAMING:I = 0x40

.field public static final SCANNING:I = 0xb

.field public static final STATE_MASK:I = 0xf0

.field public static final STATUS_MASK:I = 0xf

.field public static final SUSPENDED:I = 0xc

.field public static final VERIFYING_POOR_LINK:I = 0xd


# instance fields
.field private mContext:Landroid/content/Context;

.field private mState:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/apportable/net/Reachability;->mState:[I

    .line 47
    iput-object p1, p0, Lcom/apportable/net/Reachability;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/apportable/net/Reachability;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/apportable/net/Reachability;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/apportable/net/Reachability;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/apportable/net/Reachability;->didStart()V

    return-void
.end method

.method private native didStart()V
.end method

.method private getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 62
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getState(Landroid/net/NetworkInfo;)I
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    :cond_0
    const/16 v0, 0x10

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isFailover()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    or-int/lit8 v0, v0, 0x20

    .line 74
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isRoaming()Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    or-int/lit8 v0, v0, 0x40

    .line 81
    :cond_3
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 82
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    if-ne v1, v2, :cond_4

    .line 83
    or-int/lit8 v0, v0, 0x1

    .line 89
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 90
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    if-ne v1, v2, :cond_5

    .line 91
    or-int/lit8 v0, v0, 0x4

    .line 97
    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 98
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    if-ne v1, v2, :cond_6

    .line 99
    or-int/lit8 v0, v0, 0x5

    .line 105
    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 106
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    if-ne v1, v2, :cond_7

    .line 107
    or-int/lit8 v0, v0, 0x6

    .line 113
    :cond_7
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 114
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    if-ne v1, v2, :cond_8

    .line 115
    or-int/lit8 v0, v0, 0x7

    .line 121
    :cond_8
    :goto_5
    :try_start_6
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 122
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    if-ne v1, v2, :cond_9

    .line 123
    or-int/lit8 v0, v0, 0x8

    .line 129
    :cond_9
    :goto_6
    :try_start_7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 130
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    if-ne v1, v2, :cond_a

    .line 131
    or-int/lit8 v0, v0, 0x9

    .line 137
    :cond_a
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 138
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    if-ne v1, v2, :cond_b

    .line 139
    or-int/lit8 v0, v0, 0xa

    .line 145
    :cond_b
    :goto_8
    :try_start_9
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 146
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    if-ne v1, v2, :cond_c

    .line 147
    or-int/lit8 v0, v0, 0xb

    .line 153
    :cond_c
    :goto_9
    :try_start_a
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 154
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    if-ne v1, v2, :cond_d

    .line 155
    or-int/lit8 v0, v0, 0xc

    .line 161
    :cond_d
    :goto_a
    :try_start_b
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 162
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    if-ne v1, v2, :cond_e

    .line 163
    or-int/lit8 v0, v0, 0xd

    .line 167
    :cond_e
    :goto_b
    return v0

    .line 165
    :catch_0
    move-exception v1

    goto :goto_b

    .line 157
    :catch_1
    move-exception v1

    goto :goto_a

    .line 149
    :catch_2
    move-exception v1

    goto :goto_9

    .line 141
    :catch_3
    move-exception v1

    goto :goto_8

    .line 133
    :catch_4
    move-exception v1

    goto :goto_7

    .line 125
    :catch_5
    move-exception v1

    goto :goto_6

    .line 117
    :catch_6
    move-exception v1

    goto :goto_5

    .line 109
    :catch_7
    move-exception v1

    goto :goto_4

    .line 101
    :catch_8
    move-exception v1

    goto :goto_3

    .line 93
    :catch_9
    move-exception v1

    goto :goto_2

    .line 85
    :catch_a
    move-exception v1

    goto :goto_1

    .line 77
    :catch_b
    move-exception v1

    goto/16 :goto_0
.end method

.method private native stateChangeFinished()V
.end method

.method private native stateChanged(III)V
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/apportable/net/Reachability;->getConnectivityManager(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 175
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 176
    invoke-direct {p0, v3}, Lcom/apportable/net/Reachability;->getState(Landroid/net/NetworkInfo;)I

    move-result v3

    .line 177
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/16 v5, 0x14

    if-lt v4, v5, :cond_1

    .line 174
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    iget-object v5, p0, Lcom/apportable/net/Reachability;->mState:[I

    aget v5, v5, v4

    if-eq v5, v3, :cond_0

    .line 181
    iget-object v5, p0, Lcom/apportable/net/Reachability;->mState:[I

    aget v5, v5, v4

    invoke-direct {p0, v4, v5, v3}, Lcom/apportable/net/Reachability;->stateChanged(III)V

    .line 182
    iget-object v5, p0, Lcom/apportable/net/Reachability;->mState:[I

    aput v3, v5, v4

    goto :goto_1

    .line 185
    :cond_2
    invoke-direct {p0}, Lcom/apportable/net/Reachability;->stateChangeFinished()V

    .line 186
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/apportable/net/Reachability$1;

    invoke-direct {v0, p0}, Lcom/apportable/net/Reachability$1;-><init>(Lcom/apportable/net/Reachability;)V

    invoke-static {v0}, Lcom/apportable/utils/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method
