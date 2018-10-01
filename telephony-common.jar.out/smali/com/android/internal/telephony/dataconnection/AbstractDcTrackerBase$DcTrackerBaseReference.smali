.class public interface abstract Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;
.super Ljava/lang/Object;
.source "AbstractDcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DcTrackerBaseReference"
.end annotation


# virtual methods
.method public abstract addIfacePhoneHashMap(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addIntentFilter(Landroid/content/IntentFilter;)V
.end method

.method public abstract beforeHandleMessage(Landroid/os/Message;)V
.end method

.method public abstract disableGoogleDunApn(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract disposeAddedIntent(Ljava/lang/String;)V
.end method

.method public abstract enableTcpUdpSumForDataStall()Z
.end method

.method public abstract fetchBipApn(Lcom/android/internal/telephony/dataconnection/ApnSetting;Ljava/util/ArrayList;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;)",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;"
        }
    .end annotation
.end method

.method public abstract get2gSlot()I
.end method

.method public abstract get4gSlot()I
.end method

.method public abstract getAnyDataEnabledByApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;Z)Z
.end method

.method public abstract getCTOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDataRoamingEnabledWithNational()Z
.end method

.method public abstract getDataRoamingScope()I
.end method

.method public abstract getDataRoamingSettingItem(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDefault4GSlotId()I
.end method

.method public abstract getDelayTime()I
.end method

.method public abstract getThisModemMobileRxPackets(Ljava/util/HashMap;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract getThisModemMobileTxPackets(Ljava/util/HashMap;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract getVSimSubId()I
.end method

.method public abstract handleCustMessage(Landroid/os/Message;)V
.end method

.method public abstract init()V
.end method

.method public abstract isActiveDataSubscription()Z
.end method

.method public abstract isApnPreset(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
.end method

.method public abstract isApnTypeDisabled(Ljava/lang/String;)Z
.end method

.method public abstract isBipApnType(Ljava/lang/String;)Z
.end method

.method public abstract isCTDualModeCard(I)Z
.end method

.method public abstract isCTSimCard(I)Z
.end method

.method public abstract isChinaTelecom(I)Z
.end method

.method public abstract isClearCodeEnabled()Z
.end method

.method public abstract isDataAllowedByApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
.end method

.method public abstract isDataAllowedByApnType(Ljava/lang/String;)Z
.end method

.method public abstract isDataAllowedForRoaming(Z)Z
.end method

.method public abstract isFullNetworkSupported()Z
.end method

.method public abstract isKddiMccMnc()Z
.end method

.method public abstract isNeedDataRoamingExpend()Z
.end method

.method public abstract isPingOk()Z
.end method

.method public abstract isPsAllowedByFdn()Z
.end method

.method public abstract makeHwApnSetting(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
.end method

.method public abstract needRemovedPreferredApn()Z
.end method

.method public abstract needRetryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
.end method

.method public abstract networkTypeToApnType(I)Ljava/lang/String;
.end method

.method public abstract noNeedDoRecovery(Ljava/util/concurrent/ConcurrentHashMap;)Z
.end method

.method public abstract onActionDataSwitch(II)V
.end method

.method public abstract onAllApnFirstActiveFailed()V
.end method

.method public abstract onAllApnPermActiveFailed()V
.end method

.method public abstract operateClearCodeProcess(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DcFailCause;I)V
.end method

.method public abstract processRoamingOff()Z
.end method

.method public abstract processRoamingOn()Z
.end method

.method public abstract registerForFdn()V
.end method

.method public abstract registerForFdnRecordsLoaded(Lcom/android/internal/telephony/uicc/IccRecords;)V
.end method

.method public abstract resetTryTimes()V
.end method

.method public abstract sendDSMipErrorBroadcast()V
.end method

.method public abstract sendRoamingDataStatusChangBroadcast()V
.end method

.method public abstract setAttachApn()V
.end method

.method public abstract setCurFailCause(Landroid/os/AsyncResult;)V
.end method

.method public abstract setDataRoamingScope(I)Z
.end method

.method public abstract setFirstTimeEnableData()V
.end method

.method public abstract setMPDNByNetWork(Ljava/lang/String;)V
.end method

.method public abstract setRetryAfterDisconnectedReason(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/dataconnection/DataConnection;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setupDataOnConnectableApns(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shouldDisableMultiPdps(Z)Z
.end method

.method public abstract startListenCellLocationChange()V
.end method

.method public abstract stopListenCellLocationChange()V
.end method

.method public abstract unregisterForFdn()V
.end method

.method public abstract unregisterForFdnRecordsLoaded(Lcom/android/internal/telephony/uicc/IccRecords;)V
.end method
