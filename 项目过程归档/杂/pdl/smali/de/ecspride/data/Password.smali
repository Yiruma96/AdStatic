.class public Lde/ecspride/data/Password;
.super Ljava/lang/Object;
.source "Password.java"


# instance fields
.field private password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lde/ecspride/data/Password;->password:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lde/ecspride/data/Password;->password:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lde/ecspride/data/Password;->password:Ljava/lang/String;

    .line 16
    return-void
.end method
