.class public abstract Lcom/android/internal/telephony/AbstractPhoneSubInfoProxy;
.super Lcom/android/internal/telephony/IPhoneSubInfo$Stub;
.source "AbstractPhoneSubInfoProxy.java"


# static fields
.field public static final PERMISSION_DENIED_IMEI:Ljava/lang/String; = "000000000000000"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getPesn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->getPesn(Lcom/android/internal/telephony/AbstractPhoneSubInfoProxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReadPhoneNumberBlocked()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method
