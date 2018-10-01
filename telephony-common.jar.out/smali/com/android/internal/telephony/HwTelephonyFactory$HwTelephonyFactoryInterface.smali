.class public interface abstract Lcom/android/internal/telephony/HwTelephonyFactory$HwTelephonyFactoryInterface;
.super Ljava/lang/Object;
.source "HwTelephonyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HwTelephonyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HwTelephonyFactoryInterface"
.end annotation


# virtual methods
.method public abstract getHwDataConnectionManager()Lcom/android/internal/telephony/HwDataConnectionManager;
.end method

.method public abstract getHwDataServiceChrManager()Lcom/android/internal/telephony/HwDataServiceChrManager;
.end method

.method public abstract getHwInnerSmsManager()Lcom/android/internal/telephony/HwInnerSmsManager;
.end method

.method public abstract getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;
.end method

.method public abstract getHwNetworkManager()Lcom/android/internal/telephony/HwNetworkManager;
.end method

.method public abstract getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;
.end method

.method public abstract getHwSubInfoProxy(Landroid/content/Context;Lcom/android/internal/telephony/PhoneSubInfo;)Lcom/android/internal/telephony/PhoneSubInfoProxy;
.end method

.method public abstract getHwTelephonyBaseManager()Lcom/android/internal/telephony/HwTelephonyBaseManager;
.end method

.method public abstract getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;
.end method

.method public abstract getHwVolteChrManager()Lcom/android/internal/telephony/HwVolteChrManager;
.end method
