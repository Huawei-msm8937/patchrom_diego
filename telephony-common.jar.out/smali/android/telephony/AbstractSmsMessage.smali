.class public Landroid/telephony/AbstractSmsMessage;
.super Ljava/lang/Object;
.source "AbstractSmsMessage.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "AbstractSmsMessage"

.field protected static final SUBSCRIPTION_FOR_NONE_VARIABLE_METHODS:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerSmsManager()Lcom/android/internal/telephony/HwInnerSmsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwInnerSmsManager;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static handleMSimBySubscrition(I)Z
    .locals 1
    .param p0, "subscription"    # I

    .prologue
    .line 45
    const/4 v0, -0x1

    if-eq v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCdmaVoice()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerSmsManager()Lcom/android/internal/telephony/HwInnerSmsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwInnerSmsManager;->isCdmaVoice()Z

    move-result v0

    return v0
.end method

.method public static isCdmaVoiceBySubscrition(I)Z
    .locals 1
    .param p0, "subscription"    # I

    .prologue
    .line 50
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useCdmaFormatForMoSms()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerSmsManager()Lcom/android/internal/telephony/HwInnerSmsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwInnerSmsManager;->useCdmaFormatForMoSms()Z

    move-result v0

    return v0
.end method
