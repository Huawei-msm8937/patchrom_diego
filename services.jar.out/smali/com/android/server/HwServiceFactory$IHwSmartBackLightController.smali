.class public interface abstract Lcom/android/server/HwServiceFactory$IHwSmartBackLightController;
.super Ljava/lang/Object;
.source "HwServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HwServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHwSmartBackLightController"
.end annotation


# static fields
.field public static final BRIGHTNESS_UPDATE_END:I = 0x1

.field public static final BRIGHTNESS_UPDATE_START:I


# virtual methods
.method public abstract StartHwSmartBackLightController(Landroid/content/Context;Lcom/android/server/lights/LightsManager;Landroid/hardware/SensorManager;)V
.end method

.method public abstract checkIfUsingHwSBL()Z
.end method

.method public abstract updateBrightnessState(I)V
.end method

.method public abstract updatePowerState(IZ)V
.end method
