.class public Landroid/common/HwMediaScannerManagerDummy;
.super Ljava/lang/Object;
.source "HwMediaScannerManagerDummy.java"

# interfaces
.implements Landroid/common/HwMediaScannerManager;


# static fields
.field private static mHwMediaScannerManager:Landroid/common/HwMediaScannerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/common/HwMediaScannerManagerDummy;

    invoke-direct {v0}, Landroid/common/HwMediaScannerManagerDummy;-><init>()V

    sput-object v0, Landroid/common/HwMediaScannerManagerDummy;->mHwMediaScannerManager:Landroid/common/HwMediaScannerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/common/HwMediaScannerManager;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/common/HwMediaScannerManagerDummy;->mHwMediaScannerManager:Landroid/common/HwMediaScannerManager;

    return-object v0
.end method


# virtual methods
.method public getBufferSize(Landroid/net/Uri;I)I
    .locals 0
    .param p1, "tableUri"    # Landroid/net/Uri;
    .param p2, "bufferSizePerUri"    # I

    .prologue
    .line 47
    return p2
.end method

.method public getExtSdcardVolumePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public hwNeedSetSettings(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public hwSetRingtone2Settings(ZZLandroid/net/Uri;JLandroid/content/Context;)V
    .locals 0
    .param p1, "needToSetSettings2"    # Z
    .param p2, "ringtones"    # Z
    .param p3, "tableUri"    # Landroid/net/Uri;
    .param p4, "rowId"    # J
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    return-void
.end method

.method public initializeHwVoiceAndFocus(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 68
    return-void
.end method

.method public initializeSniffer(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 78
    return-void
.end method

.method public isBitmapSizeTooLarge(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public isSkipExtSdcard(Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 1
    .param p1, "mMediaProvider"    # Landroid/content/IContentProvider;
    .param p2, "mExtStroagePath"    # Ljava/lang/String;
    .param p3, "mPackageName"    # Ljava/lang/String;
    .param p4, "mFilesUriNoNotify"    # Landroid/net/Uri;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public postHandleStringTag(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .prologue
    .line 84
    return-object p1
.end method

.method public preHandleStringTag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "mimetype"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public pruneDeadThumbnailsFolder()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public resetSniffer()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public scanCustomDirectories(Landroid/media/MediaScanner;Landroid/media/MediaScanner$MyMediaScannerClient;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "scanner"    # Landroid/media/MediaScanner;
    .param p2, "mClient"    # Landroid/media/MediaScanner$MyMediaScannerClient;
    .param p3, "directories"    # [Ljava/lang/String;
    .param p4, "volumeName"    # Ljava/lang/String;
    .param p5, "whiteList"    # [Ljava/lang/String;
    .param p6, "blackList"    # [Ljava/lang/String;

    .prologue
    .line 42
    invoke-virtual {p1, p3, p4}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public setHwDefaultRingtoneFileNames()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public setMediaInserter(Landroid/media/MediaInserter;)V
    .locals 0
    .param p1, "mediaInserter"    # Landroid/media/MediaInserter;

    .prologue
    .line 38
    return-void
.end method
