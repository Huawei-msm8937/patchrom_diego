.class public Lcom/android/server/display/HwCustAutomaticBrightnessController;
.super Ljava/lang/Object;
.source "HwCustAutomaticBrightnessController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected avoidScreenFlash()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method protected getLowLuxThreshhold()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    return v0
.end method
