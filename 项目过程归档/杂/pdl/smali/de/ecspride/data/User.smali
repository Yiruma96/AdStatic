.class public Lde/ecspride/data/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private pwd:Lde/ecspride/data/Password;

.field private final username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lde/ecspride/data/User;->username:Ljava/lang/String;

    .line 9
    new-instance v0, Lde/ecspride/data/Password;

    invoke-direct {v0, p2}, Lde/ecspride/data/Password;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lde/ecspride/data/User;->pwd:Lde/ecspride/data/Password;

    .line 10
    return-void
.end method


# virtual methods
.method public getPwd()Lde/ecspride/data/Password;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lde/ecspride/data/User;->pwd:Lde/ecspride/data/Password;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lde/ecspride/data/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setPwd(Lde/ecspride/data/Password;)V
    .locals 0
    .param p1, "pwd"    # Lde/ecspride/data/Password;

    .prologue
    .line 17
    iput-object p1, p0, Lde/ecspride/data/User;->pwd:Lde/ecspride/data/Password;

    .line 18
    return-void
.end method
