.class public Landroid/media/HwMediaMonitorManager;
.super Ljava/lang/Object;
.source "HwMediaMonitorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwMediaMonitorManager"

.field private static prePid:I

.field private static preType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    sput v0, Landroid/media/HwMediaMonitorManager;->prePid:I

    .line 31
    const/16 v0, 0x4fb0

    sput v0, Landroid/media/HwMediaMonitorManager;->preType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceLogSend(I)I
    .locals 1
    .param p0, "level"    # I

    .prologue
    .line 74
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwMediaMonitor()Landroid/media/IHwMediaMonitor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/media/IHwMediaMonitor;->forceLogSend(I)I

    move-result v0

    return v0
.end method

.method public static getStreamBigDataType(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 82
    const/16 v0, 0x2710

    .line 83
    .local v0, "type":I
    packed-switch p0, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    return v0

    .line 85
    :pswitch_1
    const/16 v0, 0x4fb4

    .line 86
    goto :goto_0

    .line 88
    :pswitch_2
    const/16 v0, 0x4fb1

    .line 89
    goto :goto_0

    .line 91
    :pswitch_3
    const/16 v0, 0x4fb2

    .line 92
    goto :goto_0

    .line 94
    :pswitch_4
    const/16 v0, 0x4fb7

    .line 95
    goto :goto_0

    .line 97
    :pswitch_5
    const/16 v0, 0x4fb3

    .line 98
    goto :goto_0

    .line 100
    :pswitch_6
    const/16 v0, 0x4fb5

    .line 101
    goto :goto_0

    .line 103
    :pswitch_7
    const/16 v0, 0x4fb6

    .line 104
    goto :goto_0

    .line 106
    :pswitch_8
    const/16 v0, 0x4fb9

    .line 107
    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public static writeLogMsg(IILjava/lang/String;)I
    .locals 1
    .param p0, "priority"    # I
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwMediaMonitor()Landroid/media/IHwMediaMonitor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/media/IHwMediaMonitor;->writeLogMsg(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static writeMediaBigData(IILjava/lang/String;)I
    .locals 2
    .param p0, "pid"    # I
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-static {p1}, Landroid/media/HwMediaMonitorUtils;->isMediaBigDataWritedNative(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwMediaMonitor()Landroid/media/IHwMediaMonitor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/media/IHwMediaMonitor;->writeMediaBigData(IILjava/lang/String;)I

    move-result v0

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    sget v1, Landroid/media/HwMediaMonitorManager;->prePid:I

    if-ne p0, v1, :cond_2

    sget v1, Landroid/media/HwMediaMonitorManager;->preType:I

    if-eq p1, v1, :cond_0

    .line 60
    :cond_2
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwMediaMonitor()Landroid/media/IHwMediaMonitor;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/media/IHwMediaMonitor;->writeMediaBigDataByReportInf(IILjava/lang/String;)V

    .line 61
    sput p1, Landroid/media/HwMediaMonitorManager;->preType:I

    .line 62
    sput p0, Landroid/media/HwMediaMonitorManager;->prePid:I

    goto :goto_0
.end method
