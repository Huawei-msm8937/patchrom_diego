.class public Lcom/android/internal/telephony/gsm/HwCustGsmServiceStateManager;
.super Ljava/lang/Object;
.source "HwCustGsmServiceStateManager.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCr:Landroid/content/ContentResolver;

.field protected mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field protected mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 1
    .param p1, "sst"    # Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
    .param p2, "gsmPhone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HwCustGsmServiceStateManager;->mGsst:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 41
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/HwCustGsmServiceStateManager;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 42
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HwCustGsmServiceStateManager;->mContext:Landroid/content/Context;

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/HwCustGsmServiceStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/HwCustGsmServiceStateManager;->mCr:Landroid/content/ContentResolver;

    .line 44
    return-void
.end method


# virtual methods
.method public SetOnsDisplayCustomization(Lcom/android/internal/telephony/OnsDisplayParams;Landroid/telephony/ServiceState;)Lcom/android/internal/telephony/OnsDisplayParams;
    .locals 0
    .param p1, "odp"    # Lcom/android/internal/telephony/OnsDisplayParams;
    .param p2, "currentState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 89
    return-object p1
.end method

.method public SetRoamingStateForOperatorCustomization(Landroid/telephony/ServiceState;Z)Z
    .locals 0
    .param p1, "currentState"    # Landroid/telephony/ServiceState;
    .param p2, "ParaRoamingState"    # Z

    .prologue
    .line 49
    return p2
.end method

.method public getCustIntentFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 0
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 127
    return-object p1
.end method

.method public getGsmOnsDisplayParamsForGlobalOperator(ZZILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/OnsDisplayParams;
    .locals 1
    .param p1, "showSpn"    # Z
    .param p2, "showPlmn"    # Z
    .param p3, "rule"    # I
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "spn"    # Ljava/lang/String;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGsmOnsDisplayParamsForVideotron(ZZILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/OnsDisplayParams;
    .locals 1
    .param p1, "showSpn"    # Z
    .param p2, "showPlmn"    # Z
    .param p3, "rule"    # I
    .param p4, "plmn"    # Ljava/lang/String;
    .param p5, "spn"    # Ljava/lang/String;

    .prologue
    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVirtualNetOnsDisplayParams()Lcom/android/internal/telephony/OnsDisplayParams;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;I)I
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rac"    # I

    .prologue
    .line 138
    return p3
.end method

.method public notUseVirtualName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public skipPlmnUpdateFromCust()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public storeModemRoamingStatus(Z)V
    .locals 0
    .param p1, "roaming"    # Z

    .prologue
    .line 109
    return-void
.end method
