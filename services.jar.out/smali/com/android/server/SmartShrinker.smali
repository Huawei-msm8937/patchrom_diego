.class public final Lcom/android/server/SmartShrinker;
.super Ljava/lang/Object;
.source "SmartShrinker.java"


# static fields
.field private static final DEBUG:Z = false

.field private static volatile ENABLE:Z = false

.field public static final RECLAIM_ALL_MODE:I = 0x2

.field public static final RECLAIM_ANON_MODE:I = 0x1

.field public static final RECLAIM_INACTIVE_MODE:I = 0x4

.field public static final RECLAIM_SOFT_MODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RMS.SmartShrinker"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 36
    const-string v1, "ro.config.hw_low_ram"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.config.hw_smart_shrink"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/android/server/SmartShrinker;->ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final init_once(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/android/server/SmartShrinker;->ENABLE:Z

    .line 57
    return-void
.end method

.method public static final reclaim(II)V
    .locals 3
    .param p0, "pid"    # I
    .param p1, "mode"    # I

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/server/SmartShrinker;->ENABLE:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {p0, p1}, Lcom/android/server/am/ProcessList;->callProcReclaim(II)V

    .line 64
    const-string v0, "RMS.SmartShrinker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartShrinker is runing in pid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reclaim mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    return-void
.end method
