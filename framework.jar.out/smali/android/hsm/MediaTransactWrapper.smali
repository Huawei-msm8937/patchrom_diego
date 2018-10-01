.class public Landroid/hsm/MediaTransactWrapper;
.super Ljava/lang/Object;
.source "MediaTransactWrapper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaTransactWrapper"

.field private static mBinder:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Landroid/hsm/MediaTransactWrapper;->mBinder:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getBinder()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 143
    const-class v1, Landroid/hsm/MediaTransactWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/hsm/MediaTransactWrapper;->mBinder:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hsm/MediaTransactWrapper;->mBinder:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/ref/SoftReference;

    const-string/jumbo v2, "system.hsmcore"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/hsm/MediaTransactWrapper;->mBinder:Ljava/lang/ref/SoftReference;

    .line 146
    :cond_1
    sget-object v0, Landroid/hsm/MediaTransactWrapper;->mBinder:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static musicPausedOrStopped(II)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    const/4 v6, 0x1

    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, "data":Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 65
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 66
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 67
    invoke-static {}, Landroid/hsm/MediaTransactWrapper;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 68
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 69
    const-string v4, "com.huawei.hsm.IHsmCoreService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 70
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v0, v4, v1, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 74
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 75
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-ne v6, v4, :cond_0

    .line 84
    :cond_0
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 85
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 87
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v2

    .line 79
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "MediaTransactWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "musicPausedOrStopped transact catch remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 85
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 80
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 81
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MediaTransactWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "musicPausedOrStopped transact catch exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 85
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 84
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 85
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    throw v4
.end method

.method public static musicPlaying(II)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 27
    const/4 v1, 0x0

    .line 28
    .local v1, "data":Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 30
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 31
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 32
    invoke-static {}, Landroid/hsm/MediaTransactWrapper;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 33
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 34
    const-string v4, "com.huawei.hsm.IHsmCoreService"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 35
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    const/16 v4, 0x66

    const/4 v5, 0x0

    invoke-interface {v0, v4, v1, v3, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 40
    const/4 v4, 0x1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-ne v4, v5, :cond_0

    .line 49
    :cond_0
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 50
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 52
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "MediaTransactWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "musicPlaying transact catch remote exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 50
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 45
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 46
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MediaTransactWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "musicPlaying transact catch exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 50
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 49
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 50
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    throw v4
.end method

.method public static playingMusicUidSet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 97
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/hsm/MediaTransactWrapper;->playingMusicUidStr()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "strUids":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 99
    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "ids":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 102
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    .end local v1    # "ids":[Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private static playingMusicUidStr()Ljava/lang/String;
    .locals 8

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, "data":Landroid/os/Parcel;
    const/4 v3, 0x0

    .line 119
    .local v3, "reply":Landroid/os/Parcel;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 121
    invoke-static {}, Landroid/hsm/MediaTransactWrapper;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 122
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 123
    const-string v5, "com.huawei.hsm.IHsmCoreService"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 124
    const/16 v5, 0x67

    const/4 v6, 0x0

    invoke-interface {v0, v5, v1, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 125
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 126
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 136
    .local v4, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 137
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 139
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v4    # "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 136
    .restart local v0    # "b":Landroid/os/IBinder;
    :cond_0
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 137
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 139
    .end local v0    # "b":Landroid/os/IBinder;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v5, "MediaTransactWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "musicPausedOrStopped transact catch remote exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 137
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_1

    .line 132
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "MediaTransactWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "musicPausedOrStopped transact catch exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 137
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    goto :goto_1

    .line 136
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v1}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    .line 137
    invoke-static {v3}, Landroid/hsm/MediaTransactWrapper;->recycleParcel(Landroid/os/Parcel;)V

    throw v5
.end method

.method private static recycleParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 150
    if-eqz p0, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    .line 152
    const/4 p0, 0x0

    .line 154
    :cond_0
    return-void
.end method
