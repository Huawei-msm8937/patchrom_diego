.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# static fields
.field public static final HW_VIBRATOR_TPYE_APP_NAVI:I = 0x5

.field public static final HW_VIBRATOR_TPYE_CAMERA:I = 0x6

.field public static final HW_VIBRATOR_TPYE_DIAL:I = 0x7

.field public static final HW_VIBRATOR_TPYE_END:I = 0x9

.field public static final HW_VIBRATOR_TPYE_FAILED:I = 0x2

.field public static final HW_VIBRATOR_TPYE_GALLERY:I = 0x8

.field public static final HW_VIBRATOR_TPYE_LONG:I = 0x3

.field public static final HW_VIBRATOR_TPYE_NAVI:I = 0x4

.field public static final HW_VIBRATOR_TPYE_SUCCESS:I = 0x1


# instance fields
.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract hasVibrator()Z
.end method

.method protected hwVibrate(ILjava/lang/String;Landroid/media/AudioAttributes;I)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .param p4, "mode"    # I

    .prologue
    .line 99
    return-void
.end method

.method public hwVibrate(Landroid/media/AudioAttributes;I)V
    .locals 2
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "mode"    # I

    .prologue
    .line 96
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/os/Vibrator;->hwVibrate(ILjava/lang/String;Landroid/media/AudioAttributes;I)V

    .line 97
    return-void
.end method

.method public abstract vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
.end method

.method public abstract vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
.end method

.method public vibrate(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 78
    return-void
.end method

.method public vibrate(JLandroid/media/AudioAttributes;)V
    .locals 7
    .param p1, "milliseconds"    # J
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 93
    return-void
.end method

.method public vibrate([JI)V
    .locals 1
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    .line 124
    return-void
.end method

.method public vibrate([JILandroid/media/AudioAttributes;)V
    .locals 6
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 151
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    .line 152
    return-void
.end method
