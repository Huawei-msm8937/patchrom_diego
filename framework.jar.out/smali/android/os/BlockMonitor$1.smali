.class final Landroid/os/BlockMonitor$1;
.super Ljava/lang/Object;
.source "BlockMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/BlockMonitor;->checkMessageCount(Landroid/os/MessageQueue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/BlockMonitor$MessageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/os/BlockMonitor$MessageInfo;Landroid/os/BlockMonitor$MessageInfo;)I
    .locals 2
    .param p1, "info1"    # Landroid/os/BlockMonitor$MessageInfo;
    .param p2, "info2"    # Landroid/os/BlockMonitor$MessageInfo;

    .prologue
    .line 223
    iget v0, p1, Landroid/os/BlockMonitor$MessageInfo;->mCount:I

    iget v1, p2, Landroid/os/BlockMonitor$MessageInfo;->mCount:I

    if-ge v0, v1, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 228
    :goto_0
    return v0

    .line 225
    :cond_0
    iget v0, p1, Landroid/os/BlockMonitor$MessageInfo;->mCount:I

    iget v1, p2, Landroid/os/BlockMonitor$MessageInfo;->mCount:I

    if-le v0, v1, :cond_1

    .line 226
    const/4 v0, -0x1

    goto :goto_0

    .line 228
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 220
    check-cast p1, Landroid/os/BlockMonitor$MessageInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/os/BlockMonitor$MessageInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/BlockMonitor$1;->compare(Landroid/os/BlockMonitor$MessageInfo;Landroid/os/BlockMonitor$MessageInfo;)I

    move-result v0

    return v0
.end method
