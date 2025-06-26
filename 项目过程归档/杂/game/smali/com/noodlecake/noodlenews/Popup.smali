.class public Lcom/noodlecake/noodlenews/Popup;
.super Ljava/lang/Object;
.source "Popup.java"


# static fields
.field private static final POPUP_URI:Ljava/lang/String; = "http://news.noodlecake.net/popups/"

.field private static final TAG:Ljava/lang/String; = "Popup"

.field private static currencyName:Ljava/lang/String;

.field private static isPaused:Z

.field private static listedTransactions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/noodlecake/noodlenews/PopupTransaction;",
            ">;"
        }
    .end annotation
.end field

.field private static moreGamesCount:I

.field public static platform:Ljava/lang/String;

.field public static platformInitialized:Z

.field private static transactionDB:Lcom/noodlecake/noodlenews/PopupTransactionDB;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    const-string v0, "Coins"

    sput-object v0, Lcom/noodlecake/noodlenews/Popup;->currencyName:Ljava/lang/String;

    .line 53
    const-string v0, "android"

    sput-object v0, Lcom/noodlecake/noodlenews/Popup;->platform:Ljava/lang/String;

    .line 54
    sput-boolean v1, Lcom/noodlecake/noodlenews/Popup;->platformInitialized:Z

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/noodlecake/noodlenews/Popup;->transactionDB:Lcom/noodlecake/noodlenews/PopupTransactionDB;

    .line 56
    const/4 v0, 0x1

    sput-boolean v0, Lcom/noodlecake/noodlenews/Popup;->isPaused:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/noodlecake/noodlenews/Popup;->listedTransactions:Ljava/util/Map;

    .line 58
    sput v1, Lcom/noodlecake/noodlenews/Popup;->moreGamesCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/noodlecake/noodlenews/Popup;->isPaused:Z

    return v0
.end method

.method static synthetic access$100(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-static {p0}, Lcom/noodlecake/noodlenews/Popup;->parsePollingResponse(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/noodlecake/noodlenews/Popup;->listedTransactions:Ljava/util/Map;

    return-object v0
.end method

.method public static appPausing()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    sput-boolean v0, Lcom/noodlecake/noodlenews/Popup;->isPaused:Z

    .line 82
    return-void
.end method

.method public static appResuming(I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    sget-object v0, Lcom/noodlecake/noodlenews/Popup;->transactionDB:Lcom/noodlecake/noodlenews/PopupTransactionDB;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/noodlecake/noodlenews/PopupTransactionDB;

    invoke-static {}, Lcom/apportable/activity/VerdeActivity;->getActivity()Lcom/apportable/activity/VerdeActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/noodlecake/noodlenews/PopupTransactionDB;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/noodlecake/noodlenews/Popup;->transactionDB:Lcom/noodlecake/noodlenews/PopupTransactionDB;

    .line 65
    :cond_0
    sput-boolean v2, Lcom/noodlecake/noodlenews/Popup;->platformInitialized:Z

    .line 66
    if-ne p0, v2, :cond_3

    .line 67
    const-string v0, "amazon"

    sput-object v0, Lcom/noodlecake/noodlenews/Popup;->platform:Ljava/lang/String;

    .line 73
    :cond_1
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/noodlecake/noodlenews/Popup;->isPaused:Z

    .line 74
    sget-boolean v0, Lcom/noodlecake/noodlenews/Popup;->platformInitialized:Z

    if-eqz v0, :cond_2

    .line 76
    invoke-static {}, Lcom/noodlecake/noodlenews/Popup;->pollPopupServer()V

    .line 78
    :cond_2
    return-void

    .line 69
    :cond_3
    if-nez p0, :cond_1

    .line 70
    const-string v0, "android"

    sput-object v0, Lcom/noodlecake/noodlenews/Popup;->platform:Ljava/lang/String;

    goto :goto_0
.end method

.method public static checkImmediatePopup()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/noodlecake/noodlenews/Popup;->getTransactionsNotAcked()Ljava/util/ArrayList;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 109
    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->isImmediate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    invoke-static {v0}, Lcom/noodlecake/noodlenews/Popup;->popItUp(Lcom/noodlecake/noodlenews/PopupTransaction;)V

    .line 114
    :cond_1
    return-void
.end method

.method public static checkParameterizedPopup(I)V
    .locals 3

    .prologue
    .line 85
    invoke-static {}, Lcom/noodlecake/noodlenews/Popup;->getTransactionsNotAcked()Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 87
    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->isImmediate()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getParameter1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getParameter1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 88
    invoke-static {v0}, Lcom/noodlecake/noodlenews/Popup;->popItUp(Lcom/noodlecake/noodlenews/PopupTransaction;)V

    .line 92
    :cond_1
    return-void
.end method

.method public static getMoreGamesCount()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/noodlecake/noodlenews/Popup;->moreGamesCount:I

    return v0
.end method

.method public static getTransactionsNotAcked()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/noodlecake/noodlenews/PopupTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    sget-object v2, Lcom/noodlecake/noodlenews/Popup;->listedTransactions:Ljava/util/Map;

    monitor-enter v2

    .line 276
    :try_start_0
    sget-object v0, Lcom/noodlecake/noodlenews/Popup;->listedTransactions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 277
    sget-object v4, Lcom/noodlecake/noodlenews/Popup;->transactionDB:Lcom/noodlecake/noodlenews/PopupTransactionDB;

    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getPopupId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/noodlecake/noodlenews/PopupTransactionDB;->popupIdNotAcked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    return-object v1
.end method

.method public static hasImmediatePopup()Z
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Lcom/noodlecake/noodlenews/Popup;->getTransactionsNotAcked()Ljava/util/ArrayList;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 119
    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->isImmediate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasParameterizedPopup(I)Z
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/noodlecake/noodlenews/Popup;->getTransactionsNotAcked()Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/noodlecake/noodlenews/PopupTransaction;

    .line 97
    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->isImmediate()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getParameter1()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getParameter1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 102
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parsePollingResponse(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/noodlecake/noodlenews/PopupTransaction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 215
    :try_start_0
    const-string v0, "game_count"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/noodlecake/noodlenews/Popup;->moreGamesCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    const-string v0, "results"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 223
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v3, v2

    .line 225
    :goto_1
    if-ge v3, v6, :cond_a

    .line 226
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 227
    new-instance v8, Lcom/noodlecake/noodlenews/PopupTransaction;

    const-string v0, "id"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;-><init>(I)V

    .line 229
    const-string v0, "popup_id"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setPopupId(I)V

    .line 231
    const-string v0, "title"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const-string v0, "title"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setTitle(Ljava/lang/String;)V

    .line 235
    :cond_0
    const-string v0, "description"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    const-string v0, "description"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setDescription(Ljava/lang/String;)V

    .line 239
    :cond_1
    const-string v0, "type"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    const-string v0, "type"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setType(Ljava/lang/String;)V

    .line 243
    :cond_2
    const-string v0, "immediate"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setImmediate(Z)V

    .line 245
    const-string v0, "positive_button_text"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 246
    const-string v0, "positive_button_text"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setPositiveButtonText(Ljava/lang/String;)V

    .line 249
    :cond_3
    const-string v0, "negative_button_text"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 250
    const-string v0, "negative_button_text"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setNegativeButtonText(Ljava/lang/String;)V

    .line 253
    :cond_4
    const-string v0, "parameter_1"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 254
    const-string v0, "parameter_1"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setParameter1(Ljava/lang/String;)V

    .line 256
    :cond_5
    const-string v0, "parameter_2"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 257
    const-string v0, "parameter_2"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setParameter2(Ljava/lang/String;)V

    .line 259
    :cond_6
    const-string v0, "parameter_3"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 260
    const-string v0, "parameter_3"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setParameter3(Ljava/lang/String;)V

    .line 262
    :cond_7
    const-string v0, "parameter_4"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 263
    const-string v0, "parameter_4"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/noodlecake/noodlenews/PopupTransaction;->setParameter4(Ljava/lang/String;)V

    .line 266
    :cond_8
    invoke-virtual {v8}, Lcom/noodlecake/noodlenews/PopupTransaction;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    sput v2, Lcom/noodlecake/noodlenews/Popup;->moreGamesCount:I

    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 243
    goto :goto_2

    .line 269
    :cond_a
    return-object v4
.end method

.method public static pollPopupServer()V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Lcom/noodlecake/noodlenews/Popup$1;

    invoke-direct {v0}, Lcom/noodlecake/noodlenews/Popup$1;-><init>()V

    .line 202
    invoke-static {}, Lcom/apportable/MainThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/noodlecake/noodlenews/Popup$2;

    invoke-direct {v2, v0}, Lcom/noodlecake/noodlenews/Popup$2;-><init>(Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 209
    return-void
.end method

.method public static popItUp(Lcom/noodlecake/noodlenews/PopupTransaction;)V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MAILING_LIST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    invoke-static {p0}, Lcom/noodlecake/noodlenews/EmailPopup;->popUpEmailDialog(Lcom/noodlecake/noodlenews/PopupTransaction;)V

    .line 140
    :goto_0
    sget-object v0, Lcom/noodlecake/noodlenews/Popup;->transactionDB:Lcom/noodlecake/noodlenews/PopupTransactionDB;

    invoke-virtual {p0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getPopupId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/noodlecake/noodlenews/PopupTransactionDB;->markPopupIdAcked(I)V

    .line 141
    :cond_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "URL_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    invoke-static {p0}, Lcom/noodlecake/noodlenews/OpenUrlPopup;->openUrl(Lcom/noodlecake/noodlenews/PopupTransaction;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0}, Lcom/noodlecake/noodlenews/PopupTransaction;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {p0}, Lcom/noodlecake/noodlenews/AlertPopup;->popUpAlert(Lcom/noodlecake/noodlenews/PopupTransaction;)V

    goto :goto_0
.end method
