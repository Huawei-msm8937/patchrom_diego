.class public Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "AbstractSubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;
    }
.end annotation


# static fields
.field public static final IS_MODEM_CAPABILITY_SUPPORT:Z

.field public static final SIM_WITH_SAME_ICCID1:I = 0x1

.field public static final SIM_WITH_SAME_ICCID2:I = 0x2

.field protected static mNeedUpdate:Z


# instance fields
.field mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 17
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->IS_MODEM_CAPABILITY_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwUiccManager;->createHwSubscriptionInfoUpdaterReference(Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;)Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    .line 23
    return-void
.end method


# virtual methods
.method public broadcastSubinfoRecordUpdated([Ljava/lang/String;[Ljava/lang/String;III)V
    .locals 6
    .param p1, "iccId"    # [Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;
    .param p3, "nNewCardCount"    # I
    .param p4, "nSubCount"    # I
    .param p5, "nNewSimStatus"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;->broadcastSubinfoRecordUpdated([Ljava/lang/String;[Ljava/lang/String;III)V

    .line 70
    return-void
.end method

.method public handleMessageExtend(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;->handleMessageExtend(Landroid/os/Message;)V

    .line 45
    return-void
.end method

.method public queryIccId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;->queryIccId(I)V

    .line 53
    return-void
.end method

.method public resetIccid(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;->resetIccid(I)V

    .line 58
    return-void
.end method

.method public setNeedUpdate(Z)V
    .locals 0
    .param p1, "needupdate"    # Z

    .prologue
    .line 73
    sput-boolean p1, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mNeedUpdate:Z

    .line 74
    return-void
.end method

.method public setNeedUpdateIfNeed(ILjava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "currentIccId"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;->setNeedUpdateIfNeed(ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public subscriptionInfoInit(Landroid/os/Handler;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;->subscriptionInfoInit(Landroid/os/Handler;Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    .line 41
    return-void
.end method

.method public updateIccAvailability(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;->updateIccAvailability(I)V

    .line 49
    return-void
.end method

.method public updateSubActivation([IZ)V
    .locals 1
    .param p1, "simStatus"    # [I
    .param p2, "isStackReadyEvent"    # Z

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;->updateSubActivation([IZ)V

    .line 66
    return-void
.end method

.method public updateSubIdForNV(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater;->mReference:Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/AbstractSubscriptionInfoUpdater$SubscriptionInfoUpdaterReference;->updateSubIdForNV(I)V

    .line 62
    return-void
.end method
