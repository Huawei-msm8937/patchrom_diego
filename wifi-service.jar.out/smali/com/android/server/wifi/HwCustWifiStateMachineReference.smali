.class public Lcom/android/server/wifi/HwCustWifiStateMachineReference;
.super Ljava/lang/Object;
.source "HwCustWifiStateMachineReference.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHwCustCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHwCustWifiBand()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, -0x1

    return v0
.end method

.method public handleWifiAuthenticationFailureEvent(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    .line 26
    return-void
.end method

.method public isShowWifiAuthenticationFailurerNotification()Z
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public setHwCustCountryCode(Lcom/android/server/wifi/WifiNative;)Z
    .locals 1
    .param p1, "wn"    # Lcom/android/server/wifi/WifiNative;

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public setHwCustWifiBand(Lcom/android/server/wifi/WifiNative;Ljava/util/concurrent/atomic/AtomicInteger;)Z
    .locals 1
    .param p1, "wn"    # Lcom/android/server/wifi/WifiNative;
    .param p2, "fb"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
