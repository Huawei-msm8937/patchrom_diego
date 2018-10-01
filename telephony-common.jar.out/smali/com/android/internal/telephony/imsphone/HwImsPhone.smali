.class public Lcom/android/internal/telephony/imsphone/HwImsPhone;
.super Landroid/os/Handler;
.source "HwImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;
    }
.end annotation


# static fields
.field private static final EVENT_GET_CLIR_DONE:I = 0x66

.field private static final EVENT_HW_IMS:I = 0x64

.field private static final EVENT_SET_CALL_FORWARD_TIMER_DONE:I = 0x67

.field private static final EVENT_SET_CLIR_DONE:I = 0x65

.field private static final LOG_TAG:Ljava/lang/String; = "HwImsPhone"


# instance fields
.field private isBusy:Z

.field isImsEvent:Z

.field mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 1
    .param p1, "ct"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isBusy:Z

    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 72
    return-void
.end method

.method private getActionFromCFAction(I)I
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 356
    packed-switch p1, :pswitch_data_0

    .line 365
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 357
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 358
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 359
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 360
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getConditionFromCFReason(I)I
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 369
    packed-switch p1, :pswitch_data_0

    .line 380
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 370
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 371
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 373
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 374
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 375
    :pswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isCfEnable(I)Z
    .locals 2
    .param p1, "action"    # I

    .prologue
    const/4 v0, 0x1

    .line 352
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I

    .prologue
    .line 267
    packed-switch p1, :pswitch_data_0

    .line 274
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 272
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I

    .prologue
    .line 253
    packed-switch p1, :pswitch_data_0

    .line 262
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 260
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "result"    # Ljava/lang/Object;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    if-eqz p3, :cond_1

    .line 283
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 284
    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 288
    :goto_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 290
    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void

    .line 286
    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_1
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0
.end method


# virtual methods
.method public beforeHandleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->handleMessage(Landroid/os/Message;)V

    .line 348
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isImsEvent:Z

    return v0
.end method

.method public disableUTForQcom()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->disableUTForQcom()V

    .line 401
    return-void
.end method

.method public enableUTForQcom()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->enableUTForQcom()V

    .line 405
    return-void
.end method

.method getCommandException(I)Lcom/android/internal/telephony/CommandException;
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 302
    const-string v1, "HwImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCommandException code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 305
    .local v0, "error":Lcom/android/internal/telephony/CommandException$Error;
    sparse-switch p1, :sswitch_data_0

    .line 326
    :goto_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    return-object v1

    .line 307
    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    .line 308
    goto :goto_0

    .line 310
    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    .line 311
    goto :goto_0

    .line 314
    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->UT_NO_CONNECTION:Lcom/android/internal/telephony/CommandException$Error;

    .line 315
    goto :goto_0

    .line 319
    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    .line 320
    goto :goto_0

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0xf2 -> :sswitch_3
        0x321 -> :sswitch_0
        0x335 -> :sswitch_1
        0x33f -> :sswitch_2
    .end sparse-switch
.end method

.method getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 332
    .local v0, "ex":Lcom/android/internal/telephony/CommandException;
    instance-of v1, p1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_0

    .line 333
    check-cast p1, Lcom/android/ims/ImsException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->getCommandException(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    .line 335
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    instance-of v1, p1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_1

    .line 336
    const-string v1, "HwImsPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "e instanceof CommandException  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    check-cast p1, Lcom/android/internal/telephony/CommandException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    goto :goto_0

    .line 340
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_1
    const-string v1, "HwImsPhone"

    const-string v2, "getCommandException generic failure"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    .end local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .restart local v0    # "ex":Lcom/android/internal/telephony/CommandException;
    goto :goto_0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 5
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 116
    const-string v3, "HwImsPhone"

    const-string v4, "getCLIR"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v1, 0x0

    .line 119
    .local v1, "resp":Landroid/os/Message;
    const/16 v3, 0x66

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 121
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 123
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, v1}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 76
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 79
    .local v0, "ar":Landroid/os/AsyncResult;
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isImsEvent:Z

    .line 80
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 108
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isImsEvent:Z

    .line 112
    :goto_0
    const-string v4, "HwImsPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isImsEvent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isImsEvent:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 83
    :pswitch_0
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v4, v4, Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 84
    const/4 v2, 0x0

    .line 85
    .local v2, "clirInfo":[I
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 87
    .local v3, "ssInfo":Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 88
    const-string v4, "queryClir"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 91
    :cond_0
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v4, v2, v5}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    .end local v2    # "clirInfo":[I
    .end local v3    # "ssInfo":Landroid/os/Bundle;
    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    :pswitch_1
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v4, v6, v5}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :pswitch_2
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;

    .line 104
    .local v1, "cft":Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;
    iget-object v4, v1, Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;->mOnComplete:Landroid/os/Message;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v4, v6, v5}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->sendResponse(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isBusy()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isBusy:Z

    return v0
.end method

.method public isSupportCFT()Z
    .locals 6

    .prologue
    .line 144
    const-string v3, "HwImsPhone"

    const-string v4, "isSupportCFT"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    .line 148
    .local v1, "isSupportCFT":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 150
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2}, Lcom/android/ims/ImsUtInterface;->isSupportCFT()Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v3, "HwImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isUtEnable()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 160
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 163
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v1}, Lcom/android/ims/ImsUtInterface;->isUtEnable()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->isUtEnabledForQcom()Z
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 169
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    :cond_1
    :goto_0
    return v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v3, "HwImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ImsException e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public popUtMessage(I)Landroid/os/Message;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 232
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v1

    .line 234
    .local v1, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v1, p1}, Lcom/android/ims/ImsUtInterface;->popUtMessage(I)Landroid/os/Message;
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 239
    .end local v1    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-object v2

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string v2, "HwImsPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsException e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v2, 0x0

    goto :goto_0
.end method

.method sendErrorResponse(Landroid/os/Message;)V
    .locals 3
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 293
    const-string v0, "HwImsPhone"

    const-string v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-eqz p1, :cond_0

    .line 295
    const/4 v0, 0x0

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 297
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 299
    :cond_0
    return-void
.end method

.method sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 245
    const-string v0, "HwImsPhone"

    const-string v1, "sendErrorResponse"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-eqz p1, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 248
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 250
    :cond_0
    return-void
.end method

.method public setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 13
    .param p1, "startHour"    # I
    .param p2, "startMinute"    # I
    .param p3, "endHour"    # I
    .param p4, "endMinute"    # I
    .param p5, "commandInterfaceCFAction"    # I
    .param p6, "commandInterfaceCFReason"    # I
    .param p7, "dialingNumber"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 197
    const-string v3, "HwImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallForwardingUncondTimerOption action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", startHour="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", startMinute="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endHour="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endMinute="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 205
    const/4 v10, 0x0

    .line 207
    .local v10, "resp":Landroid/os/Message;
    new-instance v11, Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;

    if-nez p6, :cond_1

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-direct {v11, v0, v3, v1}, Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;-><init>(Ljava/lang/String;ZLandroid/os/Message;)V

    .line 211
    .local v11, "cf":Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;
    const/16 v4, 0x67

    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isCfEnable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v3, v5, v11}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 217
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->getActionFromCFAction(I)I

    move-result v7

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->getConditionFromCFReason(I)I

    move-result v8

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/android/ims/ImsUtInterface;->updateCallForwardUncondTimer(IIIIIILjava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    .end local v10    # "resp":Landroid/os/Message;
    .end local v11    # "cf":Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;
    :cond_0
    :goto_2
    return-void

    .line 207
    .restart local v10    # "resp":Landroid/os/Message;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 211
    .restart local v11    # "cf":Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 221
    :catch_0
    move-exception v12

    .line 222
    .local v12, "e":Lcom/android/ims/ImsException;
    move-object/from16 v0, p8

    invoke-virtual {p0, v0, v12}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 224
    .end local v10    # "resp":Landroid/os/Message;
    .end local v11    # "cf":Lcom/android/internal/telephony/imsphone/HwImsPhone$Cf;
    .end local v12    # "e":Lcom/android/ims/ImsException;
    :cond_3
    if-eqz p8, :cond_0

    .line 225
    move-object/from16 v0, p8

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->sendErrorResponse(Landroid/os/Message;)V

    goto :goto_2
.end method

.method public setIsBusy(Z)V
    .locals 0
    .param p1, "isImsPhoneBusy"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->isBusy:Z

    .line 386
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 6
    .param p1, "clirMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 130
    const-string v3, "HwImsPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCLIR action= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "resp":Landroid/os/Message;
    const/16 v3, 0x65

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 135
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/HwImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v2

    .line 137
    .local v2, "ut":Lcom/android/ims/ImsUtInterface;
    invoke-interface {v2, p1, v1}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v2    # "ut":Lcom/android/ims/ImsUtInterface;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lcom/android/ims/ImsException;
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/imsphone/HwImsPhone;->sendErrorResponse(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
