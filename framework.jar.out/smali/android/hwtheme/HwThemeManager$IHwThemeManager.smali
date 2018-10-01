.class public interface abstract Landroid/hwtheme/HwThemeManager$IHwThemeManager;
.super Ljava/lang/Object;
.source "HwThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hwtheme/HwThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHwThemeManager"
.end annotation


# virtual methods
.method public abstract addSimpleUIConfig(Landroid/content/pm/PackageParser$Activity;)V
.end method

.method public abstract applyDefaultHwTheme(ZLandroid/content/Context;)V
.end method

.method public abstract applyDefaultHwTheme(ZLandroid/content/Context;I)V
.end method

.method public abstract generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
.end method

.method public abstract getClonedDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getDefaultWallpaperIS(Landroid/content/Context;I)Ljava/io/InputStream;
.end method

.method public abstract getHwThemeLauncherIconSize(Landroid/app/ActivityManager;Landroid/content/res/Resources;)I
.end method

.method public abstract getJoinBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract getResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/IBinder;)Landroid/content/res/Resources;
.end method

.method public abstract getResources(Z)Landroid/content/res/Resources;
.end method

.method public abstract getShadowcolor(Landroid/content/res/TypedArray;I)I
.end method

.method public abstract getThemeBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
.end method

.method public abstract getThemeColor([IILandroid/util/TypedValue;Landroid/content/res/Resources;Z)I
.end method

.method public abstract initForThemeFont(Landroid/content/res/Configuration;)V
.end method

.method public abstract initHwConfiguration()Landroid/content/res/IHwConfiguration;
.end method

.method public abstract installDefaultHwTheme(Landroid/content/Context;)Z
.end method

.method public abstract installDefaultHwTheme(Landroid/content/Context;I)Z
.end method

.method public abstract installHwTheme(Ljava/lang/String;)Z
.end method

.method public abstract installHwTheme(Ljava/lang/String;Z)Z
.end method

.method public abstract installHwTheme(Ljava/lang/String;ZI)Z
.end method

.method public abstract isHwTheme()Z
.end method

.method public abstract isTAlarms(Ljava/lang/String;)Z
.end method

.method public abstract isTNotifications(Ljava/lang/String;)Z
.end method

.method public abstract isTRingtones(Ljava/lang/String;)Z
.end method

.method public abstract isTargetFamily(Ljava/lang/String;)Z
.end method

.method public abstract makeIconCache(Z)Z
.end method

.method public abstract removeIconCache(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract restoreIconCache(Ljava/lang/String;I)V
.end method

.method public abstract retrieveSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V
.end method

.method public abstract saveIconToCache(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
.end method

.method public abstract setThemeFont()V
.end method

.method public abstract setThemeFontOnConfigChg(Landroid/content/res/Configuration;)Z
.end method

.method public abstract shouldUseAdditionalChnFont(Ljava/lang/String;)Z
.end method

.method public abstract updateConfiguration()V
.end method

.method public abstract updateHwtResource(Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
.end method

.method public abstract updateHwtResource(Landroid/app/ActivityThread;Landroid/content/res/Resources;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/app/LoadedApk;)Landroid/content/res/Resources;
.end method

.method public abstract updateIconCache(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract updateResolveInfoIconCache(Landroid/content/pm/ResolveInfo;ILjava/lang/String;)V
.end method

.method public abstract updateSimpleUIConfig(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)V
.end method
