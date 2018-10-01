.class public Lcom/android/internal/telephony/imsphone/HwImsPhoneMmiCode;
.super Ljava/lang/Object;
.source "HwImsPhoneMmiCode.java"


# static fields
.field private static final CODE_IS_UNSUPPORT_MMI_CODE:I = 0xbb9

.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsConfig"

.field private static final TAG:Ljava/lang/String; = "HwImsPhoneMmiCode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUnSupportMMICode(Ljava/lang/String;)V
    .locals 9
    .param p0, "mmiCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 23
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 24
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 25
    .local v1, "_reply":Landroid/os/Parcel;
    const-string v7, "ims_config"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 26
    .local v2, "b":Landroid/os/IBinder;
    const-string v7, "HwImsPhoneMmiCode"

    const-string v8, "isUnSupportMMICode"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v3, 0x0

    .line 30
    .local v3, "isUnSupport":Z
    if-eqz v2, :cond_0

    .line 31
    :try_start_0
    const-string v7, "com.android.ims.internal.IImsConfig"

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    const/16 v7, 0xbb9

    const/4 v8, 0x0

    invoke-interface {v2, v7, v0, v1, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 35
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-ne v7, v5, :cond_1

    move v3, v5

    .line 40
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    :goto_1
    if-eqz v3, :cond_2

    .line 45
    const-string v5, "HwImsPhoneMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not Support MMI Code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Invalid or Unsupported MMI Code"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move v3, v6

    .line 35
    goto :goto_0

    .line 37
    :catch_0
    move-exception v4

    .line 38
    .local v4, "localRemoteException":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 40
    .end local v4    # "localRemoteException":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v5

    .line 49
    :cond_2
    return-void
.end method
