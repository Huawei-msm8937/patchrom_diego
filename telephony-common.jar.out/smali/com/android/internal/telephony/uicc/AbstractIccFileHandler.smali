.class public Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;
.super Landroid/os/Handler;
.source "AbstractIccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;
    }
.end annotation


# instance fields
.field protected mReference:Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 13
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/HwUiccManager;->createHwIccFileHandlerReference(Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;)Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;

    .line 15
    return-void
.end method


# virtual methods
.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 59
    instance-of v0, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lcom/android/internal/telephony/uicc/IccFileHandler;

    .end local p0    # "this":Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccFileHandlerUtils;->getParentApp(Lcom/android/internal/telephony/uicc/IccFileHandler;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;->getSmscAddress(Landroid/os/Message;)V

    .line 41
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;->handleMessage(Landroid/os/Message;)V

    .line 51
    return-void
.end method

.method public loadEFLinearFixedPartHW(ILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 1
    .param p1, "fileid"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;
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

    .prologue
    .line 55
    .local p2, "recordNums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;->loadEFLinearFixedPartHW(ILjava/util/ArrayList;Landroid/os/Message;)V

    .line 56
    return-void
.end method

.method public loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileid"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;)V

    .line 30
    return-void
.end method

.method public loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;Z)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileid"    # I
    .param p3, "onLoaded"    # Landroid/os/Message;
    .param p4, "isForApp"    # Z

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;->loadEFTransparent(Ljava/lang/String;ILandroid/os/Message;Z)V

    .line 35
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler;->mReference:Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/uicc/AbstractIccFileHandler$IccFileHandlerReference;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 45
    return-void
.end method
