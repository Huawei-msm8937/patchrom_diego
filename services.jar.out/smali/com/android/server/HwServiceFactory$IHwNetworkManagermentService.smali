.class public interface abstract Lcom/android/server/HwServiceFactory$IHwNetworkManagermentService;
.super Ljava/lang/Object;
.source "HwServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HwServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHwNetworkManagermentService"
.end annotation


# virtual methods
.method public abstract getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/NetworkManagementService;
.end method

.method public abstract handleApLinkedStaListChange(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract sendDataSpeedSlowMessage([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setNativeDaemonConnector(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract startAccessPointWithChannel(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
.end method
