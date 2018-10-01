.class public abstract Lcom/android/internal/telephony/uicc/AbstractIccRecords;
.super Landroid/os/Handler;
.source "AbstractIccRecords.java"


# static fields
.field private static final ACTION_SIM_ICCID_READY:Ljava/lang/String; = "android.intent.action.ACTION_SIM_ICCID_READY"

.field private static final DBG:Z = true

.field public static final EVENT_EONS:I = 0x64

.field private static final EXTRA_SIM_ICCID:Ljava/lang/String; = "iccid"

.field public static final HW_CUST_EVENT_BASE:I = 0x64

.field protected static final HW_IS_CHINA_TELECOM:Z

.field protected static final HW_SIM_REFRESH:Z

.field private static final TAG:Ljava/lang/String; = "AbstractIccRecords"

.field private static bEmailAnrSupport:Z


# instance fields
.field protected mCsgRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field protected mCsglexist:Z

.field protected mIccIDLoadRegistrants:Landroid/os/RegistrantList;

.field protected mIccRefreshRegistrants:Landroid/os/RegistrantList;

.field protected mIs3Gphonebook:Z

.field protected mIsGetPBRDone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 36
    const-string v0, "ro.config.hwft_simrefresh"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->HW_SIM_REFRESH:Z

    .line 37
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
    sput-boolean v0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->HW_IS_CHINA_TELECOM:Z

    .line 45
    sput-boolean v1, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->bEmailAnrSupport:Z

    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIs3Gphonebook:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIsGetPBRDone:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mCsglexist:Z

    .line 65
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    .line 67
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mCsgRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    .line 249
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIccIDLoadRegistrants:Landroid/os/RegistrantList;

    return-void
.end method

.method public static getEmailAnrSupport()Z
    .locals 1

    .prologue
    .line 169
    sget-boolean v0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->bEmailAnrSupport:Z

    return v0
.end method

.method public static loadEmailAnrSupportFlag(Landroid/content/Context;)V
    .locals 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 176
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_email_anr_support"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/SettingsEx$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->bEmailAnrSupport:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static rlog(Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "AbstractIccRecords"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method


# virtual methods
.method public afterHandleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)Z
    .locals 1
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public afterHandleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)Z
    .locals 1
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public beforeHandleRuimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)Z
    .locals 1
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public beforeHandleSimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)Z
    .locals 1
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected checkFileInServiceTable(ILcom/android/internal/telephony/uicc/UsimServiceTable;[B)Z
    .locals 1
    .param p1, "efid"    # I
    .param p2, "usimServiceTable"    # Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .param p3, "data"    # [B

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method protected custMncLength(Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 158
    return-void
.end method

.method public decodeCdmaImsi([B)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActingHplmn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCsglexist()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mCsglexist:Z

    return v0
.end method

.method public getEons()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEonsForAvailableNetworks(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "avlNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGID1()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    return-object v0
.end method

.method public getIccidSwitch()Z
    .locals 2

    .prologue
    .line 93
    const-string v0, "ro.config.readiccid_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOcsgl()[B
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getOperatorNumericEx(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPbrRecordSize()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public getSlotId()I
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public has3Gphonebook()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIs3Gphonebook:Z

    return v0
.end method

.method protected initFdnPsStatus(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 235
    return-void
.end method

.method public isEonsDisabled()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public isGetPBRDone()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIsGetPBRDone:Z

    return v0
.end method

.method public loadCardSpecialFile(I)V
    .locals 0
    .param p1, "fileid"    # I

    .prologue
    .line 261
    return-void
.end method

.method protected loadEFOcsgl()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method protected loadEons()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public loadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "matchPath"    # Ljava/lang/String;
    .param p2, "matchFile"    # Ljava/lang/String;

    .prologue
    .line 129
    return-void
.end method

.method protected loadGID1()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method protected onAllRecordsLoadedHw()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected onIccIdLoadedHw()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method protected onImsiLoadedHw()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method protected onOperatorNumericLoadedHw()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public registerForCsgRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 82
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 83
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mCsgRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 84
    return-void
.end method

.method public declared-synchronized registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 72
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 71
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerForLoadIccID(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 252
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIccIDLoadRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 251
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendDualSimChangeBroadcast(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "isSimImsiRefreshing"    # Z
    .param p2, "mLastImsi"    # Ljava/lang/String;
    .param p3, "mImsi"    # Ljava/lang/String;

    .prologue
    .line 239
    return-void
.end method

.method public sendIccidDoneBroadcast(Ljava/lang/String;)V
    .locals 3
    .param p1, "mIccId"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SIM_ICCID_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "iccid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " SimRecords sendIccidDoneBroadcast EXTRA_SIM_ICCID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->rlog(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public setCsglexist(Z)V
    .locals 0
    .param p1, "csglExist"    # Z

    .prologue
    .line 277
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mCsglexist:Z

    .line 278
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceNumber"    # Ljava/lang/String;

    .prologue
    .line 125
    return-void
.end method

.method public declared-synchronized unRegisterForIccRefresh(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIccRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unRegisterForLoadIccID(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mIccIDLoadRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterForCsgRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->mCsgRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 87
    return-void
.end method

.method public updateEons(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "regOperator"    # Ljava/lang/String;
    .param p2, "lac"    # I

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public updateSarMnc(Ljava/lang/String;)V
    .locals 3
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 202
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_0

    .line 203
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AbstractIccRecords;->getSlotId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 204
    const-string v0, "reduce.sar.imsi.mnc"

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    return-void
.end method
