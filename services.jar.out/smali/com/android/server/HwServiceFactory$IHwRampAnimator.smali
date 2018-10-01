.class public interface abstract Lcom/android/server/HwServiceFactory$IHwRampAnimator;
.super Ljava/lang/Object;
.source "HwServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HwServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHwRampAnimator"
.end annotation


# virtual methods
.method public abstract getInstance(Lcom/android/server/display/DisplayPowerState;Landroid/util/IntProperty;)Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/DisplayPowerState;",
            "Landroid/util/IntProperty",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;)",
            "Lcom/android/server/display/RampAnimator",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end method
