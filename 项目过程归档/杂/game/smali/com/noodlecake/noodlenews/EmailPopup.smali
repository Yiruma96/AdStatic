.class public Lcom/noodlecake/noodlenews/EmailPopup;
.super Ljava/lang/Object;
.source "EmailPopup.java"


# static fields
.field private static final EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/noodlecake/noodlenews/EmailPopup;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/noodlecake/noodlenews/EmailPopup;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public static getPrePopEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v5

    .line 57
    array-length v6, v5

    move v4, v1

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v0, v5, v4

    .line 58
    iget-object v2, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/noodlecake/noodlenews/EmailPopup;->EMAIL_ADDRESS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x1

    .line 63
    if-eqz p0, :cond_1

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 64
    const-string v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_1

    aget-object v9, v7, v3

    .line 65
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_0

    move v0, v1

    .line 64
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 71
    :cond_1
    if-eqz v0, :cond_2

    move-object v0, v2

    .line 77
    :goto_2
    return-object v0

    .line 57
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 77
    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method public static popUpEmailDialog(Lcom/noodlecake/noodlenews/PopupTransaction;)V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    new-instance v1, Lcom/noodlecake/noodlenews/EmailPopup$1;

    invoke-direct {v1, p0}, Lcom/noodlecake/noodlenews/EmailPopup$1;-><init>(Lcom/noodlecake/noodlenews/PopupTransaction;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 179
    :cond_0
    return-void
.end method
