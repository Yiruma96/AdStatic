.class Lcom/android/dx/dex/file/CodeItem$1;
.super Ljava/lang/Object;
.source "CodeItem.java"

# interfaces
.implements Lcom/android/dx/dex/code/DalvCode$AssignIndicesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dx/dex/file/CodeItem;->place0(Lcom/android/dx/dex/file/Section;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dx/dex/file/CodeItem;

.field final synthetic val$file:Lcom/android/dx/dex/file/DexFile;


# direct methods
.method constructor <init>(Lcom/android/dx/dex/file/CodeItem;Lcom/android/dx/dex/file/DexFile;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/dx/dex/file/CodeItem$1;->this$0:Lcom/android/dx/dex/file/CodeItem;

    iput-object p2, p0, Lcom/android/dx/dex/file/CodeItem$1;->val$file:Lcom/android/dx/dex/file/DexFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Lcom/android/dx/rop/cst/Constant;)I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/dx/dex/file/CodeItem$1;->val$file:Lcom/android/dx/dex/file/DexFile;

    invoke-virtual {v0, p1}, Lcom/android/dx/dex/file/DexFile;->findItemOrNull(Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/dex/file/IndexedItem;

    move-result-object v0

    .line 203
    if-nez v0, :cond_0

    .line 204
    const/4 v0, -0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/dx/dex/file/IndexedItem;->getIndex()I

    move-result v0

    goto :goto_0
.end method
