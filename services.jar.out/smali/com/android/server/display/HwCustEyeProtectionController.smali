.class public Lcom/android/server/display/HwCustEyeProtectionController;
.super Ljava/lang/Object;
.source "HwCustEyeProtectionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwEyeProtectionController"


# instance fields
.field protected mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "automaticBrightnessController"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/display/HwCustEyeProtectionController;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/server/display/HwCustEyeProtectionController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 34
    return-void
.end method


# virtual methods
.method public onScreenStateChanged(Z)V
    .locals 0
    .param p1, "powerStatus"    # Z

    .prologue
    .line 37
    return-void
.end method
