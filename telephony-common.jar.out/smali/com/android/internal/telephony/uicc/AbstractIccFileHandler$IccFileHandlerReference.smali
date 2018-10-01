.class public interface abstract Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;
.super Ljava/lang/Object;
.source "AbstractIccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IccFileHandlerReference"
.end annotation


# virtual methods
.method public abstract getSmscAddress(Landroid/os/Message;)V
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public abstract loadEFLinearFixedPartHW(ILjava/util/ArrayList;Landroid/os/Message;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation
.end method

.method public abstract loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;Z)V
.end method

.method public abstract setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
.end method
