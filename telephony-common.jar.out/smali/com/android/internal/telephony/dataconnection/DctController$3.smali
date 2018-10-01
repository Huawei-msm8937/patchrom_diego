.class Lcom/android/internal/telephony/dataconnection/DctController$3;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x1

    .line 239
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x320

    if-lt v8, v9, :cond_1

    .line 240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_PHONE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    add-int/lit16 v9, v9, -0x320

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_EMERGENCY_CALL_END."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 242
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 243
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    .line 244
    .local v7, "toggle":Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    add-int/lit16 v9, v9, -0x320

    aget-object v8, v8, v9

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyEmergencyCallToggled(I)V

    .line 299
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v7    # "toggle":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x2ee

    if-lt v8, v9, :cond_2

    .line 250
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_PHONE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    add-int/lit16 v9, v9, -0x2ee

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_RADIO_OFF_OR_NOT_AVAILABLE."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 252
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v6, v8, -0x2ee

    .line 253
    .local v6, "phoneId":I
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v8

    if-ge v6, v8, :cond_0

    if-ltz v6, :cond_0

    .line 254
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " radio on with false"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 255
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mRadioOn:[Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$300(Lcom/android/internal/telephony/dataconnection/DctController;)[Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    aget-object v8, v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 257
    .end local v6    # "phoneId":I
    :cond_2
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x2bc

    if-lt v8, v9, :cond_7

    .line 258
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_PHONE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    add-int/lit16 v9, v9, -0x2bc

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_RADIO_ON."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 260
    iget v8, p1, Landroid/os/Message;->what:I

    add-int/lit16 v6, v8, -0x2bc

    .line 261
    .restart local v6    # "phoneId":I
    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->IS_HISI_CDMA_SUPPORTED:Z
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->access$400()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v8

    if-ge v6, v8, :cond_4

    if-ltz v6, :cond_4

    .line 262
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mRadioOn:[Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$300(Lcom/android/internal/telephony/dataconnection/DctController;)[Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 263
    const-string v8, "already radio on, return"

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " radio on with true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 267
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mRadioOn:[Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$300(Lcom/android/internal/telephony/dataconnection/DctController;)[Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    aget-object v8, v8, v6

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 269
    :cond_4
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/telephony/HwInnerTelephonyManager;->getDefault4GSlotId()I

    move-result v1

    .line 270
    .local v1, "default4g":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v8

    int-to-long v2, v8

    .line 272
    .local v2, "defaultDataSubId":J
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->isDSDSManualPsAttach:Z
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$500(Lcom/android/internal/telephony/dataconnection/DctController;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_5

    int-to-long v8, v6

    cmp-long v8, v2, v8

    if-nez v8, :cond_5

    .line 273
    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->IS_HISI_CDMA_SUPPORTED:Z
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->access$400()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v8

    if-ge v6, v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDefault4GSlot:[I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[I

    move-result-object v8

    aget v8, v8, v6

    if-eq v8, v1, :cond_6

    .line 275
    const-string v8, "radio on by 4g switch , hisi cdma need not to setDataAllowed true"

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 283
    :cond_5
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhoneNum:I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 284
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "old default4gslot is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDefault4GSlot:[I
    invoke-static {v9}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[I

    move-result-object v9

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " new default4gslot is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 285
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDefault4GSlot:[I
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$600(Lcom/android/internal/telephony/dataconnection/DctController;)[I

    move-result-object v8

    aput v1, v8, v6

    goto/16 :goto_0

    .line 277
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_PHONE active the data sub:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " PS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 278
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$700(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v8

    aget-object v5, v8, v6

    .line 279
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/PhoneBase;

    .line 280
    .local v4, "pb":Lcom/android/internal/telephony/PhoneBase;
    iget-object v8, v4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    invoke-interface {v8, v10, v9}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    goto :goto_1

    .line 287
    .end local v1    # "default4g":I
    .end local v2    # "defaultDataSubId":J
    .end local v4    # "pb":Lcom/android/internal/telephony/PhoneBase;
    .end local v6    # "phoneId":I
    :cond_7
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x258

    if-lt v8, v9, :cond_8

    .line 290
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_PHONE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    add-int/lit16 v9, v9, -0x258

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_DATA_DETACH."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 292
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    add-int/lit16 v9, v9, -0x258

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataDetached()V

    goto/16 :goto_0

    .line 294
    :cond_8
    iget v8, p1, Landroid/os/Message;->what:I

    const/16 v9, 0x1f4

    if-lt v8, v9, :cond_0

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_PHONE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    add-int/lit16 v9, v9, -0x1f4

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_DATA_ATTACH."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    .line 297
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v8}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    add-int/lit16 v9, v9, -0x1f4

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataAttached()V

    goto/16 :goto_0
.end method
