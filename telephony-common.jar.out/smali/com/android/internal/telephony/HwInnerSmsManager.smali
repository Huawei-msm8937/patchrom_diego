.class public interface abstract Lcom/android/internal/telephony/HwInnerSmsManager;
.super Ljava/lang/Object;
.source "HwInnerSmsManager.java"


# virtual methods
.method public abstract addSlotIdForSimFullIntent(Landroid/content/Intent;Lcom/android/internal/telephony/PhoneBase;)V
.end method

.method public abstract allowToSetSmsWritePermission(Ljava/lang/String;)Z
.end method

.method public abstract calcTextEncodingDetailsEx(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
.end method

.method public abstract checkShouldWriteSmsPackage(Ljava/lang/String;Landroid/content/Context;)Z
.end method

.method public abstract createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;
.end method

.method public abstract createHwCdmaSMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.end method

.method public abstract createHwGsmSMSDispatcher(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.end method

.method public abstract createHwIccSmsInterfaceManager(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end method

.method public abstract createHwWapPushOverSms(Landroid/content/Context;)Lcom/android/internal/telephony/WapPushOverSms;
.end method

.method public abstract createHwWapPushOverSms(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)Lcom/android/internal/telephony/WapPushOverSms;
.end method

.method public abstract createHwWspTypeDecoder([B)Lcom/android/internal/telephony/WspTypeDecoder;
.end method

.method public abstract createSmsInterceptionService(Landroid/content/Context;)V
.end method

.method public abstract currentSubIsChinaTelecomSim(I)Z
.end method

.method public abstract doubleSmsStatusCheck(Lcom/android/internal/telephony/cdma/SmsMessage;)V
.end method

.method public abstract encode7bitMultiSms(Lcom/android/internal/telephony/cdma/sms/UserData;[BZ)Z
.end method

.method public abstract encodeMsgCenterTimeStampCheck(Lcom/android/internal/telephony/cdma/sms/BearerData;Lcom/android/internal/util/BitwiseOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation
.end method

.method public abstract fragmentForEmptyText()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCdmaSub()I
.end method

.method public abstract getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getMessageRefrenceNumber()I
.end method

.method public abstract getNewbyte()[B
.end method

.method public abstract getPackageInfoByPid(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;[Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;
.end method

.method public abstract getSmscAddr()Ljava/lang/String;
.end method

.method public abstract getSmscAddr(J)Ljava/lang/String;
.end method

.method public abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)Landroid/telephony/SmsMessage$SubmitPdu;
.end method

.method public abstract getUserDataGSM8Bit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)Ljava/lang/String;
.end method

.method public abstract getUserDataHeaderForGsm(III)[B
.end method

.method public abstract handleWapPushExtraMimeType(Ljava/lang/String;)Z
.end method

.method public abstract isCdmaVoice()Z
.end method

.method public abstract newSmsShouldBeIntercepted(Landroid/content/Context;Landroid/content/Intent;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;Z)Z
.end method

.method public abstract parseGsmSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage;ILjava/lang/Object;I)Z
.end method

.method public abstract parseRUIMPdu(Lcom/android/internal/telephony/cdma/SmsMessage;[B)V
.end method

.method public abstract setSmscAddr(JLjava/lang/String;)Z
.end method

.method public abstract setSmscAddr(Ljava/lang/String;)Z
.end method

.method public abstract shouldSendReceivedActionInPrivacyMode(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract shouldSetDefaultApplicationForPackage(Ljava/lang/String;Landroid/content/Context;)Z
.end method

.method public abstract useCdmaFormatForMoSms()Z
.end method
