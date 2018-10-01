.class public interface abstract Landroid/hardware/IPostCameraService;
.super Ljava/lang/Object;
.source "IPostCameraService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IPostCameraService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addListener(Landroid/hardware/ICameraServiceListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connect(Landroid/hardware/IPostCameraClient;Ljava/lang/String;ILandroid/hardware/camera2/utils/BinderHolder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeListener(Landroid/hardware/ICameraServiceListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
