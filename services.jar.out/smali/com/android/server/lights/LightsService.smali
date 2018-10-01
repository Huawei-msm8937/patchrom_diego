.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$LightImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MAX_BRIGHTNESS_PATH:Ljava/lang/String; = "/sys/class/leds/lcd_backlight0/max_brightness"

.field static final TAG:Ljava/lang/String; = "LightsService"

.field private static mAmountTime:J

.field private static mCurBrightness:I

.field private static mIsAutoAdjust:Z

.field private static mLcdBrightness:I

.field public static mMaxBrightnessFromKernel:I

.field private static mRatio:D


# instance fields
.field private mH:Landroid/os/Handler;

.field protected mIsHighPrecision:Z

.field final mLights:[Lcom/android/server/lights/LightsService$LightImpl;

.field protected mNativePointer:J

.field private final mService:Lcom/android/server/lights/LightsManager;

.field protected mWriteAutoBrightnessDbEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 52
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sput-wide v0, Lcom/android/server/lights/LightsService;->mRatio:D

    .line 53
    sput v2, Lcom/android/server/lights/LightsService;->mLcdBrightness:I

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/lights/LightsService;->mIsAutoAdjust:Z

    .line 57
    sput v2, Lcom/android/server/lights/LightsService;->mCurBrightness:I

    .line 60
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/lights/LightsService;->mAmountTime:J

    .line 64
    const/16 v0, 0xff

    sput v0, Lcom/android/server/lights/LightsService;->mMaxBrightnessFromKernel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xc

    .line 326
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 50
    new-array v1, v4, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 62
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mIsHighPrecision:Z

    .line 63
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mWriteAutoBrightnessDbEnable:Z

    .line 342
    new-instance v1, Lcom/android/server/lights/LightsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 359
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 328
    invoke-static {}, Lcom/android/server/lights/LightsService;->init_native()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    .line 330
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 331
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    new-instance v2, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;ILcom/android/server/lights/LightsService$1;)V

    aput-object v2, v1, v0

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getMaxBrightnessFromKerenl()V

    .line 335
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/server/lights/LightsService;->mIsAutoAdjust:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 46
    sput-boolean p0, Lcom/android/server/lights/LightsService;->mIsAutoAdjust:Z

    return p0
.end method

.method static synthetic access$100()D
    .locals 2

    .prologue
    .line 46
    sget-wide v0, Lcom/android/server/lights/LightsService;->mRatio:D

    return-wide v0
.end method

.method static synthetic access$102(D)D
    .locals 0
    .param p0, "x0"    # D

    .prologue
    .line 46
    sput-wide p0, Lcom/android/server/lights/LightsService;->mRatio:D

    return-wide p0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/server/lights/LightsService;->mLcdBrightness:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 46
    sput p0, Lcom/android/server/lights/LightsService;->mLcdBrightness:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/android/server/lights/LightsService;->mCurBrightness:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 46
    sput p0, Lcom/android/server/lights/LightsService;->mCurBrightness:I

    return p0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 46
    sget-wide v0, Lcom/android/server/lights/LightsService;->mAmountTime:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 46
    sput-wide p0, Lcom/android/server/lights/LightsService;->mAmountTime:J

    return-wide p0
.end method

.method static synthetic access$500(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method private static native finalize_native(J)V
.end method

.method private static native init_native()J
.end method

.method protected static native refreshFrames_native()V
.end method

.method static native setBackLightMaxLevel_native(I)V
.end method

.method static native setLight_native(JIIIIII)V
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 355
    iget-wide v0, p0, Lcom/android/server/lights/LightsService;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->finalize_native(J)V

    .line 356
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 357
    return-void
.end method

.method public getDeviceActualBrightnessLevelImpl()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method protected getLcdBrightnessMode()I
    .locals 1

    .prologue
    .line 416
    sget v0, Lcom/android/server/lights/LightsService;->mLcdBrightness:I

    return v0
.end method

.method public getMaxBrightnessFromKerenl()V
    .locals 6

    .prologue
    .line 368
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/leds/lcd_backlight0/max_brightness"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 371
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 373
    .local v4, "tempString":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 374
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/lights/LightsService;->mMaxBrightnessFromKernel:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 381
    :cond_0
    if-eqz v3, :cond_3

    .line 383
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 389
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "tempString":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-void

    .line 384
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 386
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "tempString":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 377
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    if-eqz v2, :cond_1

    .line 383
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 384
    :catch_2
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 378
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 379
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 381
    if-eqz v2, :cond_1

    .line 383
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 384
    :catch_4
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v2, :cond_2

    .line 383
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 386
    :cond_2
    :goto_4
    throw v5

    .line 384
    :catch_5
    move-exception v0

    .line 385
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 381
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "tempString":Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 378
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 376
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_3
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method protected mapIntoRealBacklightLevel(I)I
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 420
    return p1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 339
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 340
    return-void
.end method

.method public sendSmartBackLightWithRefreshFramesImpl(IIIIIZII)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "enable"    # I
    .param p3, "level"    # I
    .param p4, "value"    # I
    .param p5, "frames"    # I
    .param p6, "setAfterRefresh"    # Z
    .param p7, "enable2"    # I
    .param p8, "value2"    # I

    .prologue
    .line 405
    return-void
.end method

.method protected sendUpdateaAutoBrightnessDbMsg()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method protected updateBrightnessMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 412
    return-void
.end method

.method protected updateCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 424
    return-void
.end method
