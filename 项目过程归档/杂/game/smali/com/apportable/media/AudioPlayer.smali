.class public Lcom/apportable/media/AudioPlayer;
.super Ljava/lang/Object;
.source "AudioPlayer.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field MAX_SOURCES:I

.field private mContext:Landroid/content/Context;

.field private mSourcePaths:[Ljava/lang/String;

.field private mSources:[Lcom/apportable/media/AudioPlayerItem;

.field private onDemandLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "AudioPlayer"

    sput-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/apportable/media/AudioPlayer;-><init>(Landroid/content/Context;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    .line 85
    iput-object v2, p0, Lcom/apportable/media/AudioPlayer;->mContext:Landroid/content/Context;

    .line 88
    iput p2, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    .line 89
    iput-object p1, p0, Lcom/apportable/media/AudioPlayer;->mContext:Landroid/content/Context;

    .line 90
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    new-array v1, v1, [Lcom/apportable/media/AudioPlayerItem;

    iput-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    .line 91
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    .line 93
    :goto_0
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aput-object v2, v1, v0

    .line 95
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    aput-object v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private _releaseAudio(I)V
    .locals 2

    .prologue
    .line 305
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 310
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 311
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method private initializeAudio(I)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 161
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    aget-object v9, v0, p1

    .line 162
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 163
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 169
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v2

    move-object v8, v1

    .line 190
    :goto_0
    if-eqz v8, :cond_5

    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :goto_1
    if-eqz v7, :cond_0

    .line 223
    :try_start_2
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 230
    :cond_0
    :goto_2
    if-eqz v8, :cond_1

    .line 231
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 239
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    new-instance v2, Lcom/apportable/media/AudioPlayerItem;

    invoke-direct {v2, p1, v0, p0}, Lcom/apportable/media/AudioPlayerItem;-><init>(ILandroid/media/MediaPlayer;Lcom/apportable/media/AudioPlayer;)V

    aput-object v2, v1, p1

    .line 241
    :try_start_4
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 242
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    .line 246
    :cond_2
    :goto_4
    return p1

    .line 170
    :catch_0
    move-exception v1

    .line 173
    :try_start_5
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v1

    .line 174
    :try_start_6
    sget-object v3, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeAudio: using asset path:\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' desc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 174
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    move-object v7, v1

    move-object v8, v2

    .line 186
    goto :goto_0

    .line 176
    :catch_1
    move-exception v1

    move-object v1, v2

    .line 177
    :goto_5
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apportable/ExpansionFileManager;->hasExpansionFiles()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    invoke-static {}, Lcom/apportable/ExpansionFileManager;->getManager()Lcom/apportable/ExpansionFileManager;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/apportable/ExpansionFileManager;->openAssetFile(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 181
    :cond_3
    if-nez v1, :cond_4

    .line 182
    sget-object v3, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeAudio: could not find any audio file with path:\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v7, v1

    move-object v8, v2

    goto/16 :goto_0

    .line 192
    :cond_5
    :try_start_7
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 193
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 194
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 193
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 197
    :catch_2
    move-exception v0

    .line 198
    :try_start_8
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeAudio: could not setDataSource with asset path:\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeAudio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v1, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    if-nez v1, :cond_b

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_b

    if-lez p1, :cond_b

    .line 211
    sget-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v1, "switching to on-demand loading"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 212
    :goto_6
    if-ge v0, p1, :cond_9

    .line 213
    invoke-direct {p0, v0}, Lcom/apportable/media/AudioPlayer;->_releaseAudio(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 196
    :cond_6
    :try_start_9
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Asset FD not valid"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    if-eqz v7, :cond_7

    .line 223
    :try_start_a
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 230
    :cond_7
    :goto_7
    if-eqz v8, :cond_8

    .line 231
    :try_start_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 236
    :cond_8
    :goto_8
    throw v0

    .line 225
    :catch_3
    move-exception v1

    .line 226
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeAudio: could not close asset path:\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 233
    :catch_4
    move-exception v1

    .line 234
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeAudio: could not close file stream:\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 215
    :cond_9
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 222
    :goto_9
    if-eqz v7, :cond_a

    .line 223
    :try_start_d
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 230
    :cond_a
    :goto_a
    if-eqz v8, :cond_2

    .line 231
    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_4

    .line 233
    :catch_5
    move-exception v0

    .line 234
    sget-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeAudio: could not close file stream:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 217
    :cond_b
    const/4 p1, -0x1

    goto :goto_9

    .line 225
    :catch_6
    move-exception v0

    .line 226
    sget-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeAudio: could not close asset path:\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 225
    :catch_7
    move-exception v1

    .line 226
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeAudio: could not close asset path:\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 233
    :catch_8
    move-exception v1

    .line 234
    sget-object v1, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeAudio: could not close file stream:\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 243
    :catch_9
    move-exception v0

    .line 244
    sget-object v0, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    const-string v1, "could not prepare audio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 176
    :catch_a
    move-exception v3

    goto/16 :goto_5
.end method


# virtual methods
.method public getCurrentPosition(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 338
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDuration(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 348
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 354
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0
.end method

.method public initAudio(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 112
    :cond_0
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    if-lt v0, v1, :cond_3

    .line 113
    const/4 v0, -0x1

    .line 117
    :cond_1
    :goto_1
    return v0

    .line 106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_3
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 117
    iget-boolean v1, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/apportable/media/AudioPlayer;->initializeAudio(I)I

    move-result v0

    goto :goto_1
.end method

.method public initAudioWithBuffer(Ljava/nio/ByteBuffer;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 123
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    if-ge v0, v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_2

    .line 129
    :cond_0
    iget v2, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    if-lt v0, v2, :cond_3

    .line 130
    const/4 v0, -0x1

    .line 157
    :cond_1
    :goto_1
    return v0

    .line 123
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v2

    .line 135
    iget-object v3, p0, Lcom/apportable/media/AudioPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    .line 136
    new-instance v4, Ljava/io/File;

    const-string v5, ".apportable_%d.snd"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    new-instance v5, Ljava/io/File;

    const-string v6, ".apportable_%d_.snd"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 142
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 146
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 149
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 156
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 157
    iget-boolean v1, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/apportable/media/AudioPlayer;->initializeAudio(I)I

    move-result v0

    goto :goto_1

    .line 150
    :catch_0
    move-exception v1

    .line 151
    :try_start_1
    sget-object v2, Lcom/apportable/media/AudioPlayer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initAudioWithBuffer:IOException writing to:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v5, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    throw v0
.end method

.method public isAudioPlaying(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 370
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 373
    :cond_1
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method lazyReleaseAudio(I)V
    .locals 1

    .prologue
    .line 284
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    if-nez v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    .line 289
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    invoke-direct {p0, p1}, Lcom/apportable/media/AudioPlayer;->_releaseAudio(I)V

    goto :goto_0
.end method

.method public lifecycleResume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 394
    move v0, v1

    .line 395
    :goto_0
    iget v2, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    if-ge v0, v2, :cond_1

    .line 396
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/apportable/media/AudioPlayerItem;->suspended:Z

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 399
    iget-object v2, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lcom/apportable/media/AudioPlayerItem;->suspended:Z

    .line 395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    :cond_1
    return-void
.end method

.method public lifecycleSuspend()V
    .locals 3

    .prologue
    .line 383
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/apportable/media/AudioPlayer;->MAX_SOURCES:I

    if-ge v0, v1, :cond_1

    .line 384
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 387
    iget-object v1, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/apportable/media/AudioPlayerItem;->suspended:Z

    .line 383
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_1
    return-void
.end method

.method public pauseAudio(I)V
    .locals 1

    .prologue
    .line 317
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public prepareAudio(I)V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public releaseAudio(I)V
    .locals 2

    .prologue
    .line 295
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    invoke-direct {p0, p1}, Lcom/apportable/media/AudioPlayer;->_releaseAudio(I)V

    .line 300
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSourcePaths:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    goto :goto_0
.end method

.method public seekTo(II)V
    .locals 1

    .prologue
    .line 328
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p2

    iput p1, v0, Lcom/apportable/media/AudioPlayerItem;->seekTarget:I

    .line 333
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0
.end method

.method public setNumberOfLoops(II)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 251
    if-ne p2, v2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p2

    iget-object v1, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setVolume(FFI)V
    .locals 1

    .prologue
    .line 359
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p3

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p3

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public startAudio(I)V
    .locals 1

    .prologue
    .line 271
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/apportable/media/AudioPlayer;->onDemandLoading:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    .line 275
    invoke-direct {p0, p1}, Lcom/apportable/media/AudioPlayer;->initializeAudio(I)I

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/apportable/media/AudioPlayer;->mSources:[Lcom/apportable/media/AudioPlayerItem;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/apportable/media/AudioPlayerItem;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method
