.class public abstract Lcom/android/internal/telephony/uicc/AbstractVoiceMailConstants;
.super Ljava/lang/Object;
.source "AbstractVoiceMailConstants.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearVoicemailLoadedFlag()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public containsCarrier(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailFixed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 6
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailFixed(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMailNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailTag(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public resetVoiceMailLoadFlag()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public setVoicemailInClaro(I)V
    .locals 0
    .param p1, "voicemailPriorityMode"    # I

    .prologue
    .line 36
    return-void
.end method

.method public setVoicemailOnSIM(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "voicemailNumber"    # Ljava/lang/String;
    .param p2, "voicemailTag"    # Ljava/lang/String;

    .prologue
    .line 10
    return-void
.end method
