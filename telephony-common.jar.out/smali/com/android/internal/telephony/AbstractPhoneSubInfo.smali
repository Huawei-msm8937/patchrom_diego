.class public abstract Lcom/android/internal/telephony/AbstractPhoneSubInfo;
.super Ljava/lang/Object;
.source "AbstractPhoneSubInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPesn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->getPesn(Lcom/android/internal/telephony/AbstractPhoneSubInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
