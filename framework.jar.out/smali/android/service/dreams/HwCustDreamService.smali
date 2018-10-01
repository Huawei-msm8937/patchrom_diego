.class public Landroid/service/dreams/HwCustDreamService;
.super Ljava/lang/Object;
.source "HwCustDreamService.java"


# direct methods
.method public constructor <init>(Landroid/service/dreams/DreamService;)V
    .locals 0
    .param p1, "service"    # Landroid/service/dreams/DreamService;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public enableChargingAlbum()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public isChargingAlbumEnabled()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public setAlbumLayoutParams(Landroid/view/WindowManager$LayoutParams;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 33
    return-void
.end method
