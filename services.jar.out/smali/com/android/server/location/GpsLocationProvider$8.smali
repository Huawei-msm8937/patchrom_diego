.class Lcom/android/server/location/GpsLocationProvider$8;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1004
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v8

    const-wide/32 v16, 0x5265c00

    cmp-long v3, v8, v16

    if-ltz v3, :cond_0

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v2

    .line 1007
    .local v2, "ntpRefreshStatus":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHwGpsLogServices:Lcom/android/server/location/IHwGpsLogServices;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/IHwGpsLogServices;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/location/IHwGpsLogServices;->updateNtpDloadStatus(Z)V

    .line 1010
    if-eqz v2, :cond_0

    .line 1011
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHwGpsLogServices:Lcom/android/server/location/IHwGpsLogServices;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$700(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/IHwGpsLogServices;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/NtpTrustedTime;->getCachedNtpIpAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lcom/android/server/location/IHwGpsLogServices;->updateNtpServerInfo(Ljava/lang/String;)V

    .line 1017
    .end local v2    # "ntpRefreshStatus":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v8

    const-wide/32 v16, 0x5265c00

    cmp-long v3, v8, v16

    if-gez v3, :cond_3

    .line 1018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v4

    .line 1019
    .local v4, "time":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v6

    .line 1020
    .local v6, "timeReference":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v10

    .line 1021
    .local v10, "certainty":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1024
    .local v14, "now":J
    const-string v3, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NTP server returned: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") reference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " certainty: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " system time offset: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$2000(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/NtpTrustedTime;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v14

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider;->mHwGpsLocationManager:Lcom/android/server/location/IHwGpsLocationManager;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/server/location/IHwGpsLocationManager;->checkNtpTime(JJ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    long-to-int v8, v10

    # invokes: Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;JJI)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider;->mGpsXtraReceiver:Lcom/android/server/location/IHwGpsXtraDownloadReceiver;

    if-eqz v3, :cond_1

    .line 1036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    iget-object v3, v3, Lcom/android/server/location/GpsLocationProvider;->mGpsXtraReceiver:Lcom/android/server/location/IHwGpsXtraDownloadReceiver;

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/android/server/location/IHwGpsXtraDownloadReceiver;->setNtpTime(JJ)V

    .line 1040
    :cond_1
    const-wide/32 v12, 0x5265c00

    .line 1041
    .local v12, "delay":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/GpsLocationProvider$BackOff;->reset()V

    .line 1048
    .end local v4    # "time":J
    .end local v6    # "timeReference":J
    .end local v10    # "certainty":J
    .end local v14    # "now":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    # invokes: Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v3, v8, v9, v0}, Lcom/android/server/location/GpsLocationProvider;->access$1000(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2300(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v3

    const/4 v8, 0x5

    invoke-virtual {v3, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;

    move-result-object v3

    const/4 v8, 0x5

    invoke-virtual {v3, v8, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1061
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2500(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1062
    return-void

    .line 1044
    .end local v12    # "delay":J
    :cond_3
    const-string v3, "GpsLocationProvider"

    const-string v8, "requestTime failed"

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider$8;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mNtpBackOff:Lcom/android/server/location/GpsLocationProvider$BackOff;
    invoke-static {v3}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsLocationProvider$BackOff;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/location/GpsLocationProvider$BackOff;->nextBackoffMillis()J

    move-result-wide v12

    .restart local v12    # "delay":J
    goto :goto_0
.end method
