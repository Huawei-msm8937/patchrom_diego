.class public interface abstract Landroid/hdm/HwDeviceManager$IHwDeviceManager;
.super Ljava/lang/Object;
.source "HwDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hdm/HwDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHwDeviceManager"
.end annotation


# virtual methods
.method public abstract getNetworkAccessWhitelist()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAdbDisabled()Z
.end method

.method public abstract isAdbOrSDCardInstallRestricted()Z
.end method

.method public abstract isAllowedInstallPackage(Ljava/lang/String;)Z
.end method

.method public abstract isBackButtonDisabled()Z
.end method

.method public abstract isBluetoothDisabled()Z
.end method

.method public abstract isChangeLauncherDisable()Z
.end method

.method public abstract isDisabledDeactivateMdmPackage(Ljava/lang/String;)Z
.end method

.method public abstract isDisallowedRunningApp(Ljava/lang/String;)Z
.end method

.method public abstract isDisallowedUninstallPackage(Ljava/lang/String;)Z
.end method

.method public abstract isGPSDisabled()Z
.end method

.method public abstract isHomeButtonDisabled()Z
.end method

.method public abstract isInstallSourceDisabled()Z
.end method

.method public abstract isIntentFromAllowedInstallSource(Landroid/content/Intent;)Z
.end method

.method public abstract isPersistentApp(Ljava/lang/String;)Z
.end method

.method public abstract isSafeModeDisabled()Z
.end method

.method public abstract isTaskButtonDisabled()Z
.end method

.method public abstract isUSBOtgDisabled()Z
.end method

.method public abstract isVoiceDisabled()Z
.end method

.method public abstract isWifiDisabled()Z
.end method
