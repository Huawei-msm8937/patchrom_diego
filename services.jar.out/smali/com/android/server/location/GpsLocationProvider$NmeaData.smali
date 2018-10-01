.class Lcom/android/server/location/GpsLocationProvider$NmeaData;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/GpsLocationProvider$GpsData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NmeaData"
.end annotation


# instance fields
.field final mNmea:Ljava/lang/String;

.field final mTimestamp:J

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;JLjava/lang/String;)V
    .locals 2
    .param p2, "timestamp"    # J
    .param p4, "nmea"    # Ljava/lang/String;

    .prologue
    .line 2010
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$NmeaData;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2011
    iput-wide p2, p0, Lcom/android/server/location/GpsLocationProvider$NmeaData;->mTimestamp:J

    .line 2012
    iput-object p4, p0, Lcom/android/server/location/GpsLocationProvider$NmeaData;->mNmea:Ljava/lang/String;

    .line 2013
    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLastAddNmeaTimestamp:J
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$3400()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-eqz v0, :cond_0

    .line 2014
    # setter for: Lcom/android/server/location/GpsLocationProvider;->mLastAddNmeaTimestamp:J
    invoke-static {p2, p3}, Lcom/android/server/location/GpsLocationProvider;->access$3402(J)J

    .line 2016
    :cond_0
    return-void
.end method


# virtual methods
.method public send()V
    .locals 4

    .prologue
    .line 2020
    # getter for: Lcom/android/server/location/GpsLocationProvider;->mLastAddNmeaTimestamp:J
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$3400()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$NmeaData;->mTimestamp:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2021
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGpsDatas skip next old nmea data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$NmeaData;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :goto_0
    return-void

    .line 2025
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$NmeaData;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider$NmeaData;->mTimestamp:J

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider$NmeaData;->mNmea:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    goto :goto_0
.end method
