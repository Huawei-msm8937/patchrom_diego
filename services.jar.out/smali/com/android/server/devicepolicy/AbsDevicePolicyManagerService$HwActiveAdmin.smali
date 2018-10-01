.class Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;
.super Ljava/lang/Object;
.source "AbsDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HwActiveAdmin"
.end annotation


# static fields
.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final DOMAIN:Ljava/lang/String; = "domain"

.field private static final FIELD:Ljava/lang/String; = "field"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final INCOMING:Ljava/lang/String; = "incoming"

.field private static final LABEL:Ljava/lang/String; = "label"

.field private static final OUTGOING:Ljava/lang/String; = "outgoing"

.field private static final PROVIDER:Ljava/lang/String; = "provider"

.field private static final PROVIDERS_PRODUCT:Ljava/lang/String; = "providers_product"

.field private static final TAG_ALLOWED_INSTALL_PACKAGES:Ljava/lang/String; = "allowed-install-packages"

.field private static final TAG_ALLOWED_INSTALL_PACKAGES_ITEM:Ljava/lang/String; = "allowed-install-packages-item"

.field private static final TAG_DISABLED_DEACTIVE_Mdm_PACKAGES:Ljava/lang/String; = "disabled-deactive-mdm-packages"

.field private static final TAG_DISABLED_DEACTIVE_Mdm_PACKAGES_ITEM:Ljava/lang/String; = "disabled-deactive-mdm-packages-item"

.field private static final TAG_DISABLE_ADB:Ljava/lang/String; = "disable-adb"

.field private static final TAG_DISABLE_BACK_KEY:Ljava/lang/String; = "disable-backKey"

.field private static final TAG_DISABLE_BLUETOOTH:Ljava/lang/String; = "disable-bluetooth"

.field private static final TAG_DISABLE_BOOTLOADER:Ljava/lang/String; = "disable-bootloader"

.field private static final TAG_DISABLE_CHANGE_LAUNCHER:Ljava/lang/String; = "disable-change-launcher"

.field private static final TAG_DISABLE_DATA_CONNECTIVITY:Ljava/lang/String; = "disable-dataconnectivity"

.field private static final TAG_DISABLE_EXTERNAL_STORAGE:Ljava/lang/String; = "disable-externalstorage"

.field private static final TAG_DISABLE_GPS:Ljava/lang/String; = "disable-gps"

.field private static final TAG_DISABLE_HOME_KEY:Ljava/lang/String; = "disable-homekey"

.field private static final TAG_DISABLE_INSTALLSOURCE:Ljava/lang/String; = "disable-installsource"

.field private static final TAG_DISABLE_NFC:Ljava/lang/String; = "disable-nfc"

.field private static final TAG_DISABLE_SAFEMODE:Ljava/lang/String; = "disable-safemode"

.field private static final TAG_DISABLE_SMS:Ljava/lang/String; = "disable-sms"

.field private static final TAG_DISABLE_StatusBar_ExpandPanel:Ljava/lang/String; = "disable-expandpanel"

.field private static final TAG_DISABLE_TASK_KEY:Ljava/lang/String; = "disable-taskkey"

.field private static final TAG_DISABLE_USBDATA:Ljava/lang/String; = "disable-usbdata"

.field private static final TAG_DISABLE_USBOTG:Ljava/lang/String; = "disable-usbotg"

.field private static final TAG_DISABLE_VOICE:Ljava/lang/String; = "disable-voice"

.field private static final TAG_DISABLE_WIFI:Ljava/lang/String; = "disable-wifi"

.field private static final TAG_DISABLE_WIFIAP:Ljava/lang/String; = "disable-wifiap"

.field private static final TAG_DISALLOWED_RUNNING_APP_LIST:Ljava/lang/String; = "disallowedRunning-app-list"

.field private static final TAG_DISALLOWED_RUNNING_APP_LIST_ITEM:Ljava/lang/String; = "disallowedRunning-app-list-item"

.field private static final TAG_DISALLOWED_UNINSTALL_PACKAGES:Ljava/lang/String; = "disallowed-uninstall-packages"

.field private static final TAG_DISALLOWED_UNINSTALL_PACKAGES_ITEM:Ljava/lang/String; = "disallowed-uninstall-packages-item"

.field private static final TAG_INSTALL_SOURCE_WHITELIST:Ljava/lang/String; = "install-source-whitelist"

.field private static final TAG_INSTALL_SOURCE_WHITELIST_ITEM:Ljava/lang/String; = "install-source-whitelist_item"

.field private static final TAG_NETWORK_ACCESS_ADDR_WHITELIST:Ljava/lang/String; = "network-access-whitelist"

.field private static final TAG_NETWORK_ACCESS_ADDR_WHITELIST_ITEM:Ljava/lang/String; = "network-access-whitelist-item"

.field private static final TAG_PERSISTENT_APP_LIST:Ljava/lang/String; = "persistent-app-list"

.field private static final TAG_PERSISTENT_APP_LIST_ITEM:Ljava/lang/String; = "persistent-app-list-item"

.field public static final TAG_POLICIES:Ljava/lang/String; = "hw_policy"

.field private static final URI:Ljava/lang/String; = "uri"

.field private static final USERNAME:Ljava/lang/String; = "username"


# instance fields
.field disableAdb:Z

.field disableBackKey:Z

.field disableBluetooth:Z

.field disableBootLoader:Z

.field disableChangeLauncher:Z

.field disableDataConnectivity:Z

.field disableExternalStorage:Z

.field disableGPS:Z

.field disableHomeKey:Z

.field disableInstallSource:Z

.field disableNFC:Z

.field disableSMS:Z

.field disableSafeMode:Z

.field disableStatusBarExpandPanel:Z

.field disableTaskKey:Z

.field disableUSBData:Z

.field disableUSBOtg:Z

.field disableVoice:Z

.field disableWifi:Z

.field disableWifiAp:Z

.field disabledDeactiveMdmPackagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disallowedRunningAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field disallowedUninstallPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field installPackageWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field installSourceWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mailProviderlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field networkAccessWhitelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field persistentAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableWifi:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBluetooth:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableWifiAp:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBootLoader:Z

    .line 95
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableUSBData:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableExternalStorage:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableNFC:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableDataConnectivity:Z

    .line 99
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableVoice:Z

    .line 100
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableSMS:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableStatusBarExpandPanel:Z

    .line 103
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableInstallSource:Z

    .line 104
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableSafeMode:Z

    .line 105
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableAdb:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableUSBOtg:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableGPS:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableHomeKey:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBackKey:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableTaskKey:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableChangeLauncher:Z

    .line 113
    iput-object v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->installSourceWhitelist:Ljava/util/List;

    .line 114
    iput-object v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->persistentAppList:Ljava/util/List;

    .line 115
    iput-object v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disallowedRunningAppList:Ljava/util/List;

    .line 116
    iput-object v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->installPackageWhitelist:Ljava/util/List;

    .line 117
    iput-object v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disallowedUninstallPackageList:Ljava/util/List;

    .line 118
    iput-object v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->networkAccessWhitelist:Ljava/util/List;

    .line 119
    iput-object v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->mailProviderlist:Ljava/util/List;

    .line 121
    iput-object v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disabledDeactiveMdmPackagesList:Ljava/util/List;

    return-void
.end method

.method private readListFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    .line 440
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    move-object v3, v5

    .line 463
    :cond_1
    :goto_0
    return-object v3

    .line 443
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 444
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 447
    .local v0, "outerDepth":I
    :cond_3
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "outerType":I
    const/4 v6, 0x1

    if-eq v2, v6, :cond_6

    if-ne v2, v9, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_6

    .line 449
    :cond_4
    if-eq v2, v9, :cond_3

    const/4 v6, 0x4

    if-eq v2, v6, :cond_3

    .line 452
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "outerTag":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 455
    const-string v6, "value"

    invoke-interface {p1, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 457
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 459
    :cond_5
    const-string v6, "AbsDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "missing value under inner tag["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 463
    .end local v1    # "outerTag":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    goto :goto_0
.end method

.method private readPorvidersList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v5, 0x0

    .line 340
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 342
    .local v2, "para":Landroid/os/Bundle;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 345
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "outerType":I
    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    if-ne v1, v9, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_3

    .line 346
    :cond_1
    if-eq v1, v9, :cond_0

    const/4 v6, 0x4

    if-eq v1, v6, :cond_0

    .line 349
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, "tagnew":Ljava/lang/String;
    const-string v6, "provider"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 352
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "para":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 354
    .restart local v2    # "para":Landroid/os/Bundle;
    const-string v6, "id"

    const-string v7, "id"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v6, "label"

    const-string v7, "label"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v6, "domain"

    const-string v7, "domain"

    invoke-interface {p1, v5, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0, p1, v2}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->readProvidersItems(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V

    .line 364
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 366
    :cond_2
    const-string v6, "AbsDevicePolicyManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "missing value under inner tag["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    .end local v4    # "tagnew":Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v3, v5

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_4
    return-object v3
.end method


# virtual methods
.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 263
    sget-boolean v3, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService;->HWFLOW:Z

    if-eqz v3, :cond_0

    const-string v3, "AbsDevicePolicyManagerService"

    const-string v4, "read policy from xml"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 267
    .local v0, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_1f

    if-ne v2, v7, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_1f

    .line 268
    :cond_2
    if-eq v2, v7, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 271
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "tag":Ljava/lang/String;
    const-string v3, "disable-wifi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 273
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableWifi:Z

    goto :goto_0

    .line 275
    :cond_3
    const-string v3, "disable-bluetooth"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 276
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBluetooth:Z

    goto :goto_0

    .line 278
    :cond_4
    const-string v3, "disable-wifiap"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 279
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableWifiAp:Z

    goto :goto_0

    .line 280
    :cond_5
    const-string v3, "disable-bootloader"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 281
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBootLoader:Z

    goto :goto_0

    .line 282
    :cond_6
    const-string v3, "disable-usbdata"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 283
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableUSBData:Z

    goto :goto_0

    .line 284
    :cond_7
    const-string v3, "disable-externalstorage"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 285
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableExternalStorage:Z

    goto/16 :goto_0

    .line 286
    :cond_8
    const-string v3, "disable-nfc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 287
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableNFC:Z

    goto/16 :goto_0

    .line 288
    :cond_9
    const-string v3, "disable-dataconnectivity"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 289
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableDataConnectivity:Z

    goto/16 :goto_0

    .line 290
    :cond_a
    const-string v3, "disable-voice"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 291
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableVoice:Z

    goto/16 :goto_0

    .line 292
    :cond_b
    const-string v3, "disable-sms"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 293
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableSMS:Z

    goto/16 :goto_0

    .line 294
    :cond_c
    const-string v3, "disable-expandpanel"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 295
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableStatusBarExpandPanel:Z

    goto/16 :goto_0

    .line 296
    :cond_d
    const-string v3, "disable-installsource"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 297
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableInstallSource:Z

    goto/16 :goto_0

    .line 298
    :cond_e
    const-string v3, "disable-safemode"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 299
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableSafeMode:Z

    goto/16 :goto_0

    .line 300
    :cond_f
    const-string v3, "disable-adb"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 301
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableAdb:Z

    goto/16 :goto_0

    .line 302
    :cond_10
    const-string v3, "disable-usbotg"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 303
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableUSBOtg:Z

    goto/16 :goto_0

    .line 304
    :cond_11
    const-string v3, "disable-gps"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 305
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableGPS:Z

    goto/16 :goto_0

    .line 306
    :cond_12
    const-string v3, "disable-homekey"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 307
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableHomeKey:Z

    goto/16 :goto_0

    .line 308
    :cond_13
    const-string v3, "disable-backKey"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 309
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBackKey:Z

    goto/16 :goto_0

    .line 310
    :cond_14
    const-string v3, "disable-taskkey"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 311
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableTaskKey:Z

    goto/16 :goto_0

    .line 312
    :cond_15
    const-string v3, "disable-change-launcher"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 313
    const-string v3, "value"

    invoke-interface {p1, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableChangeLauncher:Z

    goto/16 :goto_0

    .line 314
    :cond_16
    const-string v3, "install-source-whitelist"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 315
    const-string v3, "install-source-whitelist_item"

    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->readListFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->installSourceWhitelist:Ljava/util/List;

    goto/16 :goto_0

    .line 316
    :cond_17
    const-string v3, "allowed-install-packages"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 317
    const-string v3, "allowed-install-packages-item"

    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->readListFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->installPackageWhitelist:Ljava/util/List;

    goto/16 :goto_0

    .line 318
    :cond_18
    const-string v3, "disallowed-uninstall-packages"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 319
    const-string v3, "disallowed-uninstall-packages-item"

    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->readListFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disallowedUninstallPackageList:Ljava/util/List;

    goto/16 :goto_0

    .line 321
    :cond_19
    const-string v3, "disabled-deactive-mdm-packages"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 322
    const-string v3, "disabled-deactive-mdm-packages-item"

    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->readListFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disabledDeactiveMdmPackagesList:Ljava/util/List;

    goto/16 :goto_0

    .line 324
    :cond_1a
    const-string v3, "persistent-app-list"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 325
    const-string v3, "persistent-app-list-item"

    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->readListFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->persistentAppList:Ljava/util/List;

    goto/16 :goto_0

    .line 326
    :cond_1b
    const-string v3, "disallowedRunning-app-list"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 327
    const-string v3, "disallowedRunning-app-list-item"

    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->readListFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disallowedRunningAppList:Ljava/util/List;

    goto/16 :goto_0

    .line 328
    :cond_1c
    const-string v3, "network-access-whitelist"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 329
    const-string v3, "network-access-whitelist-item"

    invoke-direct {p0, p1, v3}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->readListFromXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->networkAccessWhitelist:Ljava/util/List;

    goto/16 :goto_0

    .line 330
    :cond_1d
    const-string v3, "providers_product"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 331
    invoke-direct {p0, p1, v1}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->readPorvidersList(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->mailProviderlist:Ljava/util/List;

    goto/16 :goto_0

    .line 333
    :cond_1e
    const-string v3, "AbsDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown admin tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    .end local v1    # "tag":Ljava/lang/String;
    :cond_1f
    return-void
.end method

.method readProvidersItems(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "para"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 373
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 376
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .local v1, "outerType":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-ne v1, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 378
    :cond_1
    if-eq v1, v7, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 381
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 383
    .local v2, "tagnew":Ljava/lang/String;
    const-string v3, "incoming"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 384
    const-string v3, "incominguri"

    const-string v4, "uri"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v3, "incomingusername"

    const-string v4, "username"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v3, "incomingfield"

    const-string v4, "field"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_2
    const-string v3, "outgoing"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_3

    .line 395
    const-string v3, "outgoinguri"

    const-string v4, "uri"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v3, "outgoingusername"

    const-string v4, "username"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_3
    const-string v3, "AbsDevicePolicyManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing value under inner tag["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    .end local v2    # "tagnew":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method writeListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .param p3, "innerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p4, "someList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 468
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 472
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 473
    .local v1, "value":Ljava/lang/String;
    invoke-interface {p1, v3, p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 474
    const-string v2, "value"

    invoke-interface {p1, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 475
    invoke-interface {p1, v3, p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 477
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {p1, v3, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 124
    sget-boolean v0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService;->HWFLOW:Z

    if-eqz v0, :cond_0

    const-string v0, "AbsDevicePolicyManagerService"

    const-string v1, "write policy to xml out"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    const-string v0, "hw_policy"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableWifi:Z

    if-eqz v0, :cond_1

    .line 127
    const-string v0, "disable-wifi"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableWifi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    const-string v0, "disable-wifi"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 133
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBluetooth:Z

    if-eqz v0, :cond_2

    .line 134
    const-string v0, "disable-bluetooth"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBluetooth:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    const-string v0, "disable-bluetooth"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableWifiAp:Z

    if-eqz v0, :cond_3

    .line 141
    const-string v0, "disable-wifiap"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 142
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableWifiAp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 143
    const-string v0, "disable-wifiap"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 146
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBootLoader:Z

    if-eqz v0, :cond_4

    .line 147
    const-string v0, "disable-bootloader"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBootLoader:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    const-string v0, "disable-bootloader"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableUSBData:Z

    if-eqz v0, :cond_5

    .line 153
    const-string v0, "disable-usbdata"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableUSBData:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 155
    const-string v0, "disable-usbdata"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableExternalStorage:Z

    if-eqz v0, :cond_6

    .line 159
    const-string v0, "disable-externalstorage"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableExternalStorage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const-string v0, "disable-externalstorage"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableNFC:Z

    if-eqz v0, :cond_7

    .line 165
    const-string v0, "disable-nfc"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableNFC:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    const-string v0, "disable-nfc"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableDataConnectivity:Z

    if-eqz v0, :cond_8

    .line 171
    const-string v0, "disable-dataconnectivity"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableDataConnectivity:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    const-string v0, "disable-dataconnectivity"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableVoice:Z

    if-eqz v0, :cond_9

    .line 177
    const-string v0, "disable-voice"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableVoice:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    const-string v0, "disable-voice"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableSMS:Z

    if-eqz v0, :cond_a

    .line 183
    const-string v0, "disable-sms"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableSMS:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string v0, "disable-sms"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableStatusBarExpandPanel:Z

    if-eqz v0, :cond_b

    .line 189
    const-string v0, "disable-expandpanel"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableStatusBarExpandPanel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const-string v0, "disable-expandpanel"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableInstallSource:Z

    if-eqz v0, :cond_c

    .line 196
    const-string v0, "disable-installsource"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableInstallSource:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const-string v0, "disable-installsource"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableSafeMode:Z

    if-eqz v0, :cond_d

    .line 202
    const-string v0, "disable-safemode"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableSafeMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    const-string v0, "disable-safemode"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableAdb:Z

    if-eqz v0, :cond_e

    .line 208
    const-string v0, "disable-adb"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableAdb:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    const-string v0, "disable-adb"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableUSBOtg:Z

    if-eqz v0, :cond_f

    .line 214
    const-string v0, "disable-usbotg"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableUSBOtg:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 216
    const-string v0, "disable-usbotg"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 219
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableGPS:Z

    if-eqz v0, :cond_10

    .line 220
    const-string v0, "disable-gps"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableGPS:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 222
    const-string v0, "disable-gps"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableHomeKey:Z

    if-eqz v0, :cond_11

    .line 226
    const-string v0, "disable-homekey"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 227
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableHomeKey:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    const-string v0, "disable-homekey"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    :cond_11
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBackKey:Z

    if-eqz v0, :cond_12

    .line 232
    const-string v0, "disable-backKey"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableBackKey:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 234
    const-string v0, "disable-backKey"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableTaskKey:Z

    if-eqz v0, :cond_13

    .line 238
    const-string v0, "disable-taskkey"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 239
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableTaskKey:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 240
    const-string v0, "disable-taskkey"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableChangeLauncher:Z

    if-eqz v0, :cond_14

    .line 244
    const-string v0, "disable-change-launcher"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 245
    const-string v0, "value"

    iget-boolean v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disableChangeLauncher:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 246
    const-string v0, "disable-change-launcher"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    :cond_14
    const-string v0, "allowed-install-packages"

    const-string v1, "allowed-install-packages-item"

    iget-object v2, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->installPackageWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->writeListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 250
    const-string v0, "disallowed-uninstall-packages"

    const-string v1, "disallowed-uninstall-packages-item"

    iget-object v2, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disallowedUninstallPackageList:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->writeListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 251
    const-string v0, "install-source-whitelist"

    const-string v1, "install-source-whitelist_item"

    iget-object v2, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->installSourceWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->writeListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 252
    const-string v0, "persistent-app-list"

    const-string v1, "persistent-app-list-item"

    iget-object v2, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->persistentAppList:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->writeListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 253
    const-string v0, "disallowedRunning-app-list"

    const-string v1, "disallowedRunning-app-list-item"

    iget-object v2, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disallowedRunningAppList:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->writeListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 254
    const-string v0, "network-access-whitelist"

    const-string v1, "network-access-whitelist-item"

    iget-object v2, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->networkAccessWhitelist:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->writeListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 256
    const-string v0, "disabled-deactive-mdm-packages"

    const-string v1, "disabled-deactive-mdm-packages-item"

    iget-object v2, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->disabledDeactiveMdmPackagesList:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->writeListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 258
    const-string v0, "providers_product"

    iget-object v1, p0, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->mailProviderlist:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/devicepolicy/AbsDevicePolicyManagerService$HwActiveAdmin;->writeProviderListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V

    .line 259
    const-string v0, "hw_policy"

    invoke-interface {p1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    return-void
.end method

.method writeProviderListToXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "outerTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .line 412
    if-nez p3, :cond_0

    .line 437
    :goto_0
    return-void

    .line 415
    :cond_0
    invoke-interface {p1, v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 416
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 417
    .local v1, "para":Landroid/os/Bundle;
    const-string v2, "provider"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 419
    const-string v2, "id"

    const-string v3, "id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 420
    const-string v2, "label"

    const-string v3, "label"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    const-string v2, "domain"

    const-string v3, "domain"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    const-string v2, "incoming"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const-string v2, "uri"

    const-string v3, "incominguri"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string v2, "username"

    const-string v3, "incomingusername"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    const-string v2, "field"

    const-string v3, "incomingfield"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const-string v2, "incoming"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    const-string v2, "outgoing"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 430
    const-string v2, "uri"

    const-string v3, "outgoinguri"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 431
    const-string v2, "username"

    const-string v3, "outgoingusername"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 432
    const-string v2, "outgoing"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    const-string v2, "provider"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 436
    .end local v1    # "para":Landroid/os/Bundle;
    :cond_1
    invoke-interface {p1, v4, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0
.end method
