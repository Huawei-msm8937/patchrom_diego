.class public Lcom/android/internal/telephony/dataconnection/HwCustApnReminder;
.super Ljava/lang/Object;
.source "HwCustApnReminder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public dataRoamingSwitchForCust(Ljava/lang/String;Landroid/content/Context;IZ)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "mContext"    # Landroid/content/Context;
    .param p3, "mSlotId"    # I
    .param p4, "isMultiSimEnabled"    # Z

    .prologue
    .line 33
    return-void
.end method

.method public deletePreferApn(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    .line 70
    return-void
.end method

.method public handleAllApnPermActiveFailed(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 40
    return-void
.end method

.method public notifyDisableAp(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldImsi"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public setSimRefreshingState(Z)V
    .locals 0
    .param p1, "bSimRefreshing"    # Z

    .prologue
    .line 49
    return-void
.end method

.method public showNewAddAPN(Landroid/content/Context;Landroid/app/AlertDialog$Builder;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 65
    return-void
.end method
