.class public Landroid/common/HwSettingsManagerDummy;
.super Ljava/lang/Object;
.source "HwSettingsManagerDummy.java"

# interfaces
.implements Landroid/common/HwSettingsManager;


# static fields
.field private static mHwSettingsManager:Landroid/common/HwSettingsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Landroid/common/HwSettingsManagerDummy;->mHwSettingsManager:Landroid/common/HwSettingsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/common/HwSettingsManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/common/HwSettingsManagerDummy;->mHwSettingsManager:Landroid/common/HwSettingsManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/common/HwSettingsManagerDummy;

    invoke-direct {v0}, Landroid/common/HwSettingsManagerDummy;-><init>()V

    sput-object v0, Landroid/common/HwSettingsManagerDummy;->mHwSettingsManager:Landroid/common/HwSettingsManager;

    .line 33
    :cond_0
    sget-object v0, Landroid/common/HwSettingsManagerDummy;->mHwSettingsManager:Landroid/common/HwSettingsManager;

    return-object v0
.end method


# virtual methods
.method public checkPrimaryVolumeIsSD()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExternalStorageState()Ljava/io/File;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # F

    .prologue
    .line 69
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I

    .prologue
    .line 45
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # J

    .prologue
    .line 57
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaStorageDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return-object v0
.end method

.method public getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p1, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleDateDirectoryForClone(Ljava/io/File;I)Ljava/io/File;
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "euid"    # I

    .prologue
    .line 111
    return-object p1
.end method

.method public handleExternalStorageDirectoryForClone(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 108
    return-object p1
.end method

.method public initUserEnvironmentSD(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 88
    return-void
.end method

.method public putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # F

    .prologue
    .line 77
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 53
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 65
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAirplaneMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method
