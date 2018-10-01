.class public Landroid/hardware/fmradio/FmTransceiver;
.super Ljava/lang/Object;
.source "FmTransceiver.java"


# static fields
.field public static FMState:I = 0x0

.field public static final FMState_Rx_Turned_On:I = 0x1

.field public static final FMState_Srch_InProg:I = 0x3

.field public static final FMState_Turned_Off:I = 0x0

.field public static final FMState_Tx_Turned_On:I = 0x2

.field private static final FM_CHIPTYPE:Ljava/lang/String;

.field public static final FM_CHSPACE_100_KHZ:I = 0x1

.field public static final FM_CHSPACE_200_KHZ:I = 0x0

.field public static final FM_CHSPACE_50_KHZ:I = 0x2

.field public static final FM_DE_EMP50:I = 0x1

.field public static final FM_DE_EMP75:I = 0x0

.field public static final FM_ENABLE_RETRY_TIMES:I = 0x64

.field public static final FM_EU_BAND:I = 0x1

.field public static final FM_JAPAN_STANDARD_BAND:I = 0x3

.field public static final FM_JAPAN_WIDE_BAND:I = 0x2

.field public static final FM_RDS_STD_NONE:I = 0x2

.field public static final FM_RDS_STD_RBDS:I = 0x0

.field public static final FM_RDS_STD_RDS:I = 0x1

.field protected static final FM_RX:I = 0x1

.field protected static final FM_TX:I = 0x2

.field public static final FM_USER_DEFINED_BAND:I = 0x4

.field public static final FM_US_BAND:I = 0x0

.field protected static sFd:I = 0x0

.field public static final subPwrLevel_FMRx_Starting:I = 0x4

.field public static final subPwrLevel_FMTurning_Off:I = 0x6

.field public static final subPwrLevel_FMTx_Starting:I = 0x5

.field public static final subSrchLevel_ScanInProg:I = 0x1

.field public static final subSrchLevel_SeekInPrg:I = 0x0

.field public static final subSrchLevel_SrchAbort:I = 0x4

.field public static final subSrchLevel_SrchComplete:I = 0x3

.field public static final subSrchLevel_SrchListInProg:I = 0x2


# instance fields
.field private final MUTE_EVENT:I

.field private final RDS_EVENT:I

.field private final READY_EVENT:I

.field private final SEEK_COMPLETE_EVENT:I

.field private final TAG:Ljava/lang/String;

.field private final TUNE_EVENT:I

.field protected mControl:Landroid/hardware/fmradio/FmRxControls;

.field protected mPowerMode:I

.field protected mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

.field protected mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput v0, Landroid/hardware/fmradio/FmTransceiver;->FMState:I

    .line 141
    const-string/jumbo v0, "ro.connectivity.chiptype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/fmradio/FmTransceiver;->FM_CHIPTYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->READY_EVENT:I

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TUNE_EVENT:I

    .line 136
    const/16 v0, 0x8

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->RDS_EVENT:I

    .line 137
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->MUTE_EVENT:I

    .line 138
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/fmradio/FmTransceiver;->SEEK_COMPLETE_EVENT:I

    .line 147
    const-string v0, "FmTransceiver"

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getFMPowerState()I
    .locals 1

    .prologue
    .line 612
    sget v0, Landroid/hardware/fmradio/FmTransceiver;->FMState:I

    return v0
.end method

.method static release(Ljava/lang/String;)Z
    .locals 4
    .param p0, "device"    # Ljava/lang/String;

    .prologue
    .line 260
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-eqz v1, :cond_1

    .line 261
    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v1}, Landroid/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 262
    const/4 v1, 0x0

    sput v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 263
    const-string v1, "FmTransceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turned off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string/jumbo v1, "hi110x"

    sget-object v2, Landroid/hardware/fmradio/FmTransceiver;->FM_CHIPTYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "hisi"

    sget-object v2, Landroid/hardware/fmradio/FmTransceiver;->FM_CHIPTYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Qualcomm"

    sget-object v2, Landroid/hardware/fmradio/FmTransceiver;->FM_CHIPTYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 272
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 273
    .local v0, "btAdap":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disableRadio()Z

    .line 276
    .end local v0    # "btAdap":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Radio off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 281
    :cond_1
    const-string v1, "FmTransceiver"

    const-string v2, "Error turning off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static setFMPowerState(I)V
    .locals 0
    .param p0, "state"    # I

    .prologue
    .line 589
    sput p0, Landroid/hardware/fmradio/FmTransceiver;->FMState:I

    .line 590
    return-void
.end method


# virtual methods
.method protected acquire(Ljava/lang/String;)Z
    .locals 7
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "bStatus":Z
    const/4 v3, 0x0

    .line 180
    .local v3, "retry":I
    sget v4, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-gtz v4, :cond_4

    .line 186
    const-string/jumbo v4, "hi110x"

    sget-object v5, Landroid/hardware/fmradio/FmTransceiver;->FM_CHIPTYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "hisi"

    sget-object v5, Landroid/hardware/fmradio/FmTransceiver;->FM_CHIPTYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Qualcomm"

    sget-object v5, Landroid/hardware/fmradio/FmTransceiver;->FM_CHIPTYPE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 189
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 190
    .local v1, "btAdap":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enableRadio()Z

    move-result v0

    .line 191
    if-nez v0, :cond_0

    .line 192
    const-string v4, "FmTransceiver"

    const-string v5, "fm enableRadio failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v4, 0x0

    .line 230
    .end local v1    # "btAdap":Landroid/bluetooth/BluetoothAdapter;
    :goto_0
    return v4

    .line 196
    .restart local v1    # "btAdap":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    monitor-enter p0

    .line 197
    :try_start_0
    const-string v4, "FmTransceiver"

    const-string/jumbo v5, "wait Radio on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isRadioEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x64

    if-ge v3, v4, :cond_1

    .line 201
    :try_start_1
    const-string v4, "FmTransceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wait 100ms for radio on , retry ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    add-int/lit8 v3, v3, 0x1

    .line 203
    const-wide/16 v4, 0x64

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "FmTransceiver"

    const-string v5, "Interrupted when waiting for radio on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 210
    .end local v1    # "btAdap":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    const-string v4, "FmTransceiver"

    const-string v5, "Radio on"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v4, "/dev/radio0"

    invoke-static {v4}, Landroid/hardware/fmradio/FmReceiverJNI;->acquireFdNative(Ljava/lang/String;)I

    move-result v4

    sput v4, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    .line 217
    sget v4, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    if-lez v4, :cond_3

    .line 218
    const-string v4, "FmTransceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Opened "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x1

    :goto_2
    move v4, v0

    .line 230
    goto :goto_0

    .line 221
    :cond_3
    const-string v4, "FmTransceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to Open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v0, 0x0

    goto :goto_2

    .line 226
    :cond_4
    const-string v4, "FmTransceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alredy Opened "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public configure(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 4
    .param p1, "configSettings"    # Landroid/hardware/fmradio/FmConfig;

    .prologue
    .line 517
    const/4 v1, 0x1

    .line 518
    .local v1, "status":Z
    invoke-virtual {p1}, Landroid/hardware/fmradio/FmConfig;->getLowerLimit()I

    move-result v0

    .line 519
    .local v0, "lowerFreq":I
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v1

    .line 521
    invoke-virtual {p0, v0}, Landroid/hardware/fmradio/FmTransceiver;->setStation(I)Z

    move-result v1

    .line 522
    return v1
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 490
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v0, v1}, Landroid/hardware/fmradio/FmRxControls;->fmOff(I)V

    .line 493
    const-string v0, "/dev/radio0"

    invoke-static {v0}, Landroid/hardware/fmradio/FmTransceiver;->release(Ljava/lang/String;)Z

    .line 494
    const/4 v0, 0x1

    return v0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;I)Z
    .locals 5
    .param p1, "configSettings"    # Landroid/hardware/fmradio/FmConfig;
    .param p2, "device"    # I

    .prologue
    const/4 v1, 0x0

    .line 454
    const-string v2, "/dev/radio0"

    invoke-virtual {p0, v2}, Landroid/hardware/fmradio/FmTransceiver;->acquire(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 457
    :cond_1
    const-string v2, "FmTransceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "turning on %d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v2, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v3, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v2, v3, p2}, Landroid/hardware/fmradio/FmRxControls;->fmOn(II)V

    .line 460
    const-string v2, "FmTransceiver"

    const-string v3, "Calling fmConfigure"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2, p1}, Landroid/hardware/fmradio/FmConfig;->fmConfigure(ILandroid/hardware/fmradio/FmConfig;)Z

    move-result v0

    .line 462
    .local v0, "status":Z
    if-nez v0, :cond_0

    .line 463
    const-string v2, "FmTransceiver"

    const-string v3, "fmConfigure failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-static {v2}, Landroid/hardware/fmradio/FmReceiverJNI;->closeFdNative(I)I

    .line 465
    sput v1, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    goto :goto_0
.end method

.method public registerClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 3
    .param p1, "callback"    # Landroid/hardware/fmradio/FmRxEvCallbacks;

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "bReturnStatus":Z
    if-eqz p1, :cond_0

    .line 321
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2, p1}, Landroid/hardware/fmradio/FmRxEventListner;->startListner(ILandroid/hardware/fmradio/FmRxEvCallbacks;)V

    .line 322
    const/4 v0, 0x1

    .line 327
    :goto_0
    return v0

    .line 325
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerTransmitClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z
    .locals 3
    .param p1, "callback"    # Landroid/hardware/fmradio/FmRxEvCallbacks;

    .prologue
    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "bReturnStatus":Z
    if-eqz p1, :cond_0

    .line 389
    const/4 v0, 0x1

    .line 394
    :goto_0
    return v0

    .line 392
    :cond_0
    const-string v1, "FmTransceiver"

    const-string v2, "Null, do nothing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setNotchFilter(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 573
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setNotchFilterNative(Z)V

    .line 574
    return-void
.end method

.method public setStation(I)Z
    .locals 3
    .param p1, "frequencyKHz"    # I

    .prologue
    .line 548
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    invoke-virtual {v1, p1}, Landroid/hardware/fmradio/FmRxControls;->setFreq(I)V

    .line 549
    iget-object v1, p0, Landroid/hardware/fmradio/FmTransceiver;->mControl:Landroid/hardware/fmradio/FmRxControls;

    sget v2, Landroid/hardware/fmradio/FmTransceiver;->sFd:I

    invoke-virtual {v1, v2}, Landroid/hardware/fmradio/FmRxControls;->setStation(I)I

    move-result v0

    .line 550
    .local v0, "ret":I
    if-gez v0, :cond_0

    .line 552
    const/4 v1, 0x0

    .line 556
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unregisterClient()Z
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Landroid/hardware/fmradio/FmTransceiver;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    invoke-virtual {v0}, Landroid/hardware/fmradio/FmRxEventListner;->stopListener()V

    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterTransmitClient()Z
    .locals 1

    .prologue
    .line 415
    const/4 v0, 0x1

    return v0
.end method
