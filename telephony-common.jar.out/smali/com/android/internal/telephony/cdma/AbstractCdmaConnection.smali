.class public abstract Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;
.super Lcom/android/internal/telephony/Connection;
.source "AbstractCdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AbstractCdmaConnection"


# instance fields
.field isEncryptCall:Z

.field private mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 14
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwCdmaConnectionReference(Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;)Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;->isEncryptCall:Z

    .line 19
    return-void
.end method


# virtual methods
.method public compareToNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;->compareToNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRevFWIM()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;->hasRevFWIM()Z

    move-result v0

    return v0
.end method

.method public isEncryptCall()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;->isEncryptCall()Z

    move-result v0

    return v0
.end method

.method public onLineControlInfo()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;->onLineControlInfo()V

    .line 32
    return-void
.end method

.method public setEncryptCall(Z)V
    .locals 1
    .param p1, "isEncryptCall"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;->mReference:Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;->setEncryptCall(Z)V

    .line 46
    return-void
.end method
