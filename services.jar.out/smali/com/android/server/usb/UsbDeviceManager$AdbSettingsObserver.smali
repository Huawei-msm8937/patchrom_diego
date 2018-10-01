.class Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;
.super Landroid/database/ContentObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdbSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 1

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 217
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/16 v6, 0x51a

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 220
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v0, v2

    .line 224
    .local v0, "enable":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v4}, Lcom/android/server/usb/UsbDeviceManager;->isAdbDisabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 225
    const-string v2, "UsbDeviceManager Adb is disabled by dpm"

    invoke-static {v6, v2}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 243
    :cond_0
    :goto_1
    return-void

    .end local v0    # "enable":Z
    :cond_1
    move v0, v3

    .line 220
    goto :goto_0

    .line 231
    .restart local v0    # "enable":Z
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UsbDeviceManager Adb Settings enable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 233
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$AdbSettingsObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$000(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    .line 237
    const-string v4, "ro.logsystem.usertype"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 238
    .local v1, "userType":I
    if-eq v2, v1, :cond_3

    const/4 v2, 0x6

    if-ne v2, v1, :cond_0

    .line 239
    :cond_3
    const-string v3, "sys.logbuffer.disable"

    if-eqz v0, :cond_4

    const-string v2, "false"

    :goto_2
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v2, "true"

    goto :goto_2
.end method
