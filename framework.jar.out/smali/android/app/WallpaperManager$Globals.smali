.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mBlurWallpaper:Landroid/graphics/Bitmap;

.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private wallpaperHeight:I

.field private wallpaperWidth:I


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x0

    .line 251
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 247
    iput v1, p0, Landroid/app/WallpaperManager$Globals;->wallpaperWidth:I

    .line 248
    iput v1, p0, Landroid/app/WallpaperManager$Globals;->wallpaperHeight:I

    .line 252
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 253
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 254
    return-void
.end method

.method static synthetic access$200(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 239
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 337
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v8, :cond_1

    .line 338
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WallpaperService not running"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_0
    :goto_0
    return-object v7

    .line 343
    :cond_1
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v5, "params":Landroid/os/Bundle;
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8, p0, v5}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 345
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    .line 347
    const-string/jumbo v8, "width"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 348
    .local v6, "width":I
    const-string/jumbo v8, "height"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 350
    .local v3, "height":I
    :try_start_1
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 351
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 354
    .local v0, "bm":Landroid/graphics/Bitmap;
    iget-object v8, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v8, v0}, Landroid/app/IWallpaperManager;->scaleWallpaperBitmapToScreenSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 357
    invoke-static {p1, v0, v6, v3}, Landroid/hwtheme/HwThemeManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 363
    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    move-object v7, v8

    .line 366
    goto :goto_0

    .line 359
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Can\'t decode file"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    :try_start_4
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 364
    :catch_1
    move-exception v8

    goto :goto_0

    .line 362
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v8

    .line 363
    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 366
    :goto_2
    :try_start_6
    throw v8
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 369
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "height":I
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "width":I
    :catch_2
    move-exception v8

    goto :goto_0

    .line 364
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v3    # "height":I
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "width":I
    :catch_3
    move-exception v7

    goto :goto_1

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    const/4 v9, 0x0

    .line 379
    invoke-static {p1, p2}, Landroid/hwtheme/HwThemeManager;->getDefaultWallpaperIS(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v2

    .line 382
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_3

    .line 384
    :try_start_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 386
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v10, 0x0

    invoke-static {v2, v10, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 389
    .local v0, "bm":Landroid/graphics/Bitmap;
    :try_start_1
    iget-object v10, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-eqz v10, :cond_0

    .line 390
    iget-object v10, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v10, v0}, Landroid/app/IWallpaperManager;->scaleWallpaperBitmapToScreenSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 398
    :cond_0
    :goto_0
    :try_start_2
    const-string/jumbo v10, "ro.config.wallpaper_offset"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "location":[Ljava/lang/String;
    array-length v10, v3

    const/4 v11, 0x4

    if-ne v10, v11, :cond_1

    if-eqz v0, :cond_1

    .line 400
    const/4 v10, 0x0

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 401
    .local v5, "xStart":I
    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 402
    .local v8, "yStart":I
    const/4 v10, 0x2

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 403
    .local v6, "xWidth":I
    const/4 v10, 0x3

    aget-object v10, v3, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 404
    .local v7, "yHeight":I
    if-ltz v5, :cond_1

    if-ltz v8, :cond_1

    add-int v10, v5, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    if-gt v10, v11, :cond_1

    add-int v10, v8, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    if-gt v10, v11, :cond_1

    .line 405
    invoke-static {v0, v5, v8, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 422
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 428
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "location":[Ljava/lang/String;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "xStart":I
    .end local v6    # "xWidth":I
    .end local v7    # "yHeight":I
    .end local v8    # "yStart":I
    :goto_1
    return-object v0

    .line 411
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "location":[Ljava/lang/String;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    :try_start_4
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v10

    if-eqz v10, :cond_2

    if-eqz v0, :cond_2

    .line 414
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/WallpaperManager;->createDefaultWallpaperBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 422
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 423
    :catch_0
    move-exception v9

    goto :goto_1

    .line 422
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "location":[Ljava/lang/String;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :goto_2
    move-object v0, v9

    .line 428
    goto :goto_1

    .line 418
    :catch_1
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_7
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Can\'t decode stream"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 422
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 423
    :catch_2
    move-exception v10

    goto :goto_2

    .line 421
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v9

    .line 422
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 425
    :goto_3
    throw v9

    .line 423
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v3    # "location":[Ljava/lang/String;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v5    # "xStart":I
    .restart local v6    # "xWidth":I
    .restart local v7    # "yHeight":I
    .restart local v8    # "yStart":I
    :catch_3
    move-exception v9

    goto :goto_1

    .end local v5    # "xStart":I
    .end local v6    # "xWidth":I
    .end local v7    # "yHeight":I
    .end local v8    # "yStart":I
    :catch_4
    move-exception v10

    goto :goto_2

    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v3    # "location":[Ljava/lang/String;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v10

    goto :goto_3

    .line 392
    .restart local v0    # "bm":Landroid/graphics/Bitmap;
    .restart local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_6
    move-exception v10

    goto/16 :goto_0
.end method


# virtual methods
.method public forgetLoadedBlurWallpaper()V
    .locals 1

    .prologue
    .line 517
    monitor-enter p0

    .line 518
    :try_start_0
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 522
    :cond_0
    monitor-exit p0

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 330
    monitor-enter p0

    .line 331
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 333
    monitor-exit p0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized getWallpaperHeight()I
    .locals 1

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/app/WallpaperManager$Globals;->wallpaperHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWallpaperWidth()I
    .locals 1

    .prologue
    .line 586
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/app/WallpaperManager$Globals;->wallpaperWidth:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBlurWallpaperChanged()V
    .locals 9

    .prologue
    .line 433
    monitor-enter p0

    .line 434
    const/4 v7, 0x0

    :try_start_0
    iput-object v7, p0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 435
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    sget-object v7, Landroid/app/WallpaperManager;->mCallbacks:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 437
    sget-object v7, Landroid/app/WallpaperManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 438
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 439
    sget-object v7, Landroid/app/WallpaperManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    .line 440
    .local v6, "obj":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 442
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 443
    .local v2, "cls":Ljava/lang/Class;
    const-string/jumbo v7, "onBlurWallpaperChanged"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 444
    .local v1, "callback":Ljava/lang/reflect/Method;
    new-instance v0, Landroid/app/WallpaperManager$Globals$1;

    invoke-direct {v0, p0, v1}, Landroid/app/WallpaperManager$Globals$1;-><init>(Landroid/app/WallpaperManager$Globals;Ljava/lang/reflect/Method;)V

    .line 451
    .local v0, "action":Ljava/security/PrivilegedAction;
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 452
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    .end local v0    # "action":Ljava/security/PrivilegedAction;
    .end local v1    # "callback":Ljava/lang/reflect/Method;
    .end local v2    # "cls":Ljava/lang/Class;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 435
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v6    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 454
    .restart local v3    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 455
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unable to get onBlurWallpaperChanged method"

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 460
    .end local v3    # "count":I
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_1
    return-void

    .line 453
    .restart local v3    # "count":I
    .restart local v5    # "i":I
    .restart local v6    # "obj":Ljava/lang/Object;
    :catch_1
    move-exception v7

    goto :goto_1
.end method

.method public onWallpaperChanged()V
    .locals 1

    .prologue
    .line 262
    monitor-enter p0

    .line 263
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 265
    monitor-exit p0

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public peekBlurWallpaperBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 462
    monitor-enter p0

    .line 463
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-gtz v7, :cond_1

    .line 464
    :cond_0
    const/4 v7, 0x0

    monitor-exit p0

    .line 513
    :goto_0
    return-object v7

    .line 466
    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_2

    .line 467
    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    if-gt v7, v14, :cond_2

    .line 468
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 514
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 471
    :cond_2
    const/4 v7, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 472
    # getter for: Landroid/app/WallpaperManager;->DEBUG:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 473
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v14, "WallpaperManager peekBlurWallpaperBitmap begin"

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    .line 477
    .local v10, "timeBegin":J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v0, p0

    invoke-interface {v7, v0}, Landroid/app/IWallpaperManager;->getBlurWallpaper(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .line 478
    .local v5, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_6

    .line 480
    :try_start_3
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 481
    .local v6, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    if-nez v7, :cond_4

    .line 482
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "peekBlurWallpaperBitmap() has invalid fd!"

    invoke-static {v7, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    const/4 v7, 0x0

    .line 499
    :try_start_4
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 502
    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 485
    :cond_4
    :try_start_6
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    const/4 v14, 0x0

    invoke-static {v7, v14, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 487
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-lez v7, :cond_5

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    if-lez v7, :cond_5

    .line 488
    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v0, v16

    invoke-static {v2, v7, v14, v15, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 499
    :cond_5
    :try_start_7
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 508
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_6
    :goto_2
    :try_start_8
    # getter for: Landroid/app/WallpaperManager;->DEBUG:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 510
    .local v12, "timeEnd":J
    sub-long v8, v12, v10

    .line 511
    .local v8, "takenTime":J
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WallpaperManager peekBlurWallpaperBitmap takenTime = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    .end local v8    # "takenTime":J
    .end local v12    # "timeEnd":J
    :cond_7
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 491
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v3

    .line 492
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    const/4 v7, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 493
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v14, "Can\'t decode file"

    invoke-static {v7, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 499
    :try_start_a
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 500
    :catch_1
    move-exception v7

    goto :goto_2

    .line 494
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v4

    .line 495
    .local v4, "ex":Ljava/lang/Exception;
    const/4 v7, 0x0

    :try_start_b
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/app/WallpaperManager$Globals;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 496
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v14, "Can\'t decode file"

    invoke-static {v7, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 499
    :try_start_c
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 500
    :catch_3
    move-exception v7

    goto :goto_2

    .line 498
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    .line 499
    :try_start_d
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 502
    :goto_3
    :try_start_e
    throw v7
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 505
    .end local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v7

    goto :goto_2

    .line 500
    .restart local v5    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_5
    move-exception v14

    goto/16 :goto_1

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    :catch_6
    move-exception v7

    goto :goto_2

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_7
    move-exception v14

    goto :goto_3
.end method

.method public peekCurrentWallpaperBounds()Landroid/os/Bundle;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 532
    monitor-enter p0

    .line 533
    :try_start_0
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v6, :cond_0

    .line 534
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "WallpaperService not running"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v5

    .line 579
    :goto_0
    return-object v4

    .line 538
    :cond_0
    const/4 v1, 0x0

    .line 540
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    :try_start_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 541
    .local v4, "params":Landroid/os/Bundle;
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v6, p0, v4}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 542
    const-string/jumbo v6, "width"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 543
    const-string/jumbo v6, "height"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 545
    if-nez v1, :cond_2

    .line 546
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cannot get ParcelFileDescriptor of current user wallpaper in read only mode, return null!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 573
    if-eqz v1, :cond_1

    .line 574
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v4, v5

    goto :goto_0

    .line 549
    :cond_2
    :try_start_4
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 552
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 553
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 555
    const-string/jumbo v6, "wallpaper_file_width"

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 556
    const-string/jumbo v6, "wallpaper_file_height"

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 557
    # getter for: Landroid/app/WallpaperManager;->DEBUG:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$100()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 558
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUserWallpaperBounds return wallpaper_file_width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "wallpaper_file_width"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", wallpaper_file_height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "wallpaper_file_height"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 573
    :cond_3
    if-eqz v1, :cond_4

    .line 574
    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 577
    :cond_4
    :goto_2
    :try_start_6
    monitor-exit p0

    goto/16 :goto_0

    .line 580
    .end local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "params":Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 565
    .restart local v1    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v6

    .line 573
    if-eqz v1, :cond_5

    .line 574
    :try_start_7
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 579
    :cond_5
    :goto_3
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object v4, v5

    goto/16 :goto_0

    .line 567
    :catch_1
    move-exception v2

    .line 568
    .local v2, "oome":Ljava/lang/OutOfMemoryError;
    :try_start_9
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "No memory load current wallpaper bounds"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 573
    if-eqz v1, :cond_5

    .line 574
    :try_start_a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 575
    :catch_2
    move-exception v6

    goto :goto_3

    .line 569
    .end local v2    # "oome":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    :try_start_b
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Error while getting current wallpaper bounds"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 573
    if-eqz v1, :cond_5

    .line 574
    :try_start_c
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 575
    :catch_4
    move-exception v6

    goto :goto_3

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 573
    if-eqz v1, :cond_6

    .line 574
    :try_start_d
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 577
    :cond_6
    :goto_4
    :try_start_e
    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 575
    .restart local v4    # "params":Landroid/os/Bundle;
    :catch_5
    move-exception v6

    goto/16 :goto_1

    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_6
    move-exception v5

    goto :goto_2

    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "params":Landroid/os/Bundle;
    :catch_7
    move-exception v6

    goto :goto_3

    :catch_8
    move-exception v6

    goto :goto_4
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    const/4 v2, 0x0

    .line 269
    monitor-enter p0

    .line 271
    const/4 v1, -0x1

    .line 273
    .local v1, "userId":I
    :try_start_0
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 275
    :try_start_1
    iget-object v3, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 276
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    :goto_0
    return-object v2

    .line 279
    :cond_0
    :try_start_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWallpaperUserId()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 285
    :cond_1
    :goto_1
    :try_start_4
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 326
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 288
    :cond_2
    :try_start_5
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 289
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 291
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 293
    :try_start_6
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 297
    :goto_2
    if-eqz p2, :cond_6

    .line 298
    :try_start_7
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    .line 300
    invoke-direct {p0, p1, v1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 303
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 304
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/app/WallpaperManager$Globals;->wallpaperWidth:I

    .line 305
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/app/WallpaperManager$Globals;->wallpaperHeight:I

    .line 311
    :goto_3
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No memory load current wallpaper"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 307
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/WallpaperManager$Globals;->wallpaperWidth:I

    .line 308
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/WallpaperManager$Globals;->wallpaperHeight:I

    goto :goto_3

    .line 313
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 317
    :cond_6
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 318
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Landroid/app/WallpaperManager$Globals;->wallpaperWidth:I

    .line 319
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Landroid/app/WallpaperManager$Globals;->wallpaperHeight:I

    .line 325
    :goto_4
    iget-object v2, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 321
    :cond_7
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/WallpaperManager$Globals;->wallpaperWidth:I

    .line 322
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/WallpaperManager$Globals;->wallpaperHeight:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 281
    :catch_1
    move-exception v2

    goto :goto_1
.end method
