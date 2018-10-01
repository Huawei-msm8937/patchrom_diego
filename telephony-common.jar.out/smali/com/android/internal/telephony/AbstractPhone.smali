.class public interface abstract Lcom/android/internal/telephony/AbstractPhone;
.super Ljava/lang/Object;
.source "AbstractPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/AbstractPhone$ECReport;
    }
.end annotation


# static fields
.field public static final ENCRYPT_CALL_CMD_REQUEST_MODE1_MO_KEY:I = 0x1

.field public static final ENCRYPT_CALL_CMD_REQUEST_MODE1_MT_KEY:I = 0x3

.field public static final ENCRYPT_CALL_CMD_REQUEST_MODE2_MO_KEY:I = 0x2

.field public static final ENCRYPT_CALL_CMD_REQUEST_MODE2_MT_KEY:I = 0x4

.field public static final ENCRYPT_CALL_CMD_RESET_PASSWD_COMPLETED:I = 0x6

.field public static final ENCRYPT_CALL_CMD_WIPE_RECORD_COMPLETED:I = 0x5

.field public static final FEATURE_ENABLE_BIP0:Ljava/lang/String; = "enableBIP0"

.field public static final FEATURE_ENABLE_BIP1:Ljava/lang/String; = "enableBIP1"

.field public static final FEATURE_ENABLE_BIP2:Ljava/lang/String; = "enableBIP2"

.field public static final FEATURE_ENABLE_BIP3:Ljava/lang/String; = "enableBIP3"

.field public static final FEATURE_ENABLE_BIP4:Ljava/lang/String; = "enableBIP4"

.field public static final FEATURE_ENABLE_BIP5:Ljava/lang/String; = "enableBIP5"

.field public static final FEATURE_ENABLE_BIP6:Ljava/lang/String; = "enableBIP6"

.field public static final FEATURE_ENABLE_XCAP:Ljava/lang/String; = "enableXCAP"

.field public static final HW_ENCRYPT_CALL:I = 0x0

.field public static final HW_KMC_REMOTE_COMMUNICATION:I = 0x1

.field public static final REASON_CELL_LOCATION_CHANGE:Ljava/lang/String; = "cellLocationChanged"

.field public static final REASON_NO_RETRY_AFTER_DISCONNECT:Ljava/lang/String; = "noRetryAfterDisconnect"

.field public static final REASON_USER_DATA_ENABLED:Ljava/lang/String; = "userDataEnabled"


# virtual methods
.method public abstract changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract closeRrc()V
.end method

.method public abstract cmdForECInfo(II[B)Z
.end method

.method public abstract getCallbarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract getDataRoamingScope()I
.end method

.method public abstract getImsSwitch()Z
.end method

.method public abstract getLteReleaseVersion()I
.end method

.method public abstract getMeid()Ljava/lang/String;
.end method

.method public abstract getNVESN()Ljava/lang/String;
.end method

.method public abstract getPOLCapabilty(Landroid/os/Message;)V
.end method

.method public abstract getPesn()Ljava/lang/String;
.end method

.method public abstract getPreferedOperatorList(Landroid/os/Message;)V
.end method

.method public abstract getSpeechInfoCodec()Ljava/lang/String;
.end method

.method public abstract isMmiCode(Ljava/lang/String;)Z
.end method

.method public abstract isSupportCFT()Z
.end method

.method public abstract notifyMultiSimConfigurationChanged()V
.end method

.method public abstract registerForHWBuffer(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForUnsolSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract riseCdmaCutoffFreq(Z)V
.end method

.method public abstract selectCsgNetworkManually(Landroid/os/Message;)V
.end method

.method public abstract sendHWSolicited(Landroid/os/Message;I[B)V
.end method

.method public abstract setCallForwardingUncondTimerOption(IIIIIILjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setCallbarringOption(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract setDataRoamingScope(I)Z
.end method

.method public abstract setISMCOEX(Ljava/lang/String;)Z
.end method

.method public abstract setImsSwitch(Z)V
.end method

.method public abstract setLTEReleaseVersion(ZLandroid/os/Message;)V
.end method

.method public abstract setPOLEntry(ILjava/lang/String;ILandroid/os/Message;)V
.end method

.method public abstract setSpeechInfoCodec(I)V
.end method

.method public abstract switchVoiceCallBackgroundState(I)V
.end method

.method public abstract unregisterForHWBuffer(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForUnsolSpeechInfo(Landroid/os/Handler;)V
.end method
