.class public interface abstract Lcom/android/internal/telephony/HwDataConnectionManager;
.super Ljava/lang/Object;
.source "HwDataConnectionManager.java"


# virtual methods
.method public abstract createHwDcTrackerBaseReference(Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;)Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;
.end method

.method public abstract createHwDctControllerReference(Lcom/android/internal/telephony/dataconnection/AbsDctController;)Lcom/android/internal/telephony/dataconnection/AbsDctController$DctControllerReference;
.end method

.method public abstract createIntelligentDataSwitch(Landroid/content/Context;)V
.end method

.method public abstract makeStaticDctControllerHw([Lcom/android/internal/telephony/PhoneProxy;Landroid/os/Looper;)V
.end method

.method public abstract needSetUserDataEnabled(Z)Z
.end method
