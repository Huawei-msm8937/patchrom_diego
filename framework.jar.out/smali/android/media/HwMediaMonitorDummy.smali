.class public Landroid/media/HwMediaMonitorDummy;
.super Ljava/lang/Object;
.source "HwMediaMonitorDummy.java"

# interfaces
.implements Landroid/media/IHwMediaMonitor;


# static fields
.field private static final TAG:Ljava/lang/String; = "HwMediaMonitorDummy"

.field private static mHwMediaMonitor:Landroid/media/IHwMediaMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Landroid/media/HwMediaMonitorDummy;->mHwMediaMonitor:Landroid/media/IHwMediaMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/media/IHwMediaMonitor;
    .locals 2

    .prologue
    .line 30
    const-class v1, Landroid/media/HwMediaMonitorDummy;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Landroid/media/HwMediaMonitorDummy;->mHwMediaMonitor:Landroid/media/IHwMediaMonitor;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/media/HwMediaMonitorDummy;

    invoke-direct {v0}, Landroid/media/HwMediaMonitorDummy;-><init>()V

    sput-object v0, Landroid/media/HwMediaMonitorDummy;->mHwMediaMonitor:Landroid/media/IHwMediaMonitor;

    .line 34
    :cond_0
    sget-object v0, Landroid/media/HwMediaMonitorDummy;->mHwMediaMonitor:Landroid/media/IHwMediaMonitor;

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public forceLogSend(I)I
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public writeLogMsg(IILjava/lang/String;)I
    .locals 1
    .param p1, "priority"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeMediaBigData(IILjava/lang/String;)I
    .locals 1
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public writeMediaBigDataByReportInf(IILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    return-void
.end method
