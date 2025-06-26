.class public Lcom/apportable/plusgames/PlusGamesManager$AchievementUpdateListener;
.super Ljava/lang/Object;
.source "PlusGamesManager.java"

# interfaces
.implements Lcom/google/android/gms/games/achievement/OnAchievementUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apportable/plusgames/PlusGamesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AchievementUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apportable/plusgames/PlusGamesManager;


# direct methods
.method public constructor <init>(Lcom/apportable/plusgames/PlusGamesManager;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/apportable/plusgames/PlusGamesManager$AchievementUpdateListener;->this$0:Lcom/apportable/plusgames/PlusGamesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onAchievementUpdated(ILjava/lang/String;)V
.end method

.method public native onError(ILjava/lang/String;)V
.end method
