.class public abstract Lcom/android/server/audio/AbsAudioService;
.super Landroid/media/IAudioService$Stub;
.source "AbsAudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AbsAudioService$DeviceVolumeState;
    }
.end annotation


# static fields
.field private static final AUDIO_CAPABILITY_LVM:Ljava/lang/String;

.field protected static final DTS_SOUND_EFFECTS_SUPPORT:Z

.field protected static final DUAL_SMARTPA_SUPPORT:Z

.field protected static final HPX_EFFECTS_SUPPORT:Z

.field protected static final HW_DOBBLY_SOUND_EFFECT_BIT:I = 0x4

.field protected static final HW_HPX_SOUND_EFFECT_BIT:I = 0x8

.field protected static final HW_KARAOKE_EFFECT_BIT:I = 0x2

.field protected static final HW_KARAOKE_EFFECT_ENABLED:Z

.field protected static final HW_SOUND_TRIGGER_BIT:I = 0x1

.field protected static final HW_SOUND_TRIGGER_SUPPORT:Z

.field protected static final HW_TBD_BIT_4:I = 0x10

.field protected static final HW_TBD_BIT_5:I = 0x20

.field protected static final HW_TBD_BIT_6:I = 0x40

.field protected static final HW_TBD_BIT_7:I = 0x80

.field protected static final LOUD_VOICE_MODE_SUPPORT:Z

.field protected static final MSG_CHECK_LVM_CHANGED:I = 0x2711

.field protected static final MSG_SOUND_EFFECTS_OPEN_CLOSE:I = 0x2712

.field protected static final SOUND_EFFECTS_SUPPORT:Z

.field protected static final SPK_RCV_STEREO_SUPPORT:Z

.field protected static final STATE_LVM_CANCEL:I = 0x0

.field protected static final STATE_LVM_CHANGE:I = 0x1

.field protected static final SWS_SOUND_EFFECTS_SUPPORT:Z

.field private static final TAG:Ljava/lang/String; = "AbsAudioService"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    const-string v0, "audio_capability=lvm_support"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AbsAudioService;->AUDIO_CAPABILITY_LVM:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sget-object v3, Lcom/android/server/audio/AbsAudioService;->AUDIO_CAPABILITY_LVM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ro.config.lvm_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/server/audio/AbsAudioService;->LOUD_VOICE_MODE_SUPPORT:Z

    .line 33
    const-string v0, "ro.config.hw_media_flags"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/audio/AbsAudioService;->HW_SOUND_TRIGGER_SUPPORT:Z

    .line 37
    const-string v0, "ro.config.hw_media_flags"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    sput-boolean v0, Lcom/android/server/audio/AbsAudioService;->HW_KARAOKE_EFFECT_ENABLED:Z

    .line 41
    const-string v0, "ro.config.hw_dts"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AbsAudioService;->DTS_SOUND_EFFECTS_SUPPORT:Z

    .line 43
    const-string v0, "ro.config.hw_sws"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AbsAudioService;->SWS_SOUND_EFFECTS_SUPPORT:Z

    .line 45
    const-string v0, "ro.config.hpx_support"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AbsAudioService;->HPX_EFFECTS_SUPPORT:Z

    .line 47
    sget-boolean v0, Lcom/android/server/audio/AbsAudioService;->DTS_SOUND_EFFECTS_SUPPORT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/audio/AbsAudioService;->SWS_SOUND_EFFECTS_SUPPORT:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/audio/AbsAudioService;->HPX_EFFECTS_SUPPORT:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/server/audio/AbsAudioService;->SOUND_EFFECTS_SUPPORT:Z

    .line 52
    const-string v0, "true"

    const-string v3, "audio_capability=dual_smartpa_support"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AbsAudioService;->DUAL_SMARTPA_SUPPORT:Z

    .line 53
    sget-boolean v0, Lcom/android/server/audio/AbsAudioService;->DUAL_SMARTPA_SUPPORT:Z

    if-eqz v0, :cond_5

    const-string v0, "true"

    const-string v3, "audio_capability=spk_rcv_stereo_support"

    invoke-static {v3}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_4
    sput-boolean v1, Lcom/android/server/audio/AbsAudioService;->SPK_RCV_STEREO_SUPPORT:Z

    return-void

    .line 26
    :cond_1
    const-string v0, "true"

    sget-object v3, Lcom/android/server/audio/AbsAudioService;->AUDIO_CAPABILITY_LVM:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 33
    goto :goto_1

    :cond_3
    move v0, v2

    .line 37
    goto :goto_2

    :cond_4
    move v0, v2

    .line 47
    goto :goto_3

    :cond_5
    move v1, v2

    .line 53
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 111
    return-void
.end method


# virtual methods
.method protected checkAudioSettingAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: checkAudioSettingAllowed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method protected checkMMIRunning()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected getEffectsState(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 169
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: getEffectsState"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method protected getHwSafeMediaVolumeIndex()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method protected getOldInCallDevice(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 132
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: getOldInCallDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public getSampleId(Landroid/media/SoundPool;ILjava/lang/String;I)I
    .locals 1
    .param p1, "soundpool"    # Landroid/media/SoundPool;
    .param p2, "effect"    # I
    .param p3, "defFilePath"    # Ljava/lang/String;
    .param p4, "index"    # I

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected getSoundTriggerSettings(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 146
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: getSoundTriggerSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method protected handleLVMModeChangeProcess(ILjava/lang/Object;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 127
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: handleLVMModeChangeProcess"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method protected handleMessageEx(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: handleMessageEx"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method protected hwApplyAllVolumes(Lcom/android/server/audio/AudioService$AudioServiceParas;)V
    .locals 2
    .param p1, "asParas"    # Lcom/android/server/audio/AudioService$AudioServiceParas;

    .prologue
    .line 193
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: applyAllVolumes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method protected hwIsTurningAllSound()Z
    .locals 2

    .prologue
    .line 197
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: isTurningAllSound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected hwReadSettings(II)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .prologue
    .line 189
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: readSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public initHwThemeHandler()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method protected isHwSafeMediaVolumeEnabled()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method protected onSetSoundEffectState(II)V
    .locals 2
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    .line 176
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: onSetSoundEffectState"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method protected readPersistedSettingsEx(Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 79
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: handleMessageEx"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public sendAudioRecordStateChangedIntent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .param p1, "sender"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: sendAudioRecordStateChangedIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method protected sendDeviceConnectionIntentForImcs(IILjava/lang/String;)V
    .locals 0
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method protected setLVMMode(IIII)V
    .locals 2
    .param p1, "direction"    # I
    .param p2, "device"    # I
    .param p3, "oldIndex"    # I
    .param p4, "streamType"    # I

    .prologue
    .line 138
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: setLVMMode"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void
.end method

.method public setSoundEffectState(ZLjava/lang/String;ZLjava/lang/String;)I
    .locals 2
    .param p1, "restore"    # Z
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "isOnTop"    # Z
    .param p4, "reserved"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v0, "AbsAudioService"

    const-string v1, "dummy: setSoundEffectState"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public unloadHwThemeSoundEffects()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected usingHwSafeMediaConfig()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
