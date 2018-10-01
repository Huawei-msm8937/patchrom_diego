.class public Lcom/android/internal/telephony/vsim/VSimUtilsInner;
.super Ljava/lang/Object;
.source "VSimUtilsInner.java"


# static fields
.field public static final DEVICE_ID_PREF:Ljava/lang/String; = "deviceId_pending_for_vsim"

.field public static final DEVICE_SVN_PREF:Ljava/lang/String; = "deviceSvn_pending_for_vsim"

.field public static final ESN_PREF:Ljava/lang/String; = "esn_pending_for_vsim"

.field private static HWFLOW:Z = false

.field public static final IMEI_PREF:Ljava/lang/String; = "imei_pending_for_vsim"

.field private static final IS_M2_CS_ONLY:I = 0x4

.field private static final IS_MMS_ON_M2:I = 0x5

.field private static final IS_RADIO_AVAILABLE:I = 0x7

.field private static final IS_SUB_ON_M2:I = 0x6

.field private static final IS_VSIM_CAUSE_CARD_RELOAD:I = 0x8

.field private static final IS_VSIM_ENABLED:I = 0x9

.field private static final IS_VSIM_IN_PROCESS:I = 0x2

.field private static final IS_VSIM_ON:I = 0x1

.field private static final IS_VSIM_RECONNECTING:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "VSimUtilsInner"

.field private static final MAIN_SLOT_PIN_BUSY:I = 0xc

.field public static final MEID_PREF:Ljava/lang/String; = "meid_pending_for_vsim"

.field private static final MMS_START:I = 0x1

.field private static final MMS_STOP:I = 0x2

.field private static final NEED_BLOCK_PIN:I = 0xa

.field private static final NEED_BLOCK_PIN_IN_BOOT:I = 0xb

.field private static final PHONE_COUNT:I = 0x2

.field private static final VSIM_MODEM_COUNT:I

.field private static final VSIM_MODEM_COUNT_DEFAULT:I = 0x3

.field protected static final sIsPlatformSupportVSim:Z

.field private static sLegacyMarkTable:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 37
    sget-boolean v1, Landroid/util/Log;->HWINFO:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/util/Log;->HWModuleLog:Z

    if-eqz v1, :cond_1

    const-string v1, "VSimUtilsInner"

    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->HWFLOW:Z

    .line 40
    const-string v1, "ro.radio.vsim_support"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    .line 45
    const-string v1, "ro.radio.vsim_modem_count"

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->VSIM_MODEM_COUNT:I

    .line 89
    new-array v1, v4, [Z

    sput-object v1, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sLegacyMarkTable:[Z

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 92
    sget-object v1, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sLegacyMarkTable:[Z

    aput-boolean v2, v1, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_1
    move v1, v2

    .line 37
    goto :goto_0

    .line 94
    .restart local v0    # "i":I
    :cond_2
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static checkMmsStart(I)V
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 222
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->checkMmsForVSim(II)V

    goto :goto_0
.end method

.method public static checkMmsStop(I)V
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 228
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->checkMmsForVSim(II)V

    goto :goto_0
.end method

.method public static createVSimApnList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/dataconnection/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/dataconnection/ApnSetting;>;"
    invoke-static {}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->makeVSimApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    sget-boolean v1, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->HWFLOW:Z

    if-eqz v1, :cond_0

    const-string v1, "VSimUtilsInner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createVSimApnList: X result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    return-object v0
.end method

.method public static dumpVSimPhoneFactory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 308
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/HwInnerVSimManager;->dumpVSimPhoneFactory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static fetchVSimIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1
    .param p0, "family"    # I

    .prologue
    .line 156
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->fetchVSimIccRecords(I)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    return-object v0
.end method

.method public static getPendingDeviceInfoFromSP(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "prefKey"    # Ljava/lang/String;

    .prologue
    .line 326
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 328
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->getPendingDeviceInfoFromSP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVSimPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 303
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/HwInnerVSimManager;->getVSimPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private static isIccStateChangedByVSimReload(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 378
    const-string v2, "ABSENT"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "READY"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "IMSI"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LOADED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 386
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->isVSimEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->isVSimCauseCardReload()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
    :cond_1
    const-string v2, "LOADED"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 390
    invoke-static {p1, v0}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->setVSimLegacyReloadMark(IZ)V

    :cond_2
    move v0, v1

    .line 403
    :cond_3
    :goto_0
    return v0

    .line 396
    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->isVSimLegacyReloadMark(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 398
    invoke-static {p1, v0}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->setVSimLegacyReloadMark(IZ)V

    move v0, v1

    .line 400
    goto :goto_0
.end method

.method public static isM2CSOnly()Z
    .locals 3

    .prologue
    .line 246
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isMmsOnM2()Z
    .locals 3

    .prologue
    .line 240
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 242
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPlatformTwoModems()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    sget-boolean v1, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v1, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->VSIM_MODEM_COUNT:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRadioAvailable(I)Z
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isSubOnM2(I)Z
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 234
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVSimCauseCardReload()Z
    .locals 3

    .prologue
    .line 315
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVSimEnabled()Z
    .locals 3

    .prologue
    .line 334
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 336
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVSimFiltrateApn(II)Z
    .locals 1
    .param p0, "subId"    # I
    .param p1, "type"    # I

    .prologue
    .line 252
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    if-eq v0, p1, :cond_0

    const/4 v0, 0x4

    if-eq v0, p1, :cond_0

    const/4 v0, 0x5

    if-eq v0, p1, :cond_0

    .line 257
    const/4 v0, 0x1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVSimInProcess()Z
    .locals 3

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method private static isVSimLegacyReloadMark(I)Z
    .locals 1
    .param p0, "subId"    # I

    .prologue
    .line 410
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    .line 411
    :cond_0
    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sLegacyMarkTable:[Z

    aget-boolean v0, v0, p0

    goto :goto_0
.end method

.method public static isVSimOn()Z
    .locals 3

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVSimPhone(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimPhone(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVSimReconnecting()Z
    .locals 3

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isVSimSub(I)Z
    .locals 2
    .param p0, "sub"    # I

    .prologue
    const/4 v0, 0x0

    .line 108
    sget-boolean v1, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static mainSlotPinBusy()Z
    .locals 3

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 363
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method private static makeVSimApnSetting()Lcom/android/internal/telephony/dataconnection/ApnSetting;
    .locals 27

    .prologue
    .line 162
    const-string v1, "default,supl"

    invoke-static {v1}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 163
    .local v13, "types":[Ljava/lang/String;
    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnSetting;

    const/4 v1, 0x0

    const-string v2, "00000"

    const-string v3, "vsim"

    const-string v4, "apn"

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    const/4 v12, -0x1

    const-string v14, "IP"

    const-string v15, "IP"

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v25, ""

    const-string v26, ""

    invoke-direct/range {v0 .. v26}, Lcom/android/internal/telephony/dataconnection/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIIZIIIILjava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, "apn":Lcom/android/internal/telephony/dataconnection/ApnSetting;
    return-object v0
.end method

.method public static makeVSimPhoneFactory(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;[Lcom/android/internal/telephony/PhoneProxy;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p2, "pps"    # [Lcom/android/internal/telephony/PhoneProxy;
    .param p3, "cis"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 296
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/HwInnerVSimManager;->makeVSimPhoneFactory(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;[Lcom/android/internal/telephony/PhoneProxy;[Lcom/android/internal/telephony/CommandsInterface;)V

    goto :goto_0
.end method

.method public static needBlockPin(I)Z
    .locals 2
    .param p0, "subId"    # I

    .prologue
    .line 347
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static needBlockPinInBoot()Z
    .locals 3

    .prologue
    .line 355
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/HwInnerVSimManager;->isVSimInStatus(II)Z

    move-result v0

    goto :goto_0
.end method

.method public static onSwitchVoicePhone(ILcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "newPhone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "oldPhone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 460
    sget-boolean v3, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v3, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    .line 463
    :cond_2
    sget-boolean v3, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->HWFLOW:Z

    if-eqz v3, :cond_0

    const-string v3, "VSimUtilsInner"

    const-string v4, "onSwitchVoicePhone: missing phone"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .line 468
    .local v2, "oldSST":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    .line 469
    .local v1, "newSST":Lcom/android/internal/telephony/ServiceStateTracker;
    if-eqz v1, :cond_4

    if-nez v2, :cond_5

    .line 470
    :cond_4
    sget-boolean v3, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->HWFLOW:Z

    if-eqz v3, :cond_0

    const-string v3, "VSimUtilsInner"

    const-string v4, "onSwitchVoicePhone: missing sst"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->isVSimInProcess()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .line 476
    .local v0, "desiredPowerState":Z
    sget-boolean v3, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->HWFLOW:Z

    if-eqz v3, :cond_6

    const-string v3, "VSimUtilsInner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSwitchVoicePhone: update desiredPowerState to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->setDesiredPowerState(Z)V

    goto :goto_0
.end method

.method private static parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "types"    # Ljava/lang/String;

    .prologue
    .line 202
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 204
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 208
    :goto_0
    return-object v0

    .line 206
    .end local v0    # "result":[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":[Ljava/lang/String;
    goto :goto_0
.end method

.method public static putVSimExtraForIccStateChanged(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "subId"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 440
    sget-boolean v2, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v2, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    invoke-static {p2, p1}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->isIccStateChangedByVSimReload(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const-string v0, "vsim"

    .line 444
    .local v0, "INTENT_KEY_VSIM":Ljava/lang/String;
    const-string v1, "VSIM_RELOAD"

    .line 445
    .local v1, "INTENT_VALUE_VSIM_RELOAD":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->HWFLOW:Z

    if-eqz v2, :cond_2

    const-string v2, "VSimUtilsInner"

    const-string v3, "vsim add extra param for ACTION_SIM_STATE_CHANGED as vsim reload"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_2
    const-string v2, "vsim"

    const-string v3, "VSIM_RELOAD"

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 138
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/telephony/HwInnerVSimManager;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public static setLastRilFailCause(I)V
    .locals 1
    .param p0, "cause"    # I

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->setLastRilFailCause(I)V

    goto :goto_0
.end method

.method public static setMarkForCardReload(IZ)V
    .locals 1
    .param p0, "subId"    # I
    .param p1, "value"    # Z

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->isVSimCauseCardReload()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->setVSimLegacyReloadMark(IZ)V

    .line 280
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/HwInnerVSimManager;->setMarkForCardReload(IZ)V

    goto :goto_0
.end method

.method private static setVSimLegacyReloadMark(IZ)V
    .locals 3
    .param p0, "subId"    # I
    .param p1, "value"    # Z

    .prologue
    .line 423
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 427
    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->HWFLOW:Z

    if-eqz v0, :cond_2

    const-string v0, "VSimUtilsInner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set sLegacyMarkTable["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sLegacyMarkTable:[Z

    aput-boolean p1, v0, p0

    goto :goto_0
.end method

.method public static unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 1
    .param p0, "h"    # Landroid/os/Handler;

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/internal/telephony/vsim/VSimUtilsInner;->sIsPlatformSupportVSim:Z

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwInnerVSimManager()Lcom/android/internal/telephony/HwInnerVSimManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwInnerVSimManager;->unregisterForIccChanged(Landroid/os/Handler;)V

    goto :goto_0
.end method
