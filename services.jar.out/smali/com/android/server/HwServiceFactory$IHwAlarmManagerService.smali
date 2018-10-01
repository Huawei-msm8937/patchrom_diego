.class public interface abstract Lcom/android/server/HwServiceFactory$IHwAlarmManagerService;
.super Ljava/lang/Object;
.source "HwServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HwServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHwAlarmManagerService"
.end annotation


# virtual methods
.method public abstract getHwAlarmHandler(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;
.end method

.method public abstract getInstance(Landroid/content/Context;)Lcom/android/server/AlarmManagerService;
.end method
