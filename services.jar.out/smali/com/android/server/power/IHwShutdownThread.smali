.class public interface abstract Lcom/android/server/power/IHwShutdownThread;
.super Ljava/lang/Object;
.source "IHwShutdownThread.java"


# static fields
.field public static final SHUTDOWN_ANIMATION_WAIT_TIME:I = 0x7d0

.field public static final TAG:Ljava/lang/String; = "HwShutdownThread"

.field public static final mShutdown_path1:Ljava/lang/String; = "/data/cust/media/shutdownanimation.zip"

.field public static final mShutdown_path2:Ljava/lang/String; = "/data/local/shutdownanimation.zip"

.field public static final mShutdown_path3:Ljava/lang/String; = "/system/media/shutdownanimation.zip"


# virtual methods
.method public abstract isDoShutdownAnimation()Z
.end method

.method public abstract needRebootDialog(Ljava/lang/String;Landroid/content/Context;)Z
.end method

.method public abstract needRebootProgressDialog(ZLandroid/content/Context;)Z
.end method

.method public abstract waitShutdownAnimation()V
.end method
