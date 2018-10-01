.class public Lcom/android/internal/os/HwBootAnimationOeminfo;
.super Ljava/lang/Object;
.source "HwBootAnimationOeminfo.java"


# static fields
.field private static final DEBUG_NATIVE:Z = false

.field private static final OEMINFO_BOOTANIM_RINGDEX:I = 0x6b

.field private static final OEMINFO_BOOTANIM_RINGMODE:I = 0x6a

.field private static final OEMINFO_BOOTANIM_SHUTFLAG:I = 0x69

.field private static final OEMINFO_BOOTANIM_SWITCH:I = 0x68

.field private static final TAG:Ljava/lang/String; = "HwBootAnimationNative"

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/HwBootAnimationOeminfo;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBootAnimShutFlag()I
    .locals 4

    .prologue
    .line 79
    :try_start_0
    sget-object v2, Lcom/android/internal/os/HwBootAnimationOeminfo;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/16 v1, 0x69

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/os/HwBootAnimationOeminfo;->nativeGetBootAnimationParam(I)I

    move-result v1

    monitor-exit v2

    .line 85
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 81
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwBootAnimationNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwBootAnimationNative error >>>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getBootAnimSoundSwitch()I
    .locals 4

    .prologue
    .line 57
    :try_start_0
    sget-object v2, Lcom/android/internal/os/HwBootAnimationOeminfo;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    const/16 v1, 0x68

    :try_start_1
    invoke-static {v1}, Lcom/android/internal/os/HwBootAnimationOeminfo;->nativeGetBootAnimationParam(I)I

    move-result v1

    monitor-exit v2

    .line 63
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return v1

    .line 59
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwBootAnimationNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwBootAnimationNative error >>>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static native nativeGetBootAnimationParam(I)I
.end method

.method private static native nativeSetBootAnimationParam(II)I
.end method

.method public static setBootAnimRing(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 101
    :try_start_0
    sget-object v2, Lcom/android/internal/os/HwBootAnimationOeminfo;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const/16 v1, 0x6b

    :try_start_1
    invoke-static {v1, p0}, Lcom/android/internal/os/HwBootAnimationOeminfo;->nativeSetBootAnimationParam(II)I

    move-result v1

    monitor-exit v2

    .line 107
    :goto_0
    return v1

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwBootAnimationNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwBootAnimationNative error >>>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static setBootAnimRingMode(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 90
    :try_start_0
    sget-object v2, Lcom/android/internal/os/HwBootAnimationOeminfo;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/16 v1, 0x6a

    :try_start_1
    invoke-static {v1, p0}, Lcom/android/internal/os/HwBootAnimationOeminfo;->nativeSetBootAnimationParam(II)I

    move-result v1

    monitor-exit v2

    .line 96
    :goto_0
    return v1

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwBootAnimationNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwBootAnimationNative error >>>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static setBootAnimShutFlag(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 68
    :try_start_0
    sget-object v2, Lcom/android/internal/os/HwBootAnimationOeminfo;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/16 v1, 0x69

    :try_start_1
    invoke-static {v1, p0}, Lcom/android/internal/os/HwBootAnimationOeminfo;->nativeSetBootAnimationParam(II)I

    move-result v1

    monitor-exit v2

    .line 74
    :goto_0
    return v1

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwBootAnimationNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwBootAnimationNative error >>>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static setBootAnimSoundSwitch(I)I
    .locals 4
    .param p0, "value"    # I

    .prologue
    .line 46
    :try_start_0
    sget-object v2, Lcom/android/internal/os/HwBootAnimationOeminfo;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    const/16 v1, 0x68

    :try_start_1
    invoke-static {v1, p0}, Lcom/android/internal/os/HwBootAnimationOeminfo;->nativeSetBootAnimationParam(II)I

    move-result v1

    monitor-exit v2

    .line 52
    :goto_0
    return v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HwBootAnimationNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HwBootAnimationNative error >>>>>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, -0x1

    goto :goto_0
.end method
