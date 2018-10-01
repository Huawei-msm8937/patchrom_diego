.class public Landroid/telephony/SubscriptionManager;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field public static final ACTIVE:I = 0x1

.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field public static final CB_ALERT_REMINDER_INTERVAL:Ljava/lang/String; = "alert_reminder_interval"

.field public static final CB_ALERT_SOUND_DURATION:Ljava/lang/String; = "alert_sound_duration"

.field public static final CB_ALERT_SPEECH:Ljava/lang/String; = "enable_alert_speech"

.field public static final CB_ALERT_VIBRATE:Ljava/lang/String; = "enable_alert_vibrate"

.field public static final CB_AMBER_ALERT:Ljava/lang/String; = "enable_cmas_amber_alerts"

.field public static final CB_CHANNEL_50_ALERT:Ljava/lang/String; = "enable_channel_50_alerts"

.field public static final CB_CMAS_TEST_ALERT:Ljava/lang/String; = "enable_cmas_test_alerts"

.field public static final CB_EMERGENCY_ALERT:Ljava/lang/String; = "enable_emergency_alerts"

.field public static final CB_ETWS_TEST_ALERT:Ljava/lang/String; = "enable_etws_test_alerts"

.field public static final CB_EXTREME_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_extreme_threat_alerts"

.field public static final CB_OPT_OUT_DIALOG:Ljava/lang/String; = "show_cmas_opt_out_dialog"

.field public static final CB_SEVERE_THREAT_ALERT:Ljava/lang/String; = "enable_cmas_severe_threat_alerts"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLOR_1:I = 0x0

.field public static final COLOR_2:I = 0x1

.field public static final COLOR_3:I = 0x2

.field public static final COLOR_4:I = 0x3

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field public static final DATA_ROAMING_DEFAULT:I = 0x0

.field public static final DATA_ROAMING_DISABLE:I = 0x0

.field public static final DATA_ROAMING_ENABLE:I = 0x1

.field private static final DBG:Z = false

.field public static final DEFAULT_NAME_RES:I = 0x104000e

.field public static final DEFAULT_NW_MODE:I = -0x1

.field public static final DEFAULT_PHONE_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SIM_SLOT_INDEX:I = 0x7fffffff

.field public static final DEFAULT_SUBSCRIPTION_ID:I = 0x7fffffff

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NUMBER_DEFAULT:I = 0x1

.field public static final DISPLAY_NUMBER_FIRST:I = 0x1

.field public static final DISPLAY_NUMBER_FORMAT:Ljava/lang/String; = "display_number_format"

.field public static final DISPLAY_NUMBER_LAST:I = 0x2

.field public static final DISPLAY_NUMBER_NONE:I = 0x0

.field public static final DUMMY_SUBSCRIPTION_ID_BASE:I = -0x2

.field public static final EXTRA_VALUE_NOCHANGE:I = 0x4

.field public static final ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final INACTIVE:I = 0x0

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INVALID_PHONE_INDEX:I = -0x1

.field public static final INVALID_SIM_SLOT_INDEX:I = -0x1

.field public static final INVALID_SLOT_ID:I = -0x3e8

.field public static final INVALID_SUBSCRIPTION_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionManager"

.field public static final MAX_SUBSCRIPTION_ID_VALUE:I = 0x7ffffffe

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MIN_SUBSCRIPTION_ID_VALUE:I = 0x0

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME_SOURCE:Ljava/lang/String; = "name_source"

.field public static final NAME_SOURCE_DEFAULT_SOURCE:I = 0x0

.field public static final NAME_SOURCE_SIM_SOURCE:I = 0x1

.field public static final NAME_SOURCE_UNDEFINDED:I = -0x1

.field public static final NAME_SOURCE_USER_INPUT:I = 0x2

.field public static final NETWORK_MODE:Ljava/lang/String; = "network_mode"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final SIM_NOT_INSERTED:I = -0x1

.field public static final SIM_SLOT_INDEX:Ljava/lang/String; = "sim_id"

.field public static final SUB_CONFIGURATION_IN_PROGRESS:I = 0x2

.field public static final SUB_DEFAULT_CHANGED_ACTION:Ljava/lang/String; = "android.intent.action.SUB_DEFAULT_CHANGED"

.field public static final SUB_STATE:Ljava/lang/String; = "sub_state"

.field public static final UNIQUE_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "_id"

.field private static final VDBG:Z = true


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    iput-object p1, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    .line 419
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 430
    const-string/jumbo v0, "telephony_subscription_service"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method public static getBooleanSubscriptionProperty(ILjava/lang/String;ZLandroid/content/Context;)Z
    .locals 4
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 1294
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1295
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1297
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1302
    :goto_0
    return v2

    .line 1297
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1298
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .end local v0    # "err":Ljava/lang/NumberFormatException;
    :cond_1
    move v2, p2

    .line 1302
    goto :goto_0
.end method

.method public static getDefaultDataSubId()I
    .locals 4

    .prologue
    .line 1039
    const/4 v1, -0x1

    .line 1042
    .local v1, "subId":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1043
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1044
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultDataSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1050
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultDataSubId, sub id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1051
    return v1

    .line 1046
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultSmsSubId()I
    .locals 4

    .prologue
    .line 999
    const/4 v1, -0x1

    .line 1002
    .local v1, "subId":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1003
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1004
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSmsSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1010
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultSmsSubId, sub id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1011
    return v1

    .line 1006
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultSubId()I
    .locals 4

    .prologue
    .line 937
    const/4 v1, -0x1

    .line 940
    .local v1, "subId":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 941
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 942
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 948
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 949
    return v1

    .line 944
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getDefaultVoicePhoneId()I
    .locals 1

    .prologue
    .line 989
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public static getDefaultVoiceSubId()I
    .locals 4

    .prologue
    .line 954
    const/4 v1, -0x1

    .line 957
    .local v1, "subId":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 958
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 959
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getDefaultVoiceSubId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 965
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultVoiceSubId, sub id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 966
    return v1

    .line 961
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getIntegerSubscriptionProperty(ILjava/lang/String;ILandroid/content/Context;)I
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1315
    invoke-static {p0, p1, p3}, Landroid/telephony/SubscriptionManager;->getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1318
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 1323
    .end local p2    # "defValue":I
    :cond_0
    :goto_0
    return p2

    .line 1319
    .restart local p2    # "defValue":I
    :catch_0
    move-exception v0

    .line 1320
    .local v0, "err":Ljava/lang/NumberFormatException;
    const-string v2, "getBooleanSubscriptionProperty NumberFormat exception"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPhoneId(I)I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 903
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 907
    const/4 v1, -0x1

    .line 922
    :goto_0
    return v1

    .line 910
    :cond_0
    const/4 v1, -0x1

    .line 913
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 914
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 915
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getPhoneId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 921
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getPhoneId]- phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 917
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .prologue
    .line 1334
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 1337
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1338
    .local v0, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 1339
    .local v2, "newConfig":Landroid/content/res/Configuration;
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1340
    if-eqz v4, :cond_0

    .line 1341
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mcc:I

    .line 1342
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v5

    iput v5, v2, Landroid/content/res/Configuration;->mnc:I

    .line 1344
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 1345
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1346
    .local v3, "newMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v3, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 1347
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v3, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v5
.end method

.method public static getSimStateForSlotIdx(I)I
    .locals 4
    .param p0, "slotIdx"    # I

    .prologue
    .line 1231
    const/4 v1, 0x0

    .line 1234
    .local v1, "simState":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1235
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1236
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSimStateForSlotIdx(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1240
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimStateForSubscriber: simState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1241
    return v1

    .line 1238
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSlotId(I)I
    .locals 3
    .param p0, "subId"    # I

    .prologue
    .line 859
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 865
    :cond_0
    const/4 v1, -0x1

    .line 868
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 869
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 870
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSlotId(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 876
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_1
    :goto_0
    return v1

    .line 872
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getSubId(I)[I
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    .line 882
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 883
    const-string v2, "[getSubId]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 884
    const/4 v1, 0x0

    .line 898
    :cond_0
    :goto_0
    return-object v1

    .line 887
    :cond_1
    const/4 v1, 0x0

    .line 890
    .local v1, "subId":[I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 891
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 892
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/ISub;->getSubId(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 894
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static getSubscriptionProperty(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1271
    const/4 v1, 0x0

    .line 1273
    .local v1, "resultValue":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1274
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1275
    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p0, p1, v2}, Lcom/android/internal/telephony/ISub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1281
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-object v1

    .line 1278
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isUsableSubIdValue(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 1137
    if-ltz p0, :cond_0

    const v0, 0x7ffffffe

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneId(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .prologue
    .line 1147
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSlotId(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 1142
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidSubscriptionId(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 1128
    const/4 v0, -0x1

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 927
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    return-void
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I

    .prologue
    .line 1152
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 1153
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1154
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-static {p0, p1, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V

    .line 1158
    :goto_0
    return-void

    .line 1156
    :cond_0
    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: no valid subs"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static putPhoneIdAndSubIdExtra(Landroid/content/Intent;II)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "phoneId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putPhoneIdAndSubIdExtra: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1163
    const-string/jumbo v0, "subscription"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1164
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1167
    const-string/jumbo v0, "slot"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1168
    return-void
.end method

.method public static setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "subId"    # I
    .param p1, "propKey"    # Ljava/lang/String;
    .param p2, "propValue"    # Ljava/lang/String;

    .prologue
    .line 1253
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1254
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1255
    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/ISub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1260
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1257
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 443
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 453
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_0

    .line 454
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->addOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    .line 443
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string v0, "<unknown>"

    goto :goto_0

    .line 456
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public addSubscriptionInfoRecord(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[addSubscriptionInfoRecord]+ iccId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slotId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 700
    if-nez p1, :cond_0

    .line 701
    const-string v1, "[addSubscriptionInfoRecord]- null iccId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 703
    :cond_0
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 704
    const-string v1, "[addSubscriptionInfoRecord]- invalid slotId"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 708
    :cond_1
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 709
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_2

    .line 711
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->addSubInfoRecord(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 713
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public allDefaultsSelected()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1094
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1103
    :cond_0
    :goto_0
    return v0

    .line 1097
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1100
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearDefaultsForInactiveSubIds()V
    .locals 2

    .prologue
    .line 1112
    const-string v1, "clearDefaultsForInactiveSubIds"

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1114
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1115
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1116
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearDefaultsForInactiveSubIds()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1118
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public clearSubscriptionInfo()V
    .locals 2

    .prologue
    .line 1080
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1081
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1082
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->clearSubInfo()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1084
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getActiveSubscriptionIdList()[I
    .locals 3

    .prologue
    .line 1176
    const/4 v1, 0x0

    .line 1179
    .local v1, "subId":[I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1180
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1181
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubIdList()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1187
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1188
    const/4 v2, 0x0

    new-array v1, v2, [I

    .line 1191
    :cond_1
    return-object v1

    .line 1183
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActiveSubscriptionInfo]+ subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 494
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 498
    const/4 v1, 0x0

    .line 512
    :cond_0
    :goto_0
    return-object v1

    .line 501
    :cond_1
    const/4 v1, 0x0

    .line 504
    .local v1, "subInfo":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 505
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 506
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfo(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 508
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCount()I
    .locals 3

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 660
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 661
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 662
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 668
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 664
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoCountMax()I
    .locals 3

    .prologue
    .line 677
    const/4 v1, 0x0

    .line 680
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 681
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 682
    invoke-interface {v0}, Lcom/android/internal/telephony/ISub;->getActiveSubInfoCountMax()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 688
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 684
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForIccIndex(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActiveSubscriptionInfoForIccIndex]+ iccId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 524
    if-nez p1, :cond_1

    .line 525
    const-string v2, "[getActiveSubscriptionInfoForIccIndex]- null iccid"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 526
    const/4 v1, 0x0

    .line 540
    :cond_0
    :goto_0
    return-object v1

    .line 529
    :cond_1
    const/4 v1, 0x0

    .line 532
    .local v1, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 533
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 534
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 536
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;
    .locals 4
    .param p1, "slotIdx"    # I

    .prologue
    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getActiveSubscriptionInfoForSimSlotIndex]+ slotIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 550
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 551
    const-string v2, "[getActiveSubscriptionInfoForSimSlotIndex]- invalid slotIdx"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 552
    const/4 v1, 0x0

    .line 567
    :cond_0
    :goto_0
    return-object v1

    .line 555
    :cond_1
    const/4 v1, 0x0

    .line 558
    .local v1, "result":Landroid/telephony/SubscriptionInfo;
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 559
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 560
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;)Landroid/telephony/SubscriptionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 563
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 616
    const/4 v1, 0x0

    .line 619
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 620
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 621
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 626
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-object v1

    .line 623
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllSubscriptionInfoCount()I
    .locals 3

    .prologue
    .line 635
    const-string v2, "[getAllSubscriptionInfoCount]+"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 637
    const/4 v1, 0x0

    .line 640
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 641
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 642
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoCount(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 648
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return v1

    .line 644
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getAllSubscriptionInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 576
    const-string v2, "[getAllSubscriptionInfoList]+"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 578
    const/4 v1, 0x0

    .line 581
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 582
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 583
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISub;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 589
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 590
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    return-object v1

    .line 585
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getDefaultDataPhoneId()I
    .locals 1

    .prologue
    .line 1074
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1069
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSmsPhoneId()I
    .locals 1

    .prologue
    .line 1034
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method public getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 1029
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceSubscriptionInfo()Landroid/telephony/SubscriptionInfo;
    .locals 1

    .prologue
    .line 984
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method public isActiveSubId(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1357
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1358
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1359
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->isActiveSubId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1363
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :goto_0
    return v1

    .line 1361
    :catch_0
    move-exception v1

    .line 1363
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1205
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1206
    .local v0, "phoneId":I
    if-gez v0, :cond_0

    .line 1208
    const/4 v1, 0x0

    .line 1210
    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    goto :goto_0
.end method

.method public removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .prologue
    .line 469
    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SubscriptionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "pkgForDebug":Ljava/lang/String;
    :goto_0
    :try_start_0
    const-string/jumbo v2, "telephony.registry"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    .line 479
    .local v1, "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    if-eqz v1, :cond_0

    .line 480
    iget-object v2, p1, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->callback:Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/ITelephonyRegistry;->removeOnSubscriptionsChangedListener(Ljava/lang/String;Lcom/android/internal/telephony/IOnSubscriptionsChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    .end local v1    # "tr":Lcom/android/internal/telephony/ITelephonyRegistry;
    :cond_0
    :goto_1
    return-void

    .line 469
    .end local v0    # "pkgForDebug":Ljava/lang/String;
    :cond_1
    const-string v0, "<unknown>"

    goto :goto_0

    .line 482
    .restart local v0    # "pkgForDebug":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setDataRoaming(II)I
    .locals 4
    .param p1, "roaming"    # I
    .param p2, "subId"    # I

    .prologue
    .line 832
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDataRoaming]+ roaming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 833
    if-ltz p1, :cond_0

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 834
    :cond_0
    const-string v2, "[setDataRoaming]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 835
    const/4 v1, -0x1

    .line 849
    :cond_1
    :goto_0
    return v1

    .line 838
    :cond_2
    const/4 v1, 0x0

    .line 841
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 842
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 843
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDataRoaming(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 845
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setDefaultDataSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDataSubscription sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1058
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1059
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1060
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultDataSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1062
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDefaultSmsSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultSmsSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 1018
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 1019
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 1020
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultSmsSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 1022
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDefaultVoiceSubId(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultVoiceSubId sub id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 973
    :try_start_0
    const-string/jumbo v1, "isub"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 974
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 975
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISub;->setDefaultVoiceSubId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :cond_0
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setDisplayName(Ljava/lang/String;I)I
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 759
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;IJ)I
    .locals 5
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "nameSource"    # J

    .prologue
    .line 773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDisplayName]+  displayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nameSource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 776
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 777
    const-string v2, "[setDisplayName]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 778
    const/4 v1, -0x1

    .line 792
    :cond_0
    :goto_0
    return v1

    .line 781
    :cond_1
    const/4 v1, 0x0

    .line 784
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 785
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 786
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/ISub;->setDisplayNameUsingSrc(Ljava/lang/String;IJ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 788
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setDisplayNumber(Ljava/lang/String;I)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "subId"    # I

    .prologue
    .line 804
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 805
    :cond_0
    const-string v2, "[setDisplayNumber]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 806
    const/4 v1, -0x1

    .line 820
    :cond_1
    :goto_0
    return v1

    .line 809
    :cond_2
    const/4 v1, 0x0

    .line 812
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 813
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_1

    .line 814
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setDisplayNumber(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 816
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setIconTint(II)I
    .locals 4
    .param p1, "tint"    # I
    .param p2, "subId"    # I

    .prologue
    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setIconTint]+ tint:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 731
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 732
    const-string v2, "[setIconTint]- fail"

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->logd(Ljava/lang/String;)V

    .line 733
    const/4 v1, -0x1

    .line 747
    :cond_0
    :goto_0
    return v1

    .line 736
    :cond_1
    const/4 v1, 0x0

    .line 739
    .local v1, "result":I
    :try_start_0
    const-string/jumbo v2, "isub"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISub$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;

    move-result-object v0

    .line 740
    .local v0, "iSub":Lcom/android/internal/telephony/ISub;
    if-eqz v0, :cond_0

    .line 741
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISub;->setIconTint(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 743
    .end local v0    # "iSub":Lcom/android/internal/telephony/ISub;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
