.class public interface abstract Lcom/android/internal/telephony/uicc/AbstractUiccCard$UiccCardReference;
.super Ljava/lang/Object;
.source "AbstractUiccCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AbstractUiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UiccCardReference"
.end annotation


# virtual methods
.method public abstract closeLogicalChannel(ILandroid/os/Message;)V
.end method

.method public abstract displayRestartDialog(Landroid/content/Context;)V
.end method

.method public abstract displayUimTipDialog(Landroid/content/Context;I)V
.end method

.method public abstract exchangeAPDU(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract exchangeSimIO(IIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getNumApplications()I
.end method

.method public abstract getSimAddDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
.end method

.method public abstract hasAppActived()Z
.end method

.method public abstract iccGetATR(Landroid/os/Message;)V
.end method

.method public abstract isAllAndCardRemoved(Z)Z
.end method

.method public abstract openLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V
.end method
