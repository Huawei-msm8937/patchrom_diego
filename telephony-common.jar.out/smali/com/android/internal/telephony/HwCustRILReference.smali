.class public Lcom/android/internal/telephony/HwCustRILReference;
.super Ljava/lang/Object;
.source "HwCustRILReference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public custCorrectApnAuth(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "authType"    # I
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getTwoSimNwUnlockStatus(Landroid/os/Message;Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "aRil"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 47
    return-void
.end method

.method public handleDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "netpin1"    # Ljava/lang/String;
    .param p2, "netpin2"    # Ljava/lang/String;
    .param p3, "result"    # Landroid/os/Message;
    .param p4, "aRil"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 36
    return-void
.end method

.method public isCustCorrectApnAuthOn()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public processSolicitedCustEx(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "rilRequest"    # I
    .param p2, "p"    # Landroid/os/Parcel;

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetSimNwLockRetryCount(Landroid/os/Message;Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "aRil"    # Lcom/android/internal/telephony/RIL;

    .prologue
    .line 55
    return-void
.end method
