.class public Lcom/android/internal/telephony/gsm/HwCustGsmServiceStateTracker;
.super Ljava/lang/Object;
.source "HwCustGsmServiceStateTracker.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "gsmPhone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HwCustGsmServiceStateTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 40
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HwCustGsmServiceStateTracker;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method


# virtual methods
.method public custHandlePollStateResult(ILandroid/os/AsyncResult;[I)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;
    .param p3, "pollingContext"    # [I

    .prologue
    .line 115
    return-void
.end method

.method public handleNetworkRejection(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "regState"    # I
    .param p2, "states"    # [Ljava/lang/String;

    .prologue
    .line 124
    return-void
.end method

.method public isChangeUeCenter()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public isInServiceState(I)Z
    .locals 1
    .param p1, "combinedregstate"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isInServiceState(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "ss"    # Landroid/telephony/ServiceState;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isStopUpdateName()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public launchOrCancelCsgPeriodicSearchTimer()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method public setEmergencyToNoService(Landroid/telephony/ServiceState;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0
    .param p1, "mSS"    # Landroid/telephony/ServiceState;
    .param p2, "plmn"    # Ljava/lang/String;
    .param p3, "mEmergencyOnly"    # Z

    .prologue
    .line 64
    return-object p2
.end method

.method public setExtPlmnSent(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 110
    return-void
.end method

.method public setPsCell(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;[Ljava/lang/String;)V
    .locals 0
    .param p1, "ss"    # Landroid/telephony/ServiceState;
    .param p2, "newCellLoc"    # Landroid/telephony/gsm/GsmCellLocation;
    .param p3, "states"    # [Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public setRadioPower(Lcom/android/internal/telephony/CommandsInterface;Z)V
    .locals 0
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "enabled"    # Z

    .prologue
    .line 53
    return-void
.end method

.method public updateRomingVoicemailNumber(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "currentState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 44
    return-void
.end method

.method public updateUeCenter()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
