.class Lcom/android/server/usb/UsbDeviceManager$SuitestateObserver;
.super Landroid/database/ContentObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuitestateObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 1

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$SuitestateObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 265
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$SuitestateObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->writeSuitestate()V

    .line 269
    return-void
.end method
