.class public interface abstract Landroid/common/HwSettingsManager;
.super Ljava/lang/Object;
.source "HwSettingsManager.java"


# virtual methods
.method public abstract checkPrimaryVolumeIsSD()Z
.end method

.method public abstract getExternalStorageDirectory()Ljava/io/File;
.end method

.method public abstract getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getExternalStorageState()Ljava/io/File;
.end method

.method public abstract getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation
.end method

.method public abstract getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
.end method

.method public abstract getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation
.end method

.method public abstract getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
.end method

.method public abstract getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation
.end method

.method public abstract getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
.end method

.method public abstract getMediaStorageDirectory()Ljava/io/File;
.end method

.method public abstract getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract handleDateDirectoryForClone(Ljava/io/File;I)Ljava/io/File;
.end method

.method public abstract handleExternalStorageDirectoryForClone(Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract initUserEnvironmentSD(I)V
.end method

.method public abstract putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
.end method

.method public abstract putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
.end method

.method public abstract putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
.end method

.method public abstract putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract setAirplaneMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
.end method
