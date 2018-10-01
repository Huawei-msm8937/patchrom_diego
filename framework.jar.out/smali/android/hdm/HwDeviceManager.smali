.class public Landroid/hdm/HwDeviceManager;
.super Ljava/lang/Object;
.source "HwDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hdm/HwDeviceManager$IHwDeviceManager;
    }
.end annotation


# static fields
.field public static final DISABLED_ADB:I = 0xb

.field public static final DISABLED_BACK:I = 0x10

.field public static final DISABLED_BLUETOOTH:I = 0x8

.field public static final DISABLED_GPS:I = 0xd

.field public static final DISABLED_HOME:I = 0xe

.field public static final DISABLED_INSTALL_SOURCE:I = 0x2

.field public static final DISABLED_SAFEMODE:I = 0xa

.field public static final DISABLED_TASK:I = 0xf

.field public static final DISABLED_USBOTG:I = 0xc

.field public static final DISABLED_VOICE:I = 0x1

.field public static final DISABLED_WIFI:I = 0x0

.field public static final DISABLE_CHANGE_LAUNCHER:I = 0x11

.field public static final IS_ADBORSDCARD_INSTALL_RESTRICTED:I = 0x6

.field public static final IS_ALLOWED_INSTALL_PACKAGE:I = 0x7

.field public static final IS_DISABLED_DEACTIVATE_MDM_PACKAGE:I = 0x12

.field public static final IS_DISALLOWED_RUNNINGAPP:I = 0x4

.field public static final IS_DISALLOWED_UNINSTALL_PACKAGE:I = 0x5

.field public static final IS_PERSISTENT_APP:I = 0x3

.field public static final NETWORK_ACCESS_WHITELIST:I = 0x9

.field private static final TAG:Ljava/lang/String; = "HwDeviceManager"

.field private static sInstance:Landroid/hdm/HwDeviceManager$IHwDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-object v0, Landroid/hdm/HwDeviceManager;->sInstance:Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static disallowOp(I)Z
    .locals 6
    .param p0, "type"    # I

    .prologue
    .line 95
    invoke-static {}, Landroid/hdm/HwDeviceManager;->getImplObject()Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    move-result-object v2

    .line 96
    .local v2, "instance":Landroid/hdm/HwDeviceManager$IHwDeviceManager;
    if-nez v2, :cond_0

    .line 97
    const-string v3, "HwDeviceManager"

    const-string v4, "Can not get the instance of IHwDeviceManager object."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    .line 103
    .local v0, "bDisabled":Z
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 105
    :pswitch_1
    :try_start_0
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isWifiDisabled()Z

    move-result v0

    .line 106
    goto :goto_0

    .line 108
    :pswitch_2
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isVoiceDisabled()Z

    move-result v0

    .line 109
    goto :goto_0

    .line 111
    :pswitch_3
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isInstallSourceDisabled()Z

    move-result v0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_4
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isAdbOrSDCardInstallRestricted()Z

    move-result v0

    .line 115
    goto :goto_0

    .line 118
    :pswitch_5
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isBluetoothDisabled()Z

    move-result v0

    .line 119
    goto :goto_0

    .line 122
    :pswitch_6
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isSafeModeDisabled()Z

    move-result v0

    .line 123
    goto :goto_0

    .line 125
    :pswitch_7
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isAdbDisabled()Z

    move-result v0

    .line 126
    goto :goto_0

    .line 128
    :pswitch_8
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isUSBOtgDisabled()Z

    move-result v0

    .line 129
    goto :goto_0

    .line 131
    :pswitch_9
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isGPSDisabled()Z

    move-result v0

    .line 132
    goto :goto_0

    .line 134
    :pswitch_a
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isHomeButtonDisabled()Z

    move-result v0

    .line 135
    goto :goto_0

    .line 137
    :pswitch_b
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isTaskButtonDisabled()Z

    move-result v0

    .line 138
    goto :goto_0

    .line 140
    :pswitch_c
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isBackButtonDisabled()Z

    move-result v0

    .line 141
    goto :goto_0

    .line 143
    :pswitch_d
    invoke-interface {v2}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isChangeLauncherDisable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 144
    goto :goto_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HwDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disallow operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static disallowOp(ILjava/lang/String;)Z
    .locals 6
    .param p0, "type"    # I
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-static {}, Landroid/hdm/HwDeviceManager;->getImplObject()Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    move-result-object v2

    .line 157
    .local v2, "instance":Landroid/hdm/HwDeviceManager$IHwDeviceManager;
    if-nez v2, :cond_0

    .line 158
    const-string v4, "HwDeviceManager"

    const-string v5, "Can not get the instance of IHwDeviceManager object."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_0
    return v3

    .line 162
    :cond_0
    const/4 v0, 0x0

    .line 164
    .local v0, "bDisabled":Z
    sparse-switch p0, :sswitch_data_0

    :goto_1
    move v3, v0

    .line 189
    goto :goto_0

    .line 166
    :sswitch_0
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isPersistentApp(Ljava/lang/String;)Z

    move-result v0

    .line 167
    goto :goto_1

    .line 169
    :sswitch_1
    invoke-interface {v2, p1}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isDisallowedRunningApp(Ljava/lang/String;)Z

    move-result v0

    .line 170
    goto :goto_1

    .line 172
    :sswitch_2
    invoke-interface {v2, p1}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isDisallowedUninstallPackage(Ljava/lang/String;)Z

    move-result v0

    .line 173
    goto :goto_1

    .line 176
    :sswitch_3
    invoke-interface {v2, p1}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isDisabledDeactivateMdmPackage(Ljava/lang/String;)Z

    move-result v0

    .line 177
    goto :goto_1

    .line 180
    :sswitch_4
    invoke-interface {v2, p1}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isAllowedInstallPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 181
    :goto_2
    goto :goto_1

    :cond_1
    move v0, v3

    .line 180
    goto :goto_2

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HwDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disallow operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 164
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0x7 -> :sswitch_4
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method public static disallowOp(Landroid/content/Intent;)Z
    .locals 6
    .param p0, "installSource"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 193
    invoke-static {}, Landroid/hdm/HwDeviceManager;->getImplObject()Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    move-result-object v2

    .line 194
    .local v2, "instance":Landroid/hdm/HwDeviceManager$IHwDeviceManager;
    if-nez v2, :cond_0

    .line 195
    const-string v4, "HwDeviceManager"

    const-string v5, "Can not get the instance of IHwDeviceManager object."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_0
    return v3

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 201
    .local v0, "bDisabled":Z
    :try_start_0
    invoke-interface {v2, p0}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->isIntentFromAllowedInstallSource(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v3, v0

    .line 206
    goto :goto_0

    :cond_1
    move v0, v3

    .line 201
    goto :goto_1

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "HwDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Disallow operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getImplObject()Landroid/hdm/HwDeviceManager$IHwDeviceManager;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Landroid/hdm/HwDeviceManager;->sInstance:Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHuaweiDevicePolicyManager()Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    move-result-object v0

    sput-object v0, Landroid/hdm/HwDeviceManager;->sInstance:Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    .line 91
    :cond_0
    sget-object v0, Landroid/hdm/HwDeviceManager;->sInstance:Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    return-object v0
.end method

.method public static getList(I)Ljava/util/List;
    .locals 6
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-static {}, Landroid/hdm/HwDeviceManager;->getImplObject()Landroid/hdm/HwDeviceManager$IHwDeviceManager;

    move-result-object v1

    .line 210
    .local v1, "instance":Landroid/hdm/HwDeviceManager$IHwDeviceManager;
    if-nez v1, :cond_0

    .line 211
    const-string v3, "HwDeviceManager"

    const-string v4, "Can not get the instance of IHwDeviceManager object."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v2, 0x0

    .line 228
    :goto_0
    return-object v2

    .line 215
    :cond_0
    const/4 v2, 0x0

    .line 217
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 219
    :pswitch_0
    :try_start_0
    invoke-interface {v1}, Landroid/hdm/HwDeviceManager$IHwDeviceManager;->getNetworkAccessWhitelist()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 220
    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "HwDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
