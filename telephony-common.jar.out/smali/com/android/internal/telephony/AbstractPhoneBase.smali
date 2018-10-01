.class public abstract Lcom/android/internal/telephony/AbstractPhoneBase;
.super Landroid/os/Handler;
.source "AbstractPhoneBase.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_MASK_ALL:I = 0x2

.field public static final DEVICE_ID_MASK_IMEI:I = 0x1

.field private static final DEVICE_ID_RETRY_COUNT:I = 0x5

.field private static final DEVICE_ID_RETRY_INTERVAL:I = 0x1770

.field public static final EVENT_ECC_NUM:I = 0x68

.field protected static final EVENT_GET_CALL_FORWARD_TIMER_DONE:I = 0x6e

.field public static final EVENT_GET_IMSI_DONE:I = 0x69

.field public static final EVENT_GET_LTE_RELEASE_VERSION_DONE:I = 0x6c

.field public static final EVENT_HW_CUST_BASE:I = 0x64

.field public static final EVENT_RETRY_GET_DEVICE_ID:I = 0x3e8

.field protected static final EVENT_SET_CALL_FORWARD_TIMER_DONE:I = 0x6d

.field public static final EVENT_SET_MODE_TO_AUTO:I = 0x6f

.field private static final HOEMHOOK:Ljava/lang/String; = "HOEMHOOK"

.field private static final INT_LENGTH:I = 0x4

.field private static final IS_CHINA_TELECOM:Z

.field private static final IS_RESTORE_AUTO:Z

.field private static final LOG_TAG:Ljava/lang/String; = "HwPhoneBase"

.field public static final LTE_RELEASE_VERSION_R10:I = 0x1

.field public static final LTE_RELEASE_VERSION_R9:I = 0x0

.field public static final LTE_RELEASE_VERSION_UNKNOWN:I = -0x1

.field private static final MUTIL_SIM_CONFIGURATION_DSDA:Ljava/lang/String; = "dsda"

.field private static final MUTIL_SIM_CONFIGURATION_DSDS:Ljava/lang/String; = "dsds"

.field private static final MUTIL_SIM_CONFIGURATION_UNKNOW:Ljava/lang/String; = "unknow"

.field public static final SET_TO_AOTO_TIME:I = 0x1388

.field public static final SPEECH_INFO_CODEC_NB:I = 0x1

.field public static final SPEECH_INFO_CODEC_WB:I = 0x2


# instance fields
.field public final BUFFER_SIZE:I

.field private mAbstractPhoneBaseCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mIsAdaptMultiSimConfiguration:Z

.field private mNeedShowOOS:Z

.field private mReference:Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;

.field private speechInfoCodec:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 59
    const-string v0, "ro.config.hw_opta"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "92"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.config.hw_optb"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "156"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/telephony/AbstractPhoneBase;->IS_CHINA_TELECOM:Z

    .line 61
    const-string v0, "ro.hwpp.restore_auto_ct_manual"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/AbstractPhoneBase;->IS_RESTORE_AUTO:Z

    return-void

    :cond_0
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->speechInfoCodec:I

    .line 100
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwPhoneBaseReference(Lcom/android/internal/telephony/AbstractPhoneBase;)Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mReference:Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;

    .line 223
    iput-boolean v1, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mNeedShowOOS:Z

    .line 276
    const-string v0, "ro.config.multi_sim_cfg_adapt"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mIsAdaptMultiSimConfiguration:Z

    .line 351
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->BUFFER_SIZE:I

    .line 39
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->speechInfoCodec:I

    .line 100
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwPhoneManager()Lcom/android/internal/telephony/HwPhoneManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwPhoneManager;->createHwPhoneBaseReference(Lcom/android/internal/telephony/AbstractPhoneBase;)Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mReference:Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;

    .line 223
    iput-boolean v1, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mNeedShowOOS:Z

    .line 276
    const-string v0, "ro.config.multi_sim_cfg_adapt"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mIsAdaptMultiSimConfiguration:Z

    .line 351
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->BUFFER_SIZE:I

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mAbstractPhoneBaseCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 43
    return-void
.end method

.method private notifyMultiSimConfigurationChanged(Ljava/lang/String;)V
    .locals 8
    .param p1, "multiSimConfiguration"    # Ljava/lang/String;

    .prologue
    .line 328
    :try_start_0
    const-string v5, "HOEMHOOK"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v5, v6

    .line 330
    .local v1, "dataLength":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 331
    .local v3, "payload":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 334
    const-string v5, "HOEMHOOK"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 336
    const v5, 0x8012d

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 338
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 340
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 342
    move-object v0, p0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    move-object v4, v0

    .line 343
    .local v4, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v5, v4, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/PhoneNotifier;->notifyOemHookRawEventForSubscriber(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1    # "dataLength":I
    .end local v3    # "payload":Ljava/nio/ByteBuffer;
    .end local v4    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    return-void

    .line 344
    :catch_0
    move-exception v2

    .line 345
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "HwPhoneBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 136
    const-string v0, "HwPhoneBase"

    const-string v1, "[HwPhoneBase] getPesn() is a GSM method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public cleanDeviceId()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "HwPhoneBase"

    const-string v1, "cleanDeviceId should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public closeRrc()V
    .locals 2

    .prologue
    .line 147
    const-string v0, "HwPhoneBase"

    const-string v1, "[HwPhoneBase] closeRrc()"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void
.end method

.method public cmdForECInfo(II[B)Z
    .locals 1
    .param p1, "event"    # I
    .param p2, "action"    # I
    .param p3, "buf"    # [B

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mAbstractPhoneBaseCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->cmdForECInfo(II[B)Z

    move-result v0

    return v0
.end method

.method public getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "serviceClass"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 128
    const-string v0, "HwPhoneBase"

    const-string v1, "[HwPhoneBase] getPesn() is a GSM method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method

.method public getDataRoamingScope()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mReference:Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;->getDataRoamingScope()I

    move-result v0

    return v0
.end method

.method public getImsSwitch()Z
    .locals 2

    .prologue
    .line 79
    const-string v0, "HwPhoneBase"

    const-string v1, "getImsSwitch should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getLteReleaseVersion()I
    .locals 2

    .prologue
    .line 217
    const-string v0, "HwPhoneBase"

    const-string v1, "getLteReleaseVersion should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, -0x1

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    const-string v0, "HwPhoneBase"

    const-string v1, "[HwPhoneBase] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v0, "Meid"

    return-object v0
.end method

.method public getNVESN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mAbstractPhoneBaseCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getNVESN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOOSFlag()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mNeedShowOOS:Z

    return v0
.end method

.method public getPOLCapabilty(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 196
    const-string v0, "HwPhoneBase"

    const-string v1, "getPOLCapabilty should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public getPesn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    const-string v0, "HwPhoneBase"

    const-string v1, "[HwPhoneBase] getPesn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "0"

    return-object v0
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 200
    const-string v0, "HwPhoneBase"

    const-string v1, "getPreferedOperatorList should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public getSpeechInfoCodec()Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    const-string v0, ""

    .line 170
    .local v0, "ret":Ljava/lang/String;
    const/4 v1, 0x2

    iget v2, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->speechInfoCodec:I

    if-ne v1, v2, :cond_1

    .line 171
    const-string v0, "incall_wb=on"

    .line 176
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->speechInfoCodec:I

    if-ne v1, v2, :cond_0

    .line 173
    const-string v0, "incall_wb=off"

    goto :goto_0
.end method

.method protected getVoiceMailNumberHwCust()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    const-string v0, "HwPhoneBase"

    const-string v1, "[HwPhoneBase] getVoiceMailNumberHwCust() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, ""

    return-object v0
.end method

.method public hasNetworkSelectionAuto()V
    .locals 3

    .prologue
    const/16 v2, 0x6f

    .line 249
    sget-boolean v0, Lcom/android/internal/telephony/AbstractPhoneBase;->IS_RESTORE_AUTO:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/AbstractPhoneBase;->IS_CHINA_TELECOM:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/AbstractPhoneBase;->getPhoneId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 251
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AbstractPhoneBase;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "HwPhoneBase"

    const-string v1, "remove EVENT_SET_MODE_TO_AUTO"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/AbstractPhoneBase;->removeMessages(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public isMmiCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportCFT()Z
    .locals 2

    .prologue
    .line 67
    const-string v0, "HwPhoneBase"

    const-string v1, "isSupportCFT should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public notifyMultiSimConfigurationChanged()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 284
    iget-boolean v6, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mIsAdaptMultiSimConfiguration:Z

    if-nez v6, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 289
    .local v5, "phones":[Lcom/android/internal/telephony/Phone;
    if-nez v5, :cond_2

    .line 290
    const-string v6, "HwPhoneBase"

    const-string v7, "get phones failed"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_2
    :try_start_0
    array-length v3, v5

    .line 297
    .local v3, "phoneCnt":I
    const-string v6, "persist.radio.multisim.config"

    const-string v7, "unknow"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "oldMultiSimConfiguration":Ljava/lang/String;
    move-object v1, v2

    .line 300
    .local v1, "newMultiSimConfiguration":Ljava/lang/String;
    if-ne v3, v10, :cond_3

    .line 301
    const/4 v6, 0x2

    new-array v4, v6, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    aput v7, v4, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    aput v7, v4, v6

    .line 302
    .local v4, "phoneTypes":[I
    const-string v6, "HwPhoneBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneTypes[0] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", phoneTypes[1] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-static {v4}, Ljava/util/Arrays;->sort([I)V

    .line 306
    const/4 v6, 0x0

    aget v6, v4, v6

    if-ne v6, v9, :cond_4

    const/4 v6, 0x1

    aget v6, v4, v6

    if-ne v6, v9, :cond_4

    .line 308
    const-string v1, "dsds"

    .line 315
    .end local v4    # "phoneTypes":[I
    :cond_3
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 316
    const-string v6, "HwPhoneBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MultiSimConfiguration changed:newMultiSimConfiguration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", oldMultiSimConfiguration = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v6, "persist.radio.multisim.config"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/AbstractPhoneBase;->notifyMultiSimConfigurationChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 321
    .end local v1    # "newMultiSimConfiguration":Ljava/lang/String;
    .end local v2    # "oldMultiSimConfiguration":Ljava/lang/String;
    .end local v3    # "phoneCnt":I
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "HwPhoneBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "newMultiSimConfiguration":Ljava/lang/String;
    .restart local v2    # "oldMultiSimConfiguration":Ljava/lang/String;
    .restart local v3    # "phoneCnt":I
    .restart local v4    # "phoneTypes":[I
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    aget v6, v4, v6

    if-ne v6, v9, :cond_3

    const/4 v6, 0x1

    aget v6, v4, v6

    if-ne v6, v10, :cond_3

    .line 311
    const-string v1, "dsda"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public registerForHWBuffer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 353
    const-string v0, "HwPhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zp:::PhoneBase.registerForHWBuffer() >>h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mAbstractPhoneBaseCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForHWBuffer(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 356
    return-void
.end method

.method public registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mAbstractPhoneBaseCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    return-void
.end method

.method public restoreNetworkSelectionAuto()V
    .locals 4

    .prologue
    .line 237
    sget-boolean v1, Lcom/android/internal/telephony/AbstractPhoneBase;->IS_RESTORE_AUTO:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/AbstractPhoneBase;->IS_CHINA_TELECOM:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/AbstractPhoneBase;->getPhoneId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 239
    const-string v1, "HwPhoneBase"

    const-string v2, "set mode to automatic for ct when received manual complete"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 241
    .local v0, "message":Landroid/os/Message;
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 242
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/AbstractPhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public retryGetDeviceId(II)V
    .locals 4
    .param p1, "curRetryCount"    # I
    .param p2, "deviceIdMask"    # I

    .prologue
    .line 92
    add-int/lit8 v0, p1, 0x1

    .line 93
    .local v0, "count":I
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 94
    const-string v1, "HwPhoneBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "retryGetDeviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " try after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1770

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/16 v1, 0x3e8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p2, v2}, Lcom/android/internal/telephony/AbstractPhoneBase;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/AbstractPhoneBase;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 97
    :cond_0
    return-void
.end method

.method public riseCdmaCutoffFreq(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 209
    return-void
.end method

.method public selectCsgNetworkManually(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 385
    const-string v0, "HwPhoneBase"

    const-string v1, "[HwPhoneBase] selectCsgNetworkManually() is a GSM method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void
.end method

.method public sendHWSolicited(Landroid/os/Message;I[B)V
    .locals 2
    .param p1, "reqMsg"    # Landroid/os/Message;
    .param p2, "event"    # I
    .param p3, "reqData"    # [B

    .prologue
    .line 365
    if-gez p2, :cond_0

    .line 366
    const-string v0, "HwPhoneBase"

    const-string v1, "zp::: sendHWSolicited() event not less than 0 "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    .line 370
    :cond_0
    if-eqz p3, :cond_1

    const/16 v0, 0x78

    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 371
    :cond_1
    const-string v0, "HwPhoneBase"

    const-string v1, "zp::: sendHWSolicited() reqData is null or length overstep"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mAbstractPhoneBaseCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->sendHWBufferSolicited(Landroid/os/Message;I[B)V

    goto :goto_0
.end method

.method public setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "commandInterfaceCFAction"    # I
    .param p6, "commandInterfaceCFReason"    # I
    .param p7, "dialingNumber"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 73
    const-string v0, "HwPhoneBase"

    const-string v1, "setCallForwardingUncondTimerOption should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method public setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isActivate"    # Z
    .param p4, "serviceClass"    # Ljava/lang/String;
    .param p5, "response"    # Landroid/os/Message;

    .prologue
    .line 132
    const-string v0, "HwPhoneBase"

    const-string v1, "[HwPhoneBase] getPesn() is a GSM method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void
.end method

.method public setDataRoamingScope(I)Z
    .locals 1
    .param p1, "scope"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mReference:Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractPhoneBase$HwPhoneBaseReference;->setDataRoamingScope(I)Z

    move-result v0

    return v0
.end method

.method public setISMCOEX(Ljava/lang/String;)Z
    .locals 2
    .param p1, "setISMCoex"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string v0, "HwPhoneBase"

    const-string v1, "setISMCOEX should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public setImsSwitch(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 76
    const-string v0, "HwPhoneBase"

    const-string v1, "setImsSwitch should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public setLTEReleaseVersion(ZLandroid/os/Message;)V
    .locals 2
    .param p1, "state"    # Z
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 214
    const-string v0, "HwPhoneBase"

    const-string v1, "setLTEReleaseVersion should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public setOOSFlagOnSelectNetworkManually(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mNeedShowOOS:Z

    .line 226
    return-void
.end method

.method public setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "numeric"    # Ljava/lang/String;
    .param p3, "nAct"    # I
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 204
    const-string v0, "HwPhoneBase"

    const-string v1, "setPOLEntry should be override by subclass"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method public setSpeechInfoCodec(I)V
    .locals 0
    .param p1, "speechinfocodec"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->speechInfoCodec:I

    .line 166
    return-void
.end method

.method public switchVoiceCallBackgroundState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 182
    return-void
.end method

.method public unregisterForHWBuffer(Landroid/os/Handler;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 359
    const-string v0, "HwPhoneBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zp:::PhoneBase.unregisterForHWBuffer() >>h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mAbstractPhoneBaseCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForHWBuffer(Landroid/os/Handler;)V

    .line 362
    return-void
.end method

.method public unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractPhoneBase;->mAbstractPhoneBaseCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V

    .line 162
    return-void
.end method
