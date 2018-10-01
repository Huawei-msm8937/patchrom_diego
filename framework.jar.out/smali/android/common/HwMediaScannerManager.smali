.class public interface abstract Landroid/common/HwMediaScannerManager;
.super Ljava/lang/Object;
.source "HwMediaScannerManager.java"


# virtual methods
.method public abstract getBufferSize(Landroid/net/Uri;I)I
.end method

.method public abstract getExtSdcardVolumePath(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract hwNeedSetSettings(Ljava/lang/String;)Z
.end method

.method public abstract hwSetRingtone2Settings(ZZLandroid/net/Uri;JLandroid/content/Context;)V
.end method

.method public abstract initializeHwVoiceAndFocus(Ljava/lang/String;Landroid/content/ContentValues;)V
.end method

.method public abstract initializeSniffer(Ljava/lang/String;)V
.end method

.method public abstract isBitmapSizeTooLarge(Ljava/lang/String;)Z
.end method

.method public abstract isSkipExtSdcard(Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
.end method

.method public abstract postHandleStringTag(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract preHandleStringTag(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract pruneDeadThumbnailsFolder()V
.end method

.method public abstract resetSniffer()V
.end method

.method public abstract scanCustomDirectories(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract setHwDefaultRingtoneFileNames()V
.end method

.method public abstract setMediaInserter(Landroid/media/MediaInserter;)V
.end method
