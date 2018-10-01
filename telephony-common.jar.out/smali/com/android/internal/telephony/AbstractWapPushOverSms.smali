.class public abstract Lcom/android/internal/telephony/AbstractWapPushOverSms;
.super Ljava/lang/Object;
.source "AbstractWapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchWapPdu([BLjava/lang/String;Landroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "oriaddress"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchWapPdu([BLjava/lang/String;Landroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Z)I
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "oriaddress"    # Ljava/lang/String;
    .param p3, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p4, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p5, "is3gpp2"    # Z

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method protected dispatchWapPduForWbxml([BLcom/android/internal/telephony/WspTypeDecoder;IIIILcom/android/internal/telephony/InboundSmsHandler;Landroid/content/BroadcastReceiver;)Z
    .locals 1
    .param p1, "pdu"    # [B
    .param p2, "pduDecoder"    # Lcom/android/internal/telephony/WspTypeDecoder;
    .param p3, "transactionId"    # I
    .param p4, "pduType"    # I
    .param p5, "headerStartIndex"    # I
    .param p6, "headerLength"    # I
    .param p7, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p8, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method protected putSubIdAndNetworkTypeToIntentForMultiSim(Landroid/content/Intent;Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handler"    # Lcom/android/internal/telephony/InboundSmsHandler;

    .prologue
    .line 34
    return-void
.end method

.method protected saveSmsTracker(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 0
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 45
    return-void
.end method
