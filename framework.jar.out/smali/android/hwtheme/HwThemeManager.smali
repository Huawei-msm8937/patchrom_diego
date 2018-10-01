.class public Landroid/hwtheme/HwThemeManager;
.super Ljava/lang/Object;
.source "HwThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hwtheme/HwThemeManager$IHwThemeManager;,
        Landroid/hwtheme/HwThemeManager$IconType;
    }
.end annotation


# static fields
.field public static final DEFAULT_WALLPAPER:Ljava/lang/String; = "unlock_wallpaper_0.jpg"

.field public static final DIR_UNLOCK:Ljava/lang/String; = "/data/skin/unlock/"

.field public static final DIR_WALLPAPER:Ljava/lang/String; = "/data/skin/wallpaper/"

.field public static final HAS_DIALER_IMAGE:I = 0x1

.field public static final HWT_FPATH_NEW_KEYGUARD:Ljava/lang/String; = "/data/skin/com.android.keyguard"

.field public static final HWT_FPATH_OLD_KEYGUARD:Ljava/lang/String; = "/data/skin/com.huawei.android.hwlockscreen"

.field public static final HWT_FPATH_SYSWP:Ljava/lang/String; = "/data/system/users/0/wallpaper"

.field public static final HWT_GROUP_MEDIARW:Ljava/lang/String; = "media_rw"

.field public static final HWT_MODE_ALL:Ljava/lang/String; = "0775"

.field public static final HWT_NEW_KEYGUARD:Ljava/lang/String; = "com.android.keyguard"

.field public static final HWT_OLD_KEYGUARD:Ljava/lang/String; = "com.huawei.android.hwlockscreen"

.field public static final HWT_PATH_COLOR_BLACK:Ljava/lang/String; = "/system/themes/Taste.hwt"

.field public static final HWT_PATH_COLOR_PINK:Ljava/lang/String; = "/system/themes/Elegant.hwt"

.field public static final HWT_PATH_COLOR_WHITE:Ljava/lang/String; = "/system/themes/Pure.hwt"

.field public static final HWT_PATH_ICONCACHE:Ljava/lang/String; = "/data/skin/iconcache/"

.field public static final HWT_PATH_SKIN:Ljava/lang/String;

.field public static final HWT_PATH_SKINALL:Ljava/lang/String; = "/data/skin*"

.field public static final HWT_PATH_SKIN_DEC:Ljava/lang/String; = "/data/skin/description.xml"

.field public static final HWT_PATH_SKIN_INSTALL_FLAG:Ljava/lang/String;

.field public static final HWT_PATH_SYSWP:Ljava/lang/String; = "/data/system/users/0/"

.field public static final HWT_PATH_TEMP_SKIN:Ljava/lang/String; = "/data/skin.tmp"

.field public static final HWT_PATH_TEMP_SKIN_L1ALL:Ljava/lang/String; = "/data/skin.tmp/*"

.field public static final HWT_PATH_TEMP_SKIN_L2ALL:Ljava/lang/String; = "/data/skin.tmp/**/*"

.field public static final HWT_PATH_THEME:Ljava/lang/String;

.field public static final HWT_USER_ROOT:Ljava/lang/String; = "root"

.field public static final HWT_USER_SYSTEM:Ljava/lang/String; = "system"

.field public static final SYS_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static final TAG:Ljava/lang/String;

.field public static final TAG_ITEM:Ljava/lang/String; = "item"

.field public static final TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"

.field public static final TAG_WALLPAPER:Ljava/lang/String; = "wallpaper"

.field private static sInstance:Landroid/hwtheme/HwThemeManager$IHwThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    const-class v0, Landroid/hwtheme/HwThemeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hwtheme/HwThemeManager;->TAG:Ljava/lang/String;

    .line 58
    const/4 v0, 0x0

    sput-object v0, Landroid/hwtheme/HwThemeManager;->sInstance:Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/skin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hwtheme/HwThemeManager;->HWT_PATH_SKIN:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/themes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/skin_if"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hwtheme/HwThemeManager;->HWT_PATH_SKIN_INSTALL_FLAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    return-void
.end method

.method public static addSimpleUIConfig(Landroid/content/pm/PackageParser$Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/content/pm/PackageParser$Activity;

    .prologue
    .line 360
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->addSimpleUIConfig(Landroid/content/pm/PackageParser$Activity;)V

    .line 361
    return-void
.end method

.method public static applyDefaultHwTheme(ZLandroid/content/Context;)V
    .locals 1
    .param p0, "checkState"    # Z
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 352
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->applyDefaultHwTheme(ZLandroid/content/Context;)V

    .line 353
    return-void
.end method

.method public static applyDefaultHwTheme(ZLandroid/content/Context;I)V
    .locals 1
    .param p0, "checkState"    # Z
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 356
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->applyDefaultHwTheme(ZLandroid/content/Context;I)V

    .line 357
    return-void
.end method

.method public static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 388
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getClonedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 402
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getClonedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultWallpaperIS(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 290
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getDefaultWallpaperIS(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getHwThemeLauncherIconSize(Landroid/app/ActivityManager;Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 255
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getHwThemeLauncherIconSize(Landroid/app/ActivityManager;Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method private static getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;
    .locals 4

    .prologue
    .line 202
    sget-object v2, Landroid/hwtheme/HwThemeManager;->sInstance:Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    if-eqz v2, :cond_0

    .line 203
    sget-object v2, Landroid/hwtheme/HwThemeManager;->sInstance:Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    .line 218
    .local v0, "instance":Landroid/hwtheme/HwThemeManager$IHwThemeManager;
    .local v1, "obj":Landroid/hwtheme/IHwThemeManagerFactory;
    :goto_0
    return-object v2

    .line 206
    .end local v0    # "instance":Landroid/hwtheme/HwThemeManager$IHwThemeManager;
    .end local v1    # "obj":Landroid/hwtheme/IHwThemeManagerFactory;
    :cond_0
    const/4 v0, 0x0

    .line 207
    .restart local v0    # "instance":Landroid/hwtheme/HwThemeManager$IHwThemeManager;
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwThemeManagerFactory()Landroid/hwtheme/IHwThemeManagerFactory;

    move-result-object v1

    .line 208
    .restart local v1    # "obj":Landroid/hwtheme/IHwThemeManagerFactory;
    if-eqz v1, :cond_1

    .line 209
    invoke-interface {v1}, Landroid/hwtheme/IHwThemeManagerFactory;->getThemeManagerInstance()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    .line 211
    :cond_1
    if-eqz v0, :cond_2

    .line 213
    sput-object v0, Landroid/hwtheme/HwThemeManager;->sInstance:Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    .line 218
    :goto_1
    sget-object v2, Landroid/hwtheme/HwThemeManager;->sInstance:Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    goto :goto_0

    .line 215
    :cond_2
    sget-object v2, Landroid/hwtheme/HwThemeManager;->TAG:Ljava/lang/String;

    const-string v3, "can\'t get impl object from vendor, use default implemention"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance v2, Landroid/hwtheme/HwThemeManagerDummy;

    invoke-direct {v2}, Landroid/hwtheme/HwThemeManagerDummy;-><init>()V

    sput-object v2, Landroid/hwtheme/HwThemeManager;->sInstance:Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    goto :goto_1
.end method

.method public static getJoinBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "srcDraw"    # Landroid/graphics/drawable/Drawable;
    .param p2, "backgroudId"    # I

    .prologue
    .line 397
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getJoinBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 247
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 6
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "dm"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "compInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "token"    # Landroid/os/IBinder;

    .prologue
    .line 243
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getResources(Z)Landroid/content/res/Resources;
    .locals 1
    .param p0, "preloading"    # Z

    .prologue
    .line 251
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getResources(Z)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getShadowcolor(Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "attr"    # I

    .prologue
    .line 331
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getShadowcolor(Landroid/content/res/TypedArray;I)I

    move-result v0

    return v0
.end method

.method public static getThemeBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 377
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getThemeBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getThemeColor([IILandroid/util/TypedValue;Landroid/content/res/Resources;Z)I
    .locals 6
    .param p0, "data"    # [I
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "flag"    # Z

    .prologue
    .line 259
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->getThemeColor([IILandroid/util/TypedValue;Landroid/content/res/Resources;Z)I

    move-result v0

    return v0
.end method

.method public static initForThemeFont(Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 383
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->initForThemeFont(Landroid/content/res/Configuration;)V

    .line 384
    return-void
.end method

.method public static initHwConfiguration()Landroid/content/res/IHwConfiguration;
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->initHwConfiguration()Landroid/content/res/IHwConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static installDefaultHwTheme(Landroid/content/Context;)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 295
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->installDefaultHwTheme(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static installDefaultHwTheme(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    .line 299
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->installDefaultHwTheme(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static installHwTheme(Ljava/lang/String;)Z
    .locals 1
    .param p0, "themePath"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->installHwTheme(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static installHwTheme(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "themePath"    # Ljava/lang/String;
    .param p1, "setwallpaper"    # Z

    .prologue
    .line 307
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->installHwTheme(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static installHwTheme(Ljava/lang/String;ZI)Z
    .locals 1
    .param p0, "themePath"    # Ljava/lang/String;
    .param p1, "setwallpaper"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 311
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->installHwTheme(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static isHwTheme()Z
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->isHwTheme()Z

    move-result v0

    return v0
.end method

.method public static isTAlarms(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->isTAlarms(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTNotifications(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->isTNotifications(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTRingtones(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->isTRingtones(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTargetFamily(Ljava/lang/String;)Z
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;

    .prologue
    .line 347
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->isTargetFamily(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static linkDataSkinDirAsUser(I)V
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 392
    const-string/jumbo v0, "system"

    sget-object v1, Landroid/hwtheme/HwThemeManager;->HWT_PATH_SKIN:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/huawei/android/hwutil/CommandLineUtil;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 393
    const-string/jumbo v0, "system"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/hwtheme/HwThemeManager;->HWT_PATH_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/hwtheme/HwThemeManager;->HWT_PATH_SKIN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/huawei/android/hwutil/CommandLineUtil;->link(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 394
    return-void
.end method

.method public static makeIconCache(Z)Z
    .locals 1
    .param p0, "clearall"    # Z

    .prologue
    .line 315
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->makeIconCache(Z)Z

    move-result v0

    return v0
.end method

.method public static removeIconCache(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "icon"    # I
    .param p3, "packageIcon"    # I

    .prologue
    .line 271
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->removeIconCache(Ljava/lang/String;Ljava/lang/String;II)V

    .line 272
    return-void
.end method

.method public static restoreIconCache(Ljava/lang/String;I)V
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "icon"    # I

    .prologue
    .line 275
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->restoreIconCache(Ljava/lang/String;I)V

    .line 276
    return-void
.end method

.method public static retrieveSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 369
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->retrieveSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 370
    return-void
.end method

.method public static saveIconToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "fn"    # Ljava/lang/String;
    .param p2, "clearold"    # Z

    .prologue
    .line 319
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->saveIconToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setThemeFont()V
    .locals 1

    .prologue
    .line 335
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->setThemeFont()V

    .line 336
    return-void
.end method

.method public static setThemeFontOnConfigChg(Landroid/content/res/Configuration;)Z
    .locals 1
    .param p0, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 340
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->setThemeFontOnConfigChg(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0
.end method

.method public static shouldUseAdditionalChnFont(Ljava/lang/String;)Z
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->shouldUseAdditionalChnFont(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateConfiguration()V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->updateConfiguration()V

    .line 239
    return-void
.end method

.method public static updateHwtResource(Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "mResDir"    # Ljava/lang/String;
    .param p3, "loadApk"    # Landroid/app/LoadedApk;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->updateHwtResource(Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static updateHwtResource(Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 8
    .param p0, "mainThread"    # Landroid/app/ActivityThread;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "mResDir"    # Ljava/lang/String;
    .param p3, "splitResDirs"    # [Ljava/lang/String;
    .param p4, "overlayDirs"    # [Ljava/lang/String;
    .param p5, "libDirs"    # [Ljava/lang/String;
    .param p6, "loadApk"    # Landroid/app/LoadedApk;

    .prologue
    .line 285
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->updateHwtResource(Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static updateIconCache(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p0, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "packageIcon"    # I

    .prologue
    .line 263
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->updateIconCache(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 264
    return-void
.end method

.method public static updateResolveInfoIconCache(Landroid/content/pm/ResolveInfo;ILjava/lang/String;)V
    .locals 1
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p1, "icon"    # I
    .param p2, "resolvePackageName"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->updateResolveInfoIconCache(Landroid/content/pm/ResolveInfo;ILjava/lang/String;)V

    .line 268
    return-void
.end method

.method public static updateSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "configChanges"    # I

    .prologue
    .line 373
    invoke-static {}, Landroid/hwtheme/HwThemeManager;->getImplObject()Landroid/hwtheme/HwThemeManager$IHwThemeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/hwtheme/HwThemeManager$IHwThemeManager;->updateSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V

    .line 374
    return-void
.end method
