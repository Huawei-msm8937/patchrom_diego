.class public interface abstract Lcom/android/server/HwServiceFactory$IHwAppOpsService;
.super Ljava/lang/Object;
.source "HwServiceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HwServiceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHwAppOpsService"
.end annotation


# virtual methods
.method public abstract getInstance(Ljava/io/File;)Lcom/android/server/AppOpsService;
.end method

.method public abstract getInstance(Ljava/io/File;Landroid/os/Handler;)Lcom/android/server/AppOpsService;
.end method
