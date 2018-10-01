.class public Landroid/common/HwDrmManagerDummy;
.super Ljava/lang/Object;
.source "HwDrmManagerDummy.java"

# interfaces
.implements Landroid/common/HwDrmManager;


# static fields
.field private static mHwDrmManager:Landroid/common/HwDrmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Landroid/common/HwDrmManagerDummy;->mHwDrmManager:Landroid/common/HwDrmManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/common/HwDrmManager;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/common/HwDrmManagerDummy;->mHwDrmManager:Landroid/common/HwDrmManager;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/common/HwDrmManagerDummy;

    invoke-direct {v0}, Landroid/common/HwDrmManagerDummy;-><init>()V

    sput-object v0, Landroid/common/HwDrmManagerDummy;->mHwDrmManager:Landroid/common/HwDrmManager;

    .line 33
    :cond_0
    sget-object v0, Landroid/common/HwDrmManagerDummy;->mHwDrmManager:Landroid/common/HwDrmManager;

    return-object v0
.end method


# virtual methods
.method public addHwDrmFileType()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public newDrmBitmapRegionDecoderInstance(Ljava/io/FileInputStream;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 1
    .param p1, "stream"    # Ljava/io/FileInputStream;
    .param p2, "pathName"    # Ljava/lang/String;
    .param p3, "isShareable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNtpTime(JJ)V
    .locals 0
    .param p1, "cachedNtpTime"    # J
    .param p3, "cachedElapsedTime"    # J

    .prologue
    .line 40
    return-void
.end method

.method public updateOmaMimeType(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 43
    return-void
.end method
