.class public Lcom/android/server/dreams/HwCustDreamManagerService;
.super Ljava/lang/Object;
.source "HwCustDreamManagerService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public getChargingAlbumForUser(I)[Landroid/content/ComponentName;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public isChargingAlbumEnabled()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public isCoverOpened()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
