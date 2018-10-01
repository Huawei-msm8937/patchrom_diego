.class public interface abstract Lcom/android/internal/telephony/HwUiccManager;
.super Ljava/lang/Object;
.source "HwUiccManager.java"


# static fields
.field public static final C3:Ljava/lang/String; = "0675B95BE3EC0353DDE5C41F4E022588"

.field public static final useHwAdnEecode:Z = true


# virtual methods
.method public abstract adnStringFieldToStringForSTK([BII)Ljava/lang/String;
.end method

.method public abstract arrayCompareNullEqualsEmpty([Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract bcdIccidToString([BII)Ljava/lang/String;
.end method

.method public abstract buildAdnStringHw(ILjava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract createHwAdnRecordCache(Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/uicc/AdnRecordCache;
.end method

.method public abstract createHwCatCmdMessage(Landroid/os/Parcel;)Lcom/android/internal/telephony/cat/CatCmdMessage;
.end method

.method public abstract createHwCatCmdMessage(Lcom/android/internal/telephony/cat/CommandParams;)Lcom/android/internal/telephony/cat/CatCmdMessage;
.end method

.method public abstract createHwCatServiceReference()Lcom/android/internal/telephony/cat/AbstractCatService$CatServiceReference;
.end method

.method public abstract createHwCommandParamsFactoryReference(Ljava/lang/Object;)Lcom/android/internal/telephony/cat/AbstractCommandParamsFactory$CommandParamsFactoryReference;
.end method

.method public abstract createHwIccCardProxyReference(Lcom/android/internal/telephony/uicc/AbstractIccCardProxy;)Lcom/android/internal/telephony/uicc/AbstractIccCardProxy$IccCardProxyReference;
.end method

.method public abstract createHwIccFileHandlerReference(Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;)Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;
.end method

.method public abstract createHwIccPhoneBookInterfaceManagerProxy(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;
.end method

.method public abstract createHwIccPhoneBookInterfaceManagerReference(Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager;)Lcom/android/internal/telephony/AbstractIccPhoneBookInterfaceManager$IccPhoneBookInterfaceManagerReference;
.end method

.method public abstract createHwRuimPhoneBookInterfaceManager(Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;
.end method

.method public abstract createHwRuimRecords(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/RuimRecords;
.end method

.method public abstract createHwSIMRecords(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/SIMRecords;
.end method

.method public abstract createHwSimPhoneBookInterfaceManager(Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;
.end method

.method public abstract createHwSubscriptionControllerReference(Lcom/android/internal/telephony/AbstractSubscriptionController;)Lcom/android/internal/telephony/AbstractSubscriptionController$SubscriptionControllerReference;
.end method

.method public abstract createHwSubscriptionInfoUpdaterReference(Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;)Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;
.end method

.method public abstract createHwUiccCardReference(Lcom/android/internal/telephony/uicc/AbstractUiccCard;)Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;
.end method

.method public abstract createHwUiccControllerReference(Lcom/android/internal/telephony/uicc/AbstractUiccController;)Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;
.end method

.method public abstract createHwUiccPhoneBookController([Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/UiccPhoneBookController;
.end method

.method public abstract createHwUiccSmsController([Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/UiccSmsController;
.end method

.method public abstract createHwUsimPhoneBookManager(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end method

.method public abstract createHwUsimPhoneBookManagerEmailAnr(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end method

.method public abstract createHwVoiceMailConstants(Landroid/content/Context;I)Ljava/lang/Object;
.end method

.method public abstract createSimAddDialog(Landroid/content/Context;ZI)Landroid/app/AlertDialog;
.end method

.method public abstract getAlphaTagEncodingLength(Ljava/lang/String;)I
.end method

.method public abstract getCommrilMode()Z
.end method

.method public abstract getSwitchTag()Z
.end method

.method public abstract getSwitchingSlot()Z
.end method

.method public abstract getUserSwitchSlots()I
.end method

.method public abstract getVoiceMailFileReader()Ljava/io/FileReader;
.end method

.method public abstract initHwAllInOneController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end method

.method public abstract initHwDsdsController(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end method

.method public abstract initHwFullNetwork(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end method

.method public abstract initHwModemBindingPolicyHandler(Landroid/content/Context;Lcom/android/internal/telephony/uicc/AbstractUiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
.end method

.method public abstract initHwModemStackController(Landroid/content/Context;Lcom/android/internal/telephony/uicc/AbstractUiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
.end method

.method public abstract initHwSubscriptionManager(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
.end method

.method public abstract initUiccCard(Lcom/android/internal/telephony/uicc/AbstractUiccCard;Lcom/android/internal/telephony/uicc/IccCardStatus;Ljava/lang/Integer;)V
.end method

.method public abstract isContainZeros([BIII)Z
.end method

.method public abstract isFullNetworkSupported()Z
.end method

.method public abstract isHotswapSupported()Z
.end method

.method public abstract isHwSimPhonebookEnabled()Z
.end method

.method public abstract isRestartingRild()Z
.end method

.method public abstract isUsingHwSubIdDesign()Z
.end method

.method public abstract onGetIccStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
.end method

.method public abstract powerUpRadioIfhasCard(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface$RadioState;Lcom/android/internal/telephony/CommandsInterface$RadioState;Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
.end method

.method public abstract registerDSDSAutoModemSetChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSubscriptionActivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSubscriptionDeactivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract setPreferredNetworkType(IILandroid/os/Message;)V
.end method

.method public abstract simContactsDelete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract simContactsDeleteMSim(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract simContactsGetType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract simContactsGetTypeMsim(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract simContactsInsert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract simContactsInsertMSim(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract simContactsQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract simContactsQueryMSim(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract simContactsUpdate(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract simContactsUpdateMSim(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract uiccHwdsdsNeedSetActiveMode()Z
.end method

.method public abstract unregisterDSDSAutoModemSetChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForIccChanged(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSubscriptionActivatedOnSlot(ILandroid/os/Handler;)V
.end method

.method public abstract unregisterForSubscriptionDeactivatedOnSlot(ILandroid/os/Handler;)V
.end method

.method public abstract updateAnrEmailArrayHelper([Ljava/lang/String;[Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract updateDataSlot()V
.end method

.method public abstract updateSlotIccId(Ljava/lang/String;)V
.end method

.method public abstract updateUiccCard(Lcom/android/internal/telephony/uicc/AbstractUiccCard;Lcom/android/internal/telephony/uicc/IccCardStatus;Ljava/lang/Integer;)V
.end method

.method public abstract updateUserPreferences(Z)V
.end method
