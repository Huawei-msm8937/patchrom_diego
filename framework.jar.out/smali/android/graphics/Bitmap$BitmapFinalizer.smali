.class Landroid/graphics/Bitmap$BitmapFinalizer;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapFinalizer"
.end annotation


# instance fields
.field private mNativeAllocationByteCount:I

.field private mNativeBitmap:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "nativeBitmap"    # J

    .prologue
    .line 1730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1731
    iput-wide p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    .line 1732
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap$BitmapFinalizer;)J
    .locals 2
    .param p0, "x0"    # Landroid/graphics/Bitmap$BitmapFinalizer;

    .prologue
    .line 1723
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    return-wide v0
.end method


# virtual methods
.method public finalize()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 1747
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1751
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    .line 1752
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->access$200(J)V

    .line 1753
    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    .line 1755
    :goto_0
    return-void

    .line 1748
    :catch_0
    move-exception v0

    .line 1751
    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    .line 1752
    iget-wide v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->access$200(J)V

    .line 1753
    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    goto :goto_0

    .line 1751
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Landroid/graphics/Bitmap$BitmapFinalizer;->setNativeAllocationByteCount(I)V

    .line 1752
    iget-wide v2, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    # invokes: Landroid/graphics/Bitmap;->nativeDestructor(J)V
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->access$200(J)V

    .line 1753
    iput-wide v4, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeBitmap:J

    throw v0
.end method

.method public setNativeAllocationByteCount(I)V
    .locals 2
    .param p1, "nativeByteCount"    # I

    .prologue
    .line 1735
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_0

    .line 1736
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 1738
    :cond_0
    iput p1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    .line 1739
    iget v0, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    if-eqz v0, :cond_1

    .line 1740
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/graphics/Bitmap$BitmapFinalizer;->mNativeAllocationByteCount:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 1742
    :cond_1
    return-void
.end method
