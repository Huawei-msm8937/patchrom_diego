.class public Lhuawei/android/mw/HwMultiWindowUtils;
.super Ljava/lang/Object;
.source "HwMultiWindowUtils.java"


# static fields
.field public static final FLOAT_IME_DEFAULT_MODE:I = 0x0

.field public static final FLOAT_IME_DOCK_TITLE:Ljava/lang/String; = "ImeDockWindow"

.field public static final FLOAT_IME_DOCK_WINDOW_TYPE:I = 0x899

.field public static final FLOAT_IME_MODE:Ljava/lang/String; = "float_ime_mode"

.field private static final HW_CUST_FLOAT_IME_PATH:Ljava/lang/String; = "/data/cust/xml/floatime_apps.xml"

.field private static final HW_FLOAT_IME_FILE_NAME:Ljava/lang/String; = "floatime_apps.xml"

.field public static final HW_FLOAT_KEYBOARD_FLAG:Z

.field public static final HW_MULTI_WINDOW_FLAG:Z

.field public static final MULTIWINDOW_NOTIFICATION_ACTION:Ljava/lang/String; = "multiwindow_notification_action"

.field public static final MULTIWINDOW_SERVICE_NAME:Ljava/lang/String; = "multiwin"

.field public static final MW_MAINTAINED_SETTING:Ljava/lang/String; = "mw_maintained"

.field public static final SINGLE_HAND_MODE:Ljava/lang/String; = "single_hand_mode"

.field public static final TAG:Ljava/lang/String; = "MultiWindow"

.field private static final XML_ATTRIBUTE_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final XML_ELEMENT_APP_ITEM:Ljava/lang/String; = "floatime_app"

.field private static final XML_ELEMENT_APP_LIST:Ljava/lang/String; = "floatime_whitelist"

.field private static mFloatImeMode:Z = false

.field private static mFloatKeyboardAppWhiteList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mImeDockWidthLandscpaeFactor:F = 0.6f

.field private static final mImeDockWidthPortraitFactor:F = 0.8f

.field private static mMultiWinService:Landroid/os/IMultiWinService;

.field private static mSingleHandStatus:Z

.field private static mSplitWinStatus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const-string v0, "ro.huawei.multiwindow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lhuawei/android/mw/HwMultiWindowUtils;->HW_MULTI_WINDOW_FLAG:Z

    .line 59
    sget-boolean v0, Lhuawei/android/mw/HwMultiWindowUtils;->HW_MULTI_WINDOW_FLAG:Z

    sput-boolean v0, Lhuawei/android/mw/HwMultiWindowUtils;->HW_FLOAT_KEYBOARD_FLAG:Z

    .line 65
    sput-boolean v1, Lhuawei/android/mw/HwMultiWindowUtils;->mSingleHandStatus:Z

    .line 66
    sput-boolean v1, Lhuawei/android/mw/HwMultiWindowUtils;->mSplitWinStatus:Z

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;

    .line 77
    sput-boolean v1, Lhuawei/android/mw/HwMultiWindowUtils;->mFloatImeMode:Z

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lhuawei/android/mw/HwMultiWindowUtils;->mFloatKeyboardAppWhiteList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized buildMultiWindIntentFlag(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 123
    const-class v2, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lhuawei/android/mw/HwMultiWindowUtils;->getMultiWinService()Landroid/os/IMultiWinService;

    .line 125
    sget-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 127
    :try_start_1
    sget-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;

    invoke-interface {v1, p0}, Landroid/os/IMultiWinService;->buildMultiWinIntent(Landroid/content/Intent;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p0

    .line 133
    :cond_0
    :goto_0
    monitor-exit v2

    return-object p0

    .line 128
    :catch_0
    move-exception v0

    .line 130
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized getImeDockWidthFactor(Z)F
    .locals 2
    .param p0, "aPortrait"    # Z

    .prologue
    .line 224
    const-class v1, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v1

    if-eqz p0, :cond_0

    .line 225
    const v0, 0x3f4ccccd    # 0.8f

    .line 227
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const v0, 0x3f19999a    # 0.6f

    goto :goto_0
.end method

.method private static declared-synchronized getMultiWinService()Landroid/os/IMultiWinService;
    .locals 2

    .prologue
    .line 99
    const-class v1, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lhuawei/android/mw/HwMultiWindowUtils;->HW_MULTI_WINDOW_FLAG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;

    if-nez v0, :cond_0

    .line 100
    const-string v0, "multiwin"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IMultiWinService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMultiWinService;

    move-result-object v0

    sput-object v0, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;

    .line 102
    :cond_0
    sget-object v0, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSplitWindowActiveCount()I
    .locals 3

    .prologue
    .line 153
    const-class v2, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lhuawei/android/mw/HwMultiWindowUtils;->getMultiWinService()Landroid/os/IMultiWinService;

    .line 155
    sget-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 157
    :try_start_1
    sget-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;

    invoke-interface {v1}, Landroid/os/IMultiWinService;->getMultiWinCount()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v2

    return v1

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 160
    .restart local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized initWhiteListFloatKeyboard(Landroid/content/Context;)V
    .locals 2
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 244
    const-class v1, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lhuawei/android/mw/HwMultiWindowUtils;->HW_FLOAT_KEYBOARD_FLAG:Z

    if-eqz v0, :cond_0

    .line 245
    sget-object v0, Lhuawei/android/mw/HwMultiWindowUtils;->mFloatKeyboardAppWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-static {p0}, Lhuawei/android/mw/HwMultiWindowUtils;->populateFloatKeyboardWhiteListedApps(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_0
    monitor-exit v1

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isFloatImeNeed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 195
    const-class v1, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v1

    :try_start_0
    sget-boolean v2, Lhuawei/android/mw/HwMultiWindowUtils;->HW_FLOAT_KEYBOARD_FLAG:Z

    if-eqz v2, :cond_0

    .line 196
    sget-boolean v2, Lhuawei/android/mw/HwMultiWindowUtils;->mSingleHandStatus:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lhuawei/android/mw/HwMultiWindowUtils;->mSplitWinStatus:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lhuawei/android/mw/HwMultiWindowUtils;->mFloatImeMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 198
    :cond_0
    monitor-exit v1

    return v0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isFloatImeNeed(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 203
    const-class v5, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v5

    :try_start_0
    sget-boolean v6, Lhuawei/android/mw/HwMultiWindowUtils;->HW_FLOAT_KEYBOARD_FLAG:Z

    if-eqz v6, :cond_3

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "float_ime_mode"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v3

    .line 208
    .local v0, "floatImeMode":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mw_maintained"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v3, :cond_2

    move v1, v3

    .line 212
    .local v1, "splitWinActive":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "single_hand_mode"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 218
    .end local v0    # "floatImeMode":Z
    .end local v1    # "splitWinActive":Z
    .end local v2    # "value":Ljava/lang/String;
    :goto_2
    monitor-exit v5

    return v3

    :cond_1
    move v0, v4

    .line 205
    goto :goto_0

    .restart local v0    # "floatImeMode":Z
    :cond_2
    move v1, v4

    .line 208
    goto :goto_1

    .end local v0    # "floatImeMode":Z
    :cond_3
    move v3, v4

    .line 218
    goto :goto_2

    .line 203
    :catchall_0
    move-exception v3

    monitor-exit v5

    throw v3
.end method

.method private static isFloatImeWhitelisted(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 264
    sget-object v2, Lhuawei/android/mw/HwMultiWindowUtils;->mFloatKeyboardAppWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 265
    .local v0, "comp":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    const/4 v2, 0x1

    .line 269
    .end local v0    # "comp":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized isImeDockWindow(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    .line 234
    const-class v1, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v1

    :try_start_0
    const-string v0, "ImeDockWindow"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x899

    if-ne v0, p1, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isMultiWin(Landroid/os/IBinder;)Z
    .locals 3
    .param p0, "token"    # Landroid/os/IBinder;

    .prologue
    .line 137
    const-class v2, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lhuawei/android/mw/HwMultiWindowUtils;->getMultiWinService()Landroid/os/IMultiWinService;

    .line 138
    sget-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 140
    :try_start_1
    sget-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;

    invoke-interface {v1, p0}, Landroid/os/IMultiWinService;->isMultiWin(Landroid/os/IBinder;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 146
    :goto_0
    monitor-exit v2

    return v1

    .line 141
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isSplitWindowActive()Z
    .locals 3

    .prologue
    .line 109
    const-class v2, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lhuawei/android/mw/HwMultiWindowUtils;->getMultiWinService()Landroid/os/IMultiWinService;

    .line 111
    sget-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 113
    :try_start_1
    sget-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;

    invoke-interface {v1}, Landroid/os/IMultiWinService;->getMWMaintained()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v2

    return v1

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 116
    .restart local v0    # "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lhuawei/android/mw/HwMultiWindowUtils;->mMultiWinService:Landroid/os/IMultiWinService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized isSplitWindowActive(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 170
    const-class v2, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v2

    :try_start_0
    sget-boolean v3, Lhuawei/android/mw/HwMultiWindowUtils;->HW_MULTI_WINDOW_FLAG:Z

    if-eqz v3, :cond_1

    if-eqz p0, :cond_1

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mw_maintained"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ne v3, v0, :cond_0

    .line 175
    :goto_0
    monitor-exit v2

    return v0

    :cond_0
    move v0, v1

    .line 173
    goto :goto_0

    :cond_1
    move v0, v1

    .line 175
    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static populateFloatKeyboardWhiteListedApps(Landroid/content/Context;)V
    .locals 10
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 273
    new-instance v2, Ljava/io/File;

    const-string v7, "/data/cust/xml/floatime_apps.xml"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v2, "lConfigFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 275
    .local v3, "lInputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 279
    .local v5, "lXmlParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 280
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .end local v3    # "lInputStream":Ljava/io/InputStream;
    .local v4, "lInputStream":Ljava/io/InputStream;
    move-object v3, v4

    .line 287
    .end local v4    # "lInputStream":Ljava/io/InputStream;
    .restart local v3    # "lInputStream":Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 288
    const/4 v7, 0x0

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 290
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .line 291
    .local v6, "xmlEventType":I
    :goto_1
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    .line 292
    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const-string v7, "floatime_app"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 294
    const/4 v7, 0x0

    const-string v8, "package_name"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "lComponentName":Ljava/lang/String;
    sget-object v7, Lhuawei/android/mw/HwMultiWindowUtils;->mFloatKeyboardAppWhiteList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .end local v1    # "lComponentName":Ljava/lang/String;
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    goto :goto_1

    .line 283
    .end local v6    # "xmlEventType":I
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "floatime_apps.xml"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    goto :goto_0

    .line 298
    .restart local v6    # "xmlEventType":I
    :cond_2
    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    const-string v7, "floatime_whitelist"

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 311
    :cond_3
    if-eqz v3, :cond_4

    .line 313
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    .end local v6    # "xmlEventType":I
    :cond_4
    :goto_2
    return-void

    .line 314
    .restart local v6    # "xmlEventType":I
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "MultiWindow"

    const-string v8, "populateFloatKeyboardWhiteListedApps:- IOE while closing stream"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 304
    .end local v0    # "e":Ljava/io/IOException;
    .end local v6    # "xmlEventType":I
    :catch_1
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v7, "MultiWindow"

    const-string v8, "populateFloatKeyboardWhiteListedApps"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 311
    if-eqz v3, :cond_4

    .line 313
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 314
    :catch_2
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "MultiWindow"

    const-string v8, "populateFloatKeyboardWhiteListedApps:- IOE while closing stream"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 306
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 307
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v7, "MultiWindow"

    const-string v8, "populateFloatKeyboardWhiteListedApps"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    if-eqz v3, :cond_4

    .line 313
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 314
    :catch_4
    move-exception v0

    .line 315
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "MultiWindow"

    const-string v8, "populateFloatKeyboardWhiteListedApps:- IOE while closing stream"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 308
    .end local v0    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 309
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v7, "MultiWindow"

    const-string v8, "populateFloatKeyboardWhiteListedApps"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 311
    if-eqz v3, :cond_4

    .line 313
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 314
    :catch_6
    move-exception v0

    .line 315
    const-string v7, "MultiWindow"

    const-string v8, "populateFloatKeyboardWhiteListedApps:- IOE while closing stream"

    invoke-static {v7, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 311
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_5

    .line 313
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 317
    :cond_5
    :goto_3
    throw v7

    .line 314
    :catch_7
    move-exception v0

    .line 315
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v8, "MultiWindow"

    const-string v9, "populateFloatKeyboardWhiteListedApps:- IOE while closing stream"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public static declared-synchronized reevaluateFloatImeMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;
    .param p1, "aImePkgName"    # Ljava/lang/String;

    .prologue
    .line 261
    const-class v0, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v0

    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized setFloatImeMode(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 182
    const-class v0, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lhuawei/android/mw/HwMultiWindowUtils;->mFloatImeMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit v0

    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSingleHandStatus(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 186
    const-class v0, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lhuawei/android/mw/HwMultiWindowUtils;->mSingleHandStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit v0

    return-void

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSplitWinStatus(Z)V
    .locals 2
    .param p0, "enable"    # Z

    .prologue
    .line 190
    const-class v0, Lhuawei/android/mw/HwMultiWindowUtils;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lhuawei/android/mw/HwMultiWindowUtils;->mSplitWinStatus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit v0

    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
