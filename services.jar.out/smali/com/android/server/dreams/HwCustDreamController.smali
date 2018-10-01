.class public Lcom/android/server/dreams/HwCustDreamController;
.super Ljava/lang/Object;
.source "HwCustDreamController.java"


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "dreamController"    # Lcom/android/server/dreams/DreamController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public startChargingAlbumDream(Landroid/os/Binder;Landroid/content/ComponentName;ZI)V
    .locals 0
    .param p1, "token"    # Landroid/os/Binder;
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "isTest"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 38
    return-void
.end method
