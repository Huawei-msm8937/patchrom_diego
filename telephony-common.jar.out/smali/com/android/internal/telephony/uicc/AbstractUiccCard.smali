.class public Lcom/android/internal/telephony/uicc/AbstractUiccCard;
.super Ljava/lang/Object;
.source "AbstractUiccCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;
    }
.end annotation


# static fields
.field protected static final EVENT_CARD_UIM_LOCK:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "AbstractUiccCard"


# instance fields
.field protected bCardUimLocked:Z

.field private mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->bCardUimLocked:Z

    .line 19
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwUiccManager;->createHwUiccCardReference(Lcom/android/internal/telephony/uicc/AbstractUiccCard;)Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    .line 21
    return-void
.end method


# virtual methods
.method public closeLogicalChannel(ILandroid/os/Message;)V
    .locals 1
    .param p1, "channel"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->closeLogicalChannel(ILandroid/os/Message;)V

    .line 77
    return-void
.end method

.method public displayRestartDialog(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->displayRestartDialog(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public displayUimTipDialog(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->displayUimTipDialog(Landroid/content/Context;I)V

    .line 103
    return-void
.end method

.method public exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "channel"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V

    .line 69
    return-void
.end method

.method public exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "pathID"    # Ljava/lang/String;
    .param p7, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V

    .line 84
    return-void
.end method

.method public getNumApplications()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->getNumApplications()I

    move-result v0

    return v0
.end method

.method public getSimAddDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "buttonTxt"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->getSimAddDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public hasAppActived()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    invoke-interface {v0}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->hasAppActived()Z

    move-result v0

    return v0
.end method

.method public iccGetATR(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->iccGetATR(Landroid/os/Message;)V

    .line 90
    return-void
.end method

.method public isAllAndCardRemoved(Z)Z
    .locals 1
    .param p1, "isAdded"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->isAllAndCardRemoved(Z)Z

    move-result v0

    return v0
.end method

.method public isCardUimLocked()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->bCardUimLocked:Z

    return v0
.end method

.method public openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "AID"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractUiccCard;->mReference:Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;->openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 73
    return-void
.end method
