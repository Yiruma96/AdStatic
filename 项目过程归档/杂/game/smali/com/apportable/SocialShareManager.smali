.class public Lcom/apportable/SocialShareManager;
.super Ljava/lang/Object;
.source "SocialShareManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static instance:Lcom/apportable/SocialShareManager;


# instance fields
.field private final REQUEST_CODE:I

.field private activity:Landroid/app/Activity;

.field private images:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private initialText:Ljava/lang/String;

.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "SocialShareManager"

    sput-object v0, Lcom/apportable/SocialShareManager;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/apportable/SocialShareManager;->instance:Lcom/apportable/SocialShareManager;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const v0, 0xface

    iput v0, p0, Lcom/apportable/SocialShareManager;->REQUEST_CODE:I

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apportable/SocialShareManager;->urls:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apportable/SocialShareManager;->images:Ljava/util/ArrayList;

    .line 35
    iput-object v1, p0, Lcom/apportable/SocialShareManager;->initialText:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/apportable/SocialShareManager;->activity:Landroid/app/Activity;

    .line 40
    sget-object v0, Lcom/apportable/SocialShareManager;->instance:Lcom/apportable/SocialShareManager;

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    sput-object p0, Lcom/apportable/SocialShareManager;->instance:Lcom/apportable/SocialShareManager;

    .line 44
    iput-object p1, p0, Lcom/apportable/SocialShareManager;->activity:Landroid/app/Activity;

    goto :goto_0
.end method

.method private findExistingPackageName([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 68
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 69
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lcom/apportable/SocialShareManager;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 71
    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 73
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 74
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 75
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 76
    if-eqz v0, :cond_0

    aget-object v4, p1, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    :goto_1
    return-object v0

    .line 73
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getInstance()Lcom/apportable/SocialShareManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/apportable/SocialShareManager;->instance:Lcom/apportable/SocialShareManager;

    return-object v0
.end method

.method private saveAndReturnShareData([BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 125
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    :goto_0
    return-object v0

    .line 129
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/apportable/app/VerdeApplication;->getApplication()Lcom/apportable/app/VerdeApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apportable/app/VerdeApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-screenshot.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 131
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 133
    const/4 v2, 0x0

    array-length v4, p1

    invoke-virtual {v1, p1, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 134
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    sget-object v2, Lcom/apportable/SocialShareManager;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendShare(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 178
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_1

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 184
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v5, :cond_2

    const-string v0, "text/plain"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apportable/SocialShareManager;->initialText:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apportable/SocialShareManager;->initialText:Ljava/lang/String;

    :goto_2
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 189
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 181
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    .line 185
    :cond_2
    const-string v0, "image/png"

    goto :goto_1

    .line 187
    :cond_3
    const-string v0, ""

    goto :goto_2

    .line 191
    :cond_4
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 194
    const-string v2, "android.intent.extra.STREAM"

    iget-object v0, p0, Lcom/apportable/SocialShareManager;->images:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 198
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->activity:Landroid/app/Activity;

    const-string v2, "Share"

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const v2, 0xface

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apportable/SocialShareManager;->initialText:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/apportable/SocialShareManager;->removeAllImages()V

    .line 202
    invoke-virtual {p0}, Lcom/apportable/SocialShareManager;->removeAllURLs()V

    .line 203
    return-void

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_5

    .line 196
    const-string v0, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcom/apportable/SocialShareManager;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_4
.end method


# virtual methods
.method public addImage([BLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 115
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/apportable/SocialShareManager;->saveAndReturnShareData([BLjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v1, p0, Lcom/apportable/SocialShareManager;->images:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    return-void
.end method

.method public addInitialText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/apportable/SocialShareManager;->initialText:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public addURL(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->urls:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public canSendFacebook()Z
    .locals 4

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/apportable/SocialShareManager;->findFacebookPackageName()Ljava/lang/String;

    move-result-object v0

    .line 55
    sget-object v1, Lcom/apportable/SocialShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canSendFacebook:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public canSendTweet()Z
    .locals 4

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/apportable/SocialShareManager;->findTwitterPackageName()Ljava/lang/String;

    move-result-object v0

    .line 49
    sget-object v1, Lcom/apportable/SocialShareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canSendTweet:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public findFacebookPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    .line 98
    invoke-direct {p0, v0}, Lcom/apportable/SocialShareManager;->findExistingPackageName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findTwitterPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.twitter.android"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.twidroid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.handmark.tweetcaster"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.thedeck.android"

    aput-object v2, v0, v1

    .line 91
    invoke-direct {p0, v0}, Lcom/apportable/SocialShareManager;->findExistingPackageName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAllImages()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->images:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    return-void
.end method

.method public removeAllURLs()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 112
    return-void
.end method

.method public sendShareWithFacebook()V
    .locals 4

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/apportable/SocialShareManager;->findFacebookPackageName()Ljava/lang/String;

    move-result-object v0

    .line 163
    if-nez v0, :cond_1

    .line 164
    const-string v0, "http://www.facebook.com/sharer/sharer.php"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/apportable/SocialShareManager;->urls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "u"

    iget-object v2, p0, Lcom/apportable/SocialShareManager;->urls:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 168
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->activity:Landroid/app/Activity;

    const v2, 0xface

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-direct {p0, v0}, Lcom/apportable/SocialShareManager;->sendShare(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendShareWithSocialNetworks()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apportable/SocialShareManager;->sendShare(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public sendShareWithTwitter()V
    .locals 5

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/apportable/SocialShareManager;->findTwitterPackageName()Ljava/lang/String;

    move-result-object v0

    .line 144
    if-nez v0, :cond_2

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apportable/SocialShareManager;->initialText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/SocialShareManager;->initialText:Ljava/lang/String;

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/apportable/SocialShareManager;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 145
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 148
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://twitter.com/intent/tweet"

    .line 149
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "text"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    iget-object v1, p0, Lcom/apportable/SocialShareManager;->activity:Landroid/app/Activity;

    const v2, 0xface

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 154
    :goto_2
    return-void

    .line 152
    :cond_2
    invoke-direct {p0, v0}, Lcom/apportable/SocialShareManager;->sendShare(Ljava/lang/String;)V

    goto :goto_2
.end method
