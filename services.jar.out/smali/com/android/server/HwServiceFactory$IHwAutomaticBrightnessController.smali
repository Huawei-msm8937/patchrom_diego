.class public interface abstract Lcom/android/server/HwServiceFactory$IHwAutomaticBrightnessController;
.super Ljava/lang/Object;
.source "HwServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HwServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHwAutomaticBrightnessController"
.end annotation


# virtual methods
.method public abstract getInstance(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZLandroid/content/Context;)Lcom/android/server/display/AutomaticBrightnessController;
.end method

.method public abstract getInstance(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFLandroid/content/Context;)Lcom/android/server/display/AutomaticBrightnessController;
.end method
