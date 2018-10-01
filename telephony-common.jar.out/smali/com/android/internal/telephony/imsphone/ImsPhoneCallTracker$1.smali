.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.ims.IMS_INCOMING_CALL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 101
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v8, "onReceive : incoming call intent"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 103
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v7

    if-nez v7, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I
    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v7

    if-ltz v7, :cond_0

    .line 109
    :try_start_0
    const-string v7, "android:ussd"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 110
    .local v4, "isUssd":Z
    if-eqz v4, :cond_2

    .line 111
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v8, "onReceive : USSD"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 112
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I
    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsUssdListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v10}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$300(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v10

    invoke-virtual {v8, v9, p2, v10}, Lcom/android/ims/ImsManager;->takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v8

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    invoke-static {v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$202(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/ims/ImsCall;

    .line 113
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 114
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mUssdSession:Lcom/android/ims/ImsCall;
    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$200(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/ims/ImsCall;->accept(I)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 149
    .end local v4    # "isUssd":Z
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Lcom/android/ims/ImsException;
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v1    # "e":Lcom/android/ims/ImsException;
    .restart local v4    # "isUssd":Z
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsManager:Lcom/android/ims/ImsManager;
    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$000(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mServiceId:I
    invoke-static {v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$100(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mImsCallListener:Lcom/android/ims/ImsCall$Listener;
    invoke-static {v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$400(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Lcom/android/ims/ImsCall$Listener;

    move-result-object v9

    invoke-virtual {v7, v8, p2, v9}, Lcom/android/ims/ImsManager;->takeCall(ILandroid/content/Intent;Lcom/android/ims/ImsCall$Listener;)Lcom/android/ims/ImsCall;

    move-result-object v2

    .line 121
    .local v2, "imsCall":Lcom/android/ims/ImsCall;
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v9, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v9, v9, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {v0, v7, v2, v8, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;-><init>(Landroid/content/Context;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 123
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->addConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    invoke-static {v7, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$500(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    .line 125
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->setVideoCallProvider(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V
    invoke-static {v7, v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$600(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 127
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_4

    .line 129
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 133
    :cond_4
    const-string v7, "codeaurora:isUnknown"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 134
    .local v3, "isUnKnown":Z
    const-string v7, "codeaurora.unknownCallState"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 135
    .local v6, "status":I
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isUnKnown :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 137
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->convertIntToCallState(I)Lcom/android/internal/telephony/Call$State;
    invoke-static {v7, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$700(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;I)Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 138
    .local v5, "state":Lcom/android/internal/telephony/Call$State;
    if-eqz v3, :cond_5

    .line 139
    invoke-virtual {v0, v2, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->update(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z

    .line 140
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnKnowConnection(Lcom/android/internal/telephony/Connection;)V

    .line 147
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # invokes: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->updatePhoneState()V
    invoke-static {v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V

    .line 148
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 151
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "imsCall":Lcom/android/ims/ImsCall;
    .end local v3    # "isUnKnown":Z
    .end local v4    # "isUssd":Z
    .end local v5    # "state":Lcom/android/internal/telephony/Call$State;
    .end local v6    # "status":I
    :catch_1
    move-exception v7

    goto/16 :goto_0

    .line 142
    .restart local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .restart local v2    # "imsCall":Lcom/android/ims/ImsCall;
    .restart local v3    # "isUnKnown":Z
    .restart local v4    # "isUssd":Z
    .restart local v5    # "state":Lcom/android/internal/telephony/Call$State;
    .restart local v6    # "status":I
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V

    .line 143
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$1;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v7, v7, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyIncomingRing()V
    :try_end_1
    .catch Lcom/android/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1
.end method
