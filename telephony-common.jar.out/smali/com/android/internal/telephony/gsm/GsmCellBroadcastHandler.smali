.class public Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
.super Lcom/android/internal/telephony/CellBroadcastHandler;
.source "GsmCellBroadcastHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static final VDBG:Z


# instance fields
.field private mHwCustGsmCellBroadcastHandler:Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 55
    const-string v0, "GsmCellBroadcastHandler"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/CellBroadcastHandler;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 51
    new-instance v0, Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;

    invoke-direct {v0}, Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mHwCustGsmCellBroadcastHandler:Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;

    .line 56
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method private handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;
    .locals 22
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 101
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    move-object/from16 v0, v20

    check-cast v0, [B

    move-object/from16 v19, v0

    .line 119
    .local v19, "receivedPdu":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mHwCustGsmCellBroadcastHandler:Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mHwCustGsmCellBroadcastHandler:Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;->cbsPduAfterDiscardNullBlock([B)[B

    move-result-object v19

    .line 124
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object/from16 v0, v19

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 125
    .local v8, "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v18

    .line 127
    .local v18, "plmn":Ljava/lang/String;
    const/4 v12, -0x1

    .line 128
    .local v12, "lac":I
    const/4 v4, -0x1

    .line 129
    .local v4, "cid":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    .line 133
    .local v5, "cl":Landroid/telephony/CellLocation;
    instance-of v0, v5, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 134
    move-object v0, v5

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v3, v0

    .line 135
    .local v3, "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v12

    .line 136
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v4

    .line 140
    .end local v3    # "cellLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 152
    :pswitch_0
    new-instance v14, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    .line 157
    .local v14, "location":Landroid/telephony/SmsCbLocation;
    :goto_0
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v15

    .line 158
    .local v15, "pageCount":I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v15, v0, :cond_6

    .line 160
    new-instance v6, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    invoke-direct {v6, v8, v14}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;)V

    .line 163
    .local v6, "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [[B

    .line 165
    .local v17, "pdus":[[B
    if-nez v17, :cond_2

    .line 168
    new-array v0, v15, [[B

    move-object/from16 v17, v0

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :cond_2
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    aput-object v19, v17, v20

    .line 176
    move-object/from16 v2, v17

    .local v2, "arr$":[[B
    array-length v13, v2

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_4

    aget-object v16, v2, v9

    .line 177
    .local v16, "pdu":[B
    if-nez v16, :cond_3

    .line 179
    const/16 v20, 0x0

    .line 208
    .end local v2    # "arr$":[[B
    .end local v4    # "cid":I
    .end local v5    # "cl":Landroid/telephony/CellLocation;
    .end local v6    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v9    # "i$":I
    .end local v12    # "lac":I
    .end local v13    # "len$":I
    .end local v14    # "location":Landroid/telephony/SmsCbLocation;
    .end local v15    # "pageCount":I
    .end local v16    # "pdu":[B
    .end local v17    # "pdus":[[B
    .end local v18    # "plmn":Ljava/lang/String;
    .end local v19    # "receivedPdu":[B
    :goto_2
    return-object v20

    .line 142
    .restart local v4    # "cid":I
    .restart local v5    # "cl":Landroid/telephony/CellLocation;
    .restart local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v12    # "lac":I
    .restart local v18    # "plmn":Ljava/lang/String;
    .restart local v19    # "receivedPdu":[B
    :pswitch_1
    new-instance v14, Landroid/telephony/SmsCbLocation;

    const/16 v20, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-direct {v14, v0, v12, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 143
    .restart local v14    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 147
    .end local v14    # "location":Landroid/telephony/SmsCbLocation;
    :pswitch_2
    new-instance v14, Landroid/telephony/SmsCbLocation;

    move-object/from16 v0, v18

    invoke-direct {v14, v0, v12, v4}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;II)V

    .line 148
    .restart local v14    # "location":Landroid/telephony/SmsCbLocation;
    goto :goto_0

    .line 176
    .restart local v2    # "arr$":[[B
    .restart local v6    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .restart local v9    # "i$":I
    .restart local v13    # "len$":I
    .restart local v15    # "pageCount":I
    .restart local v16    # "pdu":[B
    .restart local v17    # "pdus":[[B
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 184
    .end local v16    # "pdu":[B
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v2    # "arr$":[[B
    .end local v6    # "concatInfo":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 196
    .local v11, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_5
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 197
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;

    .line 199
    .local v10, "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v12, v4}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v20

    if-nez v20, :cond_5

    .line 200
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 206
    .end local v4    # "cid":I
    .end local v5    # "cl":Landroid/telephony/CellLocation;
    .end local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v10    # "info":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;
    .end local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    .end local v12    # "lac":I
    .end local v14    # "location":Landroid/telephony/SmsCbLocation;
    .end local v15    # "pageCount":I
    .end local v17    # "pdus":[[B
    .end local v18    # "plmn":Ljava/lang/String;
    .end local v19    # "receivedPdu":[B
    :catch_0
    move-exception v7

    .line 207
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v20, "Error in decoding SMS CB pdu"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    const/16 v20, 0x0

    goto :goto_2

    .line 187
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "cid":I
    .restart local v5    # "cl":Landroid/telephony/CellLocation;
    .restart local v8    # "header":Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v12    # "lac":I
    .restart local v14    # "location":Landroid/telephony/SmsCbLocation;
    .restart local v15    # "pageCount":I
    .restart local v18    # "plmn":Ljava/lang/String;
    .restart local v19    # "receivedPdu":[B
    :cond_6
    const/16 v20, 0x1

    :try_start_1
    move/from16 v0, v20

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 188
    .restart local v17    # "pdus":[[B
    const/16 v20, 0x0

    aput-object v19, v17, v20

    goto :goto_3

    .line 204
    .restart local v11    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler$SmsCbConcatInfo;>;"
    :cond_7
    move-object/from16 v0, v17

    invoke-static {v8, v14, v0}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v20

    goto :goto_2

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static makeGsmCellBroadcastHandler(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 72
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)V

    .line 73
    .local v0, "handler":Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->start()V

    .line 74
    return-object v0
.end method


# virtual methods
.method protected handleSmsMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 85
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/AsyncResult;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleGsmBroadcastSms(Landroid/os/AsyncResult;)Landroid/telephony/SmsCbMessage;

    move-result-object v0

    .line 87
    .local v0, "cbMessage":Landroid/telephony/SmsCbMessage;
    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->handleBroadcastSms(Landroid/telephony/SmsCbMessage;)V

    .line 89
    const/4 v1, 0x1

    .line 92
    .end local v0    # "cbMessage":Landroid/telephony/SmsCbMessage;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/CellBroadcastHandler;->handleSmsMessage(Landroid/os/Message;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onQuitting()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmCellBroadcastHandler;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnNewGsmBroadcastSms(Landroid/os/Handler;)V

    .line 62
    invoke-super {p0}, Lcom/android/internal/telephony/CellBroadcastHandler;->onQuitting()V

    .line 63
    return-void
.end method
