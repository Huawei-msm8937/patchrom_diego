.class public interface abstract Landroid/common/HwDrmManager;
.super Ljava/lang/Object;
.source "HwDrmManager.java"


# virtual methods
.method public abstract addHwDrmFileType()V
.end method

.method public abstract newDrmBitmapRegionDecoderInstance(Ljava/io/FileInputStream;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setNtpTime(JJ)V
.end method

.method public abstract updateOmaMimeType(Ljava/lang/String;Landroid/content/ContentValues;)V
.end method
