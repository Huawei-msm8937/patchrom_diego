.class public Landroid/hwtheme/HwThemeManagerDummy;
.super Ljava/lang/Object;
.source "HwThemeManagerDummy.java"

# interfaces
.implements Landroid/hwtheme/HwThemeManager$IHwThemeManager;


# static fields
.field private static final STYLE_DATA:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSimpleUIConfig(Landroid/content/pm/PackageParser$Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/content/pm/PackageParser$Activity;

    .prologue
    .line 206
    return-void
.end method

.method public applyDefaultHwTheme(ZLandroid/content/Context;)V
    .locals 0
    .param p1, "checkState"    # Z
    .param p2, "ctx"    # Landroid/content/Context;

    .prologue
    .line 200
    return-void
.end method

.method public applyDefaultHwTheme(ZLandroid/content/Context;I)V
    .locals 0
    .param p1, "checkState"    # Z
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 203
    return-void
.end method

.method public generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bm"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 229
    return-object p2
.end method

.method public getClonedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 239
    return-object p2
.end method

.method public getDefaultWallpaperIS(Landroid/content/Context;I)Ljava/io/InputStream;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108026c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getHwThemeLauncherIconSize(Landroid/app/ActivityManager;Landroid/content/res/Resources;)I
    .locals 1
    .param p1, "am"    # Landroid/app/ActivityManager;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    return v0
.end method

.method public getJoinBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcDraw"    # Landroid/graphics/drawable/Drawable;
    .param p3, "backgroudId"    # I

    .prologue
    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "dm"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "token"    # Landroid/os/IBinder;

    .prologue
    .line 84
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    return-object v0
.end method

.method public getResources(Z)Landroid/content/res/Resources;
    .locals 1
    .param p1, "preloading"    # Z

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShadowcolor(Landroid/content/res/TypedArray;I)I
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "attr"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getThemeBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemeColor([IILandroid/util/TypedValue;Landroid/content/res/Resources;Z)I
    .locals 1
    .param p1, "data"    # [I
    .param p2, "index"    # I
    .param p3, "value"    # Landroid/util/TypedValue;
    .param p4, "resources"    # Landroid/content/res/Resources;
    .param p5, "flag"    # Z

    .prologue
    .line 104
    add-int/lit8 v0, p2, 0x1

    aget v0, p1, v0

    return v0
.end method

.method public initForThemeFont(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 225
    return-void
.end method

.method public initHwConfiguration()Landroid/content/res/IHwConfiguration;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Landroid/content/res/HwConfigurationDummy;

    invoke-direct {v0}, Landroid/content/res/HwConfigurationDummy;-><init>()V

    return-object v0
.end method

.method public installDefaultHwTheme(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public installDefaultHwTheme(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public installHwTheme(Ljava/lang/String;)Z
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public installHwTheme(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "setwallpaper"    # Z

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public installHwTheme(Ljava/lang/String;ZI)Z
    .locals 1
    .param p1, "themePath"    # Ljava/lang/String;
    .param p2, "setwallpaper"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public isHwTheme()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public isTAlarms(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public isTNotifications(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public isTRingtones(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public isTargetFamily(Ljava/lang/String;)Z
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method public makeIconCache(Z)Z
    .locals 1
    .param p1, "clearall"    # Z

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public removeIconCache(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "packageIcon"    # I

    .prologue
    .line 111
    return-void
.end method

.method public restoreIconCache(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "icon"    # I

    .prologue
    .line 113
    return-void
.end method

.method public retrieveSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 213
    return-void
.end method

.method public saveIconToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "fn"    # Ljava/lang/String;
    .param p3, "clearold"    # Z

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public setThemeFont()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public setThemeFontOnConfigChg(Landroid/content/res/Configuration;)Z
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 188
    const/4 v0, 0x0

    return v0
.end method

.method public shouldUseAdditionalChnFont(Ljava/lang/String;)Z
    .locals 1
    .param p1, "familyName"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public updateConfiguration()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public updateHwtResource(Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 0
    .param p1, "mainThread"    # Landroid/app/ActivityThread;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "mResDir"    # Ljava/lang/String;
    .param p4, "loadApk"    # Landroid/app/LoadedApk;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    return-object p2
.end method

.method public updateHwtResource(Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
    .locals 0
    .param p1, "mainThread"    # Landroid/app/ActivityThread;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "mResDir"    # Ljava/lang/String;
    .param p4, "splitResDirs"    # [Ljava/lang/String;
    .param p5, "overlayDirs"    # [Ljava/lang/String;
    .param p6, "libDirs"    # [Ljava/lang/String;
    .param p7, "loadApk"    # Landroid/app/LoadedApk;

    .prologue
    .line 128
    return-object p2
.end method

.method public updateIconCache(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "icon"    # I
    .param p5, "packageIcon"    # I

    .prologue
    .line 108
    return-void
.end method

.method public updateResolveInfoIconCache(Landroid/content/pm/ResolveInfo;ILjava/lang/String;)V
    .locals 0
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "icon"    # I
    .param p3, "resolvePackageName"    # Ljava/lang/String;

    .prologue
    .line 118
    return-void
.end method

.method public updateSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "configChanges"    # I

    .prologue
    .line 216
    return-void
.end method
