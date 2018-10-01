.class public Lcom/android/server/wm/HwCustWindowManagerService;
.super Ljava/lang/Object;
.source "HwCustWindowManagerService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public isAllowMultiWinOrientation(Lcom/android/server/wm/AppWindowToken;Ljava/util/ArrayList;I)Z
    .locals 1
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;
    .param p3, "taskIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppWindowToken;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/Task;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isChargingAlbumType(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
