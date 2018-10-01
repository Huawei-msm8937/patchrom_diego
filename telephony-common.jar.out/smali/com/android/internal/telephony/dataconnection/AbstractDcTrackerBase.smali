.class public abstract Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;
.super Landroid/os/Handler;
.source "AbstractDcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;
    }
.end annotation


# instance fields
.field protected INTELLIGENT_DATA_SWITCH_CONFIG:Z

.field protected mIntelligentDataSwitchIsOn:Z

.field mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwDataConnectionManager()Lcom/android/internal/telephony/HwDataConnectionManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwDataConnectionManager;->createHwDcTrackerBaseReference(Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;)Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mIntelligentDataSwitchIsOn:Z

    .line 67
    return-void
.end method


# virtual methods
.method public addIfacePhoneHashMap(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "dcac"    # Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;
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

    .prologue
    .line 441
    .local p2, "mIfacePhoneHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->addIfacePhoneHashMap(Lcom/android/internal/telephony/dataconnection/DcAsyncChannel;Ljava/util/HashMap;)V

    .line 442
    return-void
.end method

.method public addIntentFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->addIntentFilter(Landroid/content/IntentFilter;)V

    .line 457
    return-void
.end method

.method protected beforeHandleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->beforeHandleMessage(Landroid/os/Message;)V

    .line 200
    return-void
.end method

.method public disableGoogleDunApn(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "apnData"    # Ljava/lang/String;
    .param p3, "dunSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->disableGoogleDunApn(Landroid/content/Context;Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnSetting;)V

    .line 250
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->dispose()V

    .line 292
    return-void
.end method

.method public disposeAddedIntent(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->disposeAddedIntent(Ljava/lang/String;)V

    .line 460
    return-void
.end method

.method public enableTcpUdpSumForDataStall()Z
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->enableTcpUdpSumForDataStall()Z

    move-result v0

    return v0
.end method

.method protected fetchBipApn(Lcom/android/internal/telephony/dataconnection/ApnSetting;Ljava/util/ArrayList;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1
    .param p1, "preferredApn"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;
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

    .prologue
    .line 273
    .local p2, "allApnSettings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->fetchBipApn(Lcom/android/internal/telephony/dataconnection/ApnSetting;Ljava/util/ArrayList;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method protected get2gSlot()I
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->get2gSlot()I

    move-result v0

    return v0
.end method

.method protected get4gSlot()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->get4gSlot()I

    move-result v0

    return v0
.end method

.method protected getAnyDataEnabledByApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;Z)Z
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "enable"    # Z

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getAnyDataEnabledByApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;Z)Z

    move-result v0

    return v0
.end method

.method public getCTOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getCTOperatorNumeric(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabledWithNational()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getDataRoamingEnabledWithNational()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingScope()I
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getDataRoamingScope()I

    move-result v0

    return v0
.end method

.method public getDataRoamingSettingItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "originItem"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getDataRoamingSettingItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefault4GSlotId()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getDefault4GSlotId()I

    move-result v0

    return v0
.end method

.method public getDelayTime()I
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getDelayTime()I

    move-result v0

    return v0
.end method

.method public getThisModemMobileRxPackets(Ljava/util/HashMap;)J
    .locals 2
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

    .prologue
    .line 438
    .local p1, "mIfacePhoneHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getThisModemMobileRxPackets(Ljava/util/HashMap;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThisModemMobileTxPackets(Ljava/util/HashMap;)J
    .locals 2
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

    .prologue
    .line 435
    .local p1, "mIfacePhoneHashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getThisModemMobileTxPackets(Ljava/util/HashMap;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getVSimSubId()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->getVSimSubId()I

    move-result v0

    return v0
.end method

.method public handleCustMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->handleCustMessage(Landroid/os/Message;)V

    .line 405
    return-void
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->init()V

    .line 196
    return-void
.end method

.method public isActiveDataSubscription()Z
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isActiveDataSubscription()Z

    move-result v0

    return v0
.end method

.method public isApnPreset(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z
    .locals 1
    .param p1, "apnSetting"    # Lcom/android/internal/telephony/dataconnection/ApnSetting;

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isApnPreset(Lcom/android/internal/telephony/dataconnection/ApnSetting;)Z

    move-result v0

    return v0
.end method

.method public isApnTypeDisabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isApnTypeDisabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isBipApnType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isBipApnType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isCTDualModeCard(I)Z
    .locals 1
    .param p1, "sub"    # I

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isCTDualModeCard(I)Z

    move-result v0

    return v0
.end method

.method public isCTSimCard(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isCTSimCard(I)Z

    move-result v0

    return v0
.end method

.method public isChinaTelecom(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isChinaTelecom(I)Z

    move-result v0

    return v0
.end method

.method public isClearCodeEnabled()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isClearCodeEnabled()Z

    move-result v0

    return v0
.end method

.method protected isDataAllowed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0, v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->isDataAllowed(ZZ)Z

    move-result v0

    return v0
.end method

.method public isDataAllowed(Z)Z
    .locals 1
    .param p1, "isMms"    # Z

    .prologue
    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->isDataAllowed(ZZ)Z

    move-result v0

    return v0
.end method

.method public isDataAllowed(ZZ)Z
    .locals 1
    .param p1, "isMms"    # Z
    .param p2, "isUserEnable"    # Z

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method protected isDataAllowedByApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isDataAllowedByApnContext(Lcom/android/internal/telephony/dataconnection/ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected isDataAllowedByApnType(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isDataAllowedByApnType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isDataAllowedForRoaming(Z)Z
    .locals 1
    .param p1, "isMms"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isDataAllowedForRoaming(Z)Z

    move-result v0

    return v0
.end method

.method public isFullNetworkSupported()Z
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isFullNetworkSupported()Z

    move-result v0

    return v0
.end method

.method public isKddiMccMnc()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isKddiMccMnc()Z

    move-result v0

    return v0
.end method

.method public isNeedDataRoamingExpend()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isNeedDataRoamingExpend()Z

    move-result v0

    return v0
.end method

.method public isPingOk()Z
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isPingOk()Z

    move-result v0

    return v0
.end method

.method public isPsAllowedByFdn()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->isPsAllowedByFdn()Z

    move-result v0

    return v0
.end method

.method public makeHwApnSetting(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "types"    # [Ljava/lang/String;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->makeHwApnSetting(Landroid/database/Cursor;[Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v0

    return-object v0
.end method

.method protected needRemovedPreferredApn()Z
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->needRemovedPreferredApn()Z

    move-result v0

    return v0
.end method

.method public needRetryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z
    .locals 1
    .param p1, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->needRetryAfterDisconnected(Lcom/android/internal/telephony/dataconnection/DcFailCause;)Z

    move-result v0

    return v0
.end method

.method public networkTypeToApnType(I)Ljava/lang/String;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public noNeedDoRecovery(Ljava/util/concurrent/ConcurrentHashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/dataconnection/ApnContext;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "mApnContexts":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->noNeedDoRecovery(Ljava/util/concurrent/ConcurrentHashMap;)Z

    move-result v0

    return v0
.end method

.method public onActionDataSwitch(II)V
    .locals 1
    .param p1, "currRecoveryAction"    # I
    .param p2, "nextAction"    # I

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->onActionDataSwitch(II)V

    .line 454
    return-void
.end method

.method protected onAllApnFirstActiveFailed()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->onAllApnFirstActiveFailed()V

    .line 231
    return-void
.end method

.method protected onAllApnPermActiveFailed()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->onAllApnPermActiveFailed()V

    .line 235
    return-void
.end method

.method public operateClearCodeProcess(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DcFailCause;I)V
    .locals 1
    .param p1, "apnContext"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "cause"    # Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .param p3, "delay"    # I

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->operateClearCodeProcess(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/DcFailCause;I)V

    .line 380
    return-void
.end method

.method public processRoamingOff()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->processRoamingOff()Z

    move-result v0

    return v0
.end method

.method public processRoamingOn()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->processRoamingOn()Z

    move-result v0

    return v0
.end method

.method public registerForFdn()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->registerForFdn()V

    .line 394
    return-void
.end method

.method public registerForFdnRecordsLoaded(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 1
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->registerForFdnRecordsLoaded(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 409
    return-void
.end method

.method public resetTryTimes()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->resetTryTimes()V

    .line 376
    return-void
.end method

.method public sendDSMipErrorBroadcast()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->sendDSMipErrorBroadcast()V

    .line 470
    return-void
.end method

.method public sendRoamingDataStatusChangBroadcast()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->sendRoamingDataStatusChangBroadcast()V

    .line 465
    return-void
.end method

.method public setAttachApn()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->setAttachApn()V

    .line 284
    return-void
.end method

.method public setCurFailCause(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->setCurFailCause(Landroid/os/AsyncResult;)V

    .line 385
    return-void
.end method

.method public setDataRoamingScope(I)Z
    .locals 1
    .param p1, "scope"    # I

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->setDataRoamingScope(I)Z

    move-result v0

    return v0
.end method

.method protected setEnabled(IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 317
    return-void
.end method

.method public setEnabledPublic(IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 320
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->setEnabled(IZ)V

    .line 321
    return-void
.end method

.method protected setFirstTimeEnableData()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->setFirstTimeEnableData()V

    .line 239
    return-void
.end method

.method public setMPDNByNetWork(Ljava/lang/String;)V
    .locals 1
    .param p1, "plmnNetWork"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->setMPDNByNetWork(Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public setRetryAfterDisconnectedReason(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "dc"    # Lcom/android/internal/telephony/dataconnection/DataConnection;
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

    .prologue
    .line 336
    .local p2, "apnsToCleanup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnContext;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->setRetryAfterDisconnectedReason(Lcom/android/internal/telephony/dataconnection/DataConnection;Ljava/util/ArrayList;)V

    .line 337
    return-void
.end method

.method public setupDataOnConnectableApns(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "excludedApnType"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->setupDataOnConnectableApns(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method public shouldDisableMultiPdps(Z)Z
    .locals 1
    .param p1, "onlySingleDcAllowed"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->shouldDisableMultiPdps(Z)Z

    move-result v0

    return v0
.end method

.method public startListenCellLocationChange()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->startListenCellLocationChange()V

    .line 368
    return-void
.end method

.method public stopListenCellLocationChange()V
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->stopListenCellLocationChange()V

    .line 372
    return-void
.end method

.method public unregisterForFdn()V
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->unregisterForFdn()V

    .line 397
    return-void
.end method

.method public unregisterForFdnRecordsLoaded(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 1
    .param p1, "r"    # Lcom/android/internal/telephony/uicc/IccRecords;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase;->mReference:Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/dataconnection/AbstractDcTrackerBase$DcTrackerBaseReference;->unregisterForFdnRecordsLoaded(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 413
    return-void
.end method
