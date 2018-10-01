.class public interface abstract Lcom/android/internal/telephony/uicc/AbstractUiccController$UiccControllerReference;
.super Ljava/lang/Object;
.source "AbstractUiccController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AbstractUiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UiccControllerReference"
.end annotation


# virtual methods
.method public abstract getCardType(I)I
.end method

.method public abstract getUiccCardStatus(Landroid/os/Message;I)V
.end method

.method public abstract notifyFdnStatusChange()V
.end method

.method public abstract processRadioPowerDownIfNoCard([Lcom/android/internal/telephony/uicc/UiccCard;)V
.end method

.method public abstract registerForFdnStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract unregisterForFdnStatusChange(Landroid/os/Handler;)V
.end method
