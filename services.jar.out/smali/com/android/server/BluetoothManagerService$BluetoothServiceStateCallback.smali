.class final Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothServiceStateCallback"
.end annotation


# static fields
.field private static final AUTO_LOG_BUG_TYPE_FUNCTION_FAULT:I = 0x2

.field private static final AUTO_UPLOAD_CATEGORY_NAME:Ljava/lang/String; = "bluetooth"

.field private static final AUTO_UPLOAD_MIN_INTERVAL_TIME:J = 0xea60L

.field private static final BINDER_CALLBACK_TIMEOUT_MS:I = 0x4e20

.field private static final BUG_TYPE_CALLBACK_TIMEOUT:I = 0x0

.field private static final MESSAGE_BINDER_CALLBACK_TIMEOUT:I = 0x1

.field private static final PREFIX_AUTO_UPLOAD:Ljava/lang/String; = "prefixautoupload"

.field private static final SERVICE_DOWN:I = 0x1

.field private static final SERVICE_UP:I


# instance fields
.field public mKillPidHandler:Landroid/os/Handler;

.field private sLastAutoUploadTime:J

.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->sLastAutoUploadTime:J

    .line 221
    new-instance v0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback$1;

    invoke-direct {v0, p0}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback$1;-><init>(Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;)V

    iput-object v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->mKillPidHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BluetoothManagerService;Lcom/android/server/BluetoothManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BluetoothManagerService;
    .param p2, "x1"    # Lcom/android/server/BluetoothManagerService$1;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;-><init>(Lcom/android/server/BluetoothManagerService;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;
    .param p1, "x1"    # I

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->getAppName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->autoUpload(IILjava/lang/String;)V

    return-void
.end method

.method private autoUpload(IILjava/lang/String;)V
    .locals 10
    .param p1, "bugType"    # I
    .param p2, "sceneDef"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 294
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 295
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "com.android.bluetooth"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string v5, "APK version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string v5, "Bug type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v5, "Scene def:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string v5, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "autoUpload->bugType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; sceneDef:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; msg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "prefixautoupload"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/HwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    .local v0, "currentTime":J
    iget-wide v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->sLastAutoUploadTime:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0xea60

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 306
    const-string v5, "BluetoothManagerService"

    const-string v6, "autoUpload->trigger auto upload frequently, return directly."

    invoke-static {v5, v6}, Lcom/android/server/HwLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return-void

    .line 310
    :cond_0
    iput-wide v0, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->sLastAutoUploadTime:J

    .line 313
    const/16 v3, 0x41

    .line 316
    .local v3, "level":I
    :try_start_0
    const-string v5, "bluetooth"

    const/16 v6, 0x41

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7, p3}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->autoUpload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "BluetoothManagerService"

    const-string v6, "autoUpload->LogException.msg() ex:prefixautoupload"

    invoke-static {v5, v6, v2}, Lcom/android/server/HwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private autoUpload(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "header"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 324
    :try_start_0
    const-string v3, "BluetoothManagerService"

    const-string v4, "autoupload"

    invoke-static {v3, v4}, Lcom/android/server/HwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v3, "android.util.HwLogException"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 326
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "msg"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 328
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 336
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "autoUpload->HwLogException.msg() ClassNotFoundException, ex:prefixautoupload"

    invoke-static {v3, v4, v1}, Lcom/android/server/HwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 331
    .end local v1    # "ex":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 332
    .local v1, "ex":Ljava/lang/NoSuchMethodException;
    const-string v3, "BluetoothManagerService"

    const-string v4, "autoUpload->HwLogException.msg() NoSuchMethodException, ex:prefixautoupload"

    invoke-static {v3, v4, v1}, Lcom/android/server/HwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 333
    .end local v1    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 334
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "BluetoothManagerService"

    const-string v4, "autoUpload->HwLogException.msg() Exception, ex:prefixautoupload"

    invoke-static {v3, v4, v1}, Lcom/android/server/HwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getAppName(I)Ljava/lang/String;
    .locals 8
    .param p1, "pID"    # I

    .prologue
    .line 243
    const-string v5, ""

    .line 244
    .local v5, "processName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 245
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 246
    .local v2, "appProcessList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$300(Lcom/android/server/BluetoothManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 247
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_1

    .line 248
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 249
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_0

    .line 250
    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 254
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private sendBluetoothServiceStateCallback(I)V
    .locals 11
    .param p1, "state"    # I

    .prologue
    const/4 v10, 0x1

    .line 339
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 340
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 341
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothManagerCallback;

    .line 342
    .local v0, "currentCallback":Landroid/bluetooth/IBluetoothManagerCallback;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 343
    .local v1, "currentPid":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->mKillPidHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 344
    .local v5, "timeoutMsg":Landroid/os/Message;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 345
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->mKillPidHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x4e20

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 349
    if-nez p1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->getAppName(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 351
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mBluetooth:Landroid/bluetooth/IBluetooth;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$600(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceUp(Landroid/bluetooth/IBluetooth;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->mKillPidHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    :cond_1
    if-ne p1, v10, :cond_0

    .line 353
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManagerCallback;->onBluetoothServiceDown()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 355
    :catch_0
    move-exception v2

    .line 356
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to call onBluetoothServiceUp() on callback #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/android/server/HwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 361
    .end local v0    # "currentCallback":Landroid/bluetooth/IBluetoothManagerCallback;
    .end local v1    # "currentPid":Ljava/lang/Integer;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "timeoutMsg":Landroid/os/Message;
    :cond_2
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$500(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 362
    return-void
.end method


# virtual methods
.method public sendBluetoothServiceDownCallback()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->sendBluetoothServiceStateCallback(I)V

    .line 285
    return-void
.end method

.method public sendBluetoothServiceUpCallback()V
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->sendBluetoothServiceStateCallback(I)V

    .line 281
    return-void
.end method

.method public sendBluetoothStateCallback(Z)V
    .locals 10
    .param p1, "isUp"    # Z

    .prologue
    .line 259
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 260
    .local v4, "n":I
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Broadcasting onBluetoothStateChange("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " receivers."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/HwLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 262
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 263
    .local v0, "currentCallback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 264
    .local v1, "currentPid":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->mKillPidHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 265
    .local v5, "timeoutMsg":Landroid/os/Message;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v5, Landroid/os/Message;->arg1:I

    .line 266
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->mKillPidHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x4e20

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v6, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    :goto_1
    :try_start_2
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->mKillPidHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "BluetoothManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to call onBluetoothStateChange() on callback #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/android/server/HwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 275
    .end local v0    # "currentCallback":Landroid/bluetooth/IBluetoothStateChangeCallback;
    .end local v1    # "currentPid":Ljava/lang/Integer;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v5    # "timeoutMsg":Landroid/os/Message;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v7}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v6

    .restart local v3    # "i":I
    .restart local v4    # "n":I
    :cond_0
    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$BluetoothServiceStateCallback;->this$0:Lcom/android/server/BluetoothManagerService;

    # getter for: Lcom/android/server/BluetoothManagerService;->mStateChangeCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->access$400(Lcom/android/server/BluetoothManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 277
    return-void
.end method
