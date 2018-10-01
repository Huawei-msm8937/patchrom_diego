.class public Lcom/android/server/display/hisi_wifi/WifiDisplayControllerHisiExt;
.super Ljava/lang/Object;
.source "WifiDisplayControllerHisiExt.java"


# static fields
.field private static mInterface:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string v0, "wlan0"

    sput-object v0, Lcom/android/server/display/hisi_wifi/WifiDisplayControllerHisiExt;->mInterface:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHisiWifiInface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/server/display/hisi_wifi/WifiDisplayControllerHisiExt;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public static hisiWifiEnabled()Z
    .locals 2

    .prologue
    .line 15
    const-string v1, "ro.connectivity.chiptype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "HI110X_ENABLE":Ljava/lang/String;
    const-string v1, "hi110x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    const/4 v1, 0x1

    .line 19
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
