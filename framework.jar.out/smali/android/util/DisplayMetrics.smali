.class public Landroid/util/DisplayMetrics;
.super Ljava/lang/Object;
.source "DisplayMetrics.java"


# static fields
.field public static final DENSITY_280:I = 0x118

.field public static final DENSITY_360:I = 0x168

.field public static final DENSITY_400:I = 0x190

.field public static final DENSITY_420:I = 0x1a4

.field public static final DENSITY_560:I = 0x230

.field public static final DENSITY_DEFAULT:I = 0xa0

.field public static final DENSITY_DEFAULT_SCALE:F = 0.00625f

.field public static DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DENSITY_HIGH:I = 0xf0

.field public static final DENSITY_LOW:I = 0x78

.field public static final DENSITY_MEDIUM:I = 0xa0

.field public static final DENSITY_TV:I = 0xd5

.field public static final DENSITY_XHIGH:I = 0x140

.field public static final DENSITY_XXHIGH:I = 0x1e0

.field public static final DENSITY_XXXHIGH:I = 0x280

.field private static final SCREEN_SIZE_1080P_DPI:I = 0x1e0

.field private static final SCREEN_SIZE_1080P_DPI_FORPAD:I = 0x1a4

.field private static final SCREEN_SIZE_1080P_WIDTH:I = 0x438

.field private static final SCREEN_SIZE_2K_DPI:I = 0x280

.field private static final SCREEN_SIZE_2K_DPI_FORPAD:I = 0x230

.field private static final SCREEN_SIZE_2K_WIDTH:I = 0x5a0

.field private static final SCREEN_SIZE_720P_DPI:I = 0x140

.field private static final SCREEN_SIZE_720P_DPI_FORPAD:I = 0x118

.field private static final SCREEN_SIZE_720P_WIDTH:I = 0x2d0


# instance fields
.field public density:F

.field public densityDpi:I

.field public heightPixels:I

.field public noncompatDensity:F

.field public noncompatDensityDpi:I

.field public noncompatHeightPixels:I

.field public noncompatScaledDensity:F

.field public noncompatWidthPixels:I

.field public noncompatXdpi:F

.field public noncompatYdpi:F

.field public scaledDensity:F

.field public widthPixels:I

.field public xdpi:F

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Landroid/util/DisplayMetrics;->getDeviceDensity()I

    move-result v0

    sput v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    return-void
.end method

.method private static getDeviceDensity()I
    .locals 5

    .prologue
    const/16 v4, 0xa0

    const/4 v3, 0x0

    .line 410
    const-string/jumbo v2, "persist.sys.dpi"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 412
    .local v0, "dpi":I
    const-string/jumbo v2, "persist.sys.rog.width"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 413
    .local v1, "width":I
    if-lez v1, :cond_1

    .line 415
    invoke-static {}, Landroid/util/DisplayMetrics;->getROGDensity()I

    move-result v0

    .line 423
    .end local v0    # "dpi":I
    :cond_0
    :goto_0
    return v0

    .line 419
    .restart local v0    # "dpi":I
    :cond_1
    if-lez v0, :cond_2

    const-string/jumbo v2, "ro.sf.lcd_density"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 423
    :cond_2
    const-string/jumbo v2, "qemu.sf.lcd_density"

    const-string/jumbo v3, "ro.sf.lcd_density"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getROGDensity()I
    .locals 4

    .prologue
    .line 398
    const-string/jumbo v2, "ro.sf.lcd_density"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 399
    .local v1, "lcdDpi":I
    const-string/jumbo v2, "persist.sys.dpi"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 400
    .local v0, "dpi":I
    const-string/jumbo v2, "persist.sys.realdpi"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static getROGDensity(I)I
    .locals 4
    .param p0, "width"    # I

    .prologue
    const/4 v3, 0x0

    .line 335
    const-string/jumbo v2, "persist.sys.dpi"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 336
    .local v0, "dpi":I
    const-string/jumbo v2, "ro.sf.lcd_density"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 337
    .local v1, "realdpi":I
    const/16 v2, 0x280

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_1

    .line 338
    :cond_0
    sparse-switch p0, :sswitch_data_0

    .line 365
    :cond_1
    :goto_0
    const/16 v2, 0x230

    if-eq v1, v2, :cond_2

    const/16 v2, 0x1a4

    if-ne v1, v2, :cond_3

    .line 366
    :cond_2
    sparse-switch p0, :sswitch_data_1

    .line 392
    :cond_3
    :goto_1
    return v0

    .line 340
    :sswitch_0
    if-lez v0, :cond_4

    .line 341
    mul-int/lit16 v2, v0, 0x140

    div-int v0, v2, v1

    goto :goto_0

    .line 343
    :cond_4
    const/16 v0, 0x140

    .line 345
    goto :goto_0

    .line 347
    :sswitch_1
    if-lez v0, :cond_5

    .line 348
    mul-int/lit16 v2, v0, 0x1e0

    div-int v0, v2, v1

    goto :goto_0

    .line 350
    :cond_5
    const/16 v0, 0x1e0

    .line 352
    goto :goto_0

    .line 354
    :sswitch_2
    if-lez v0, :cond_6

    .line 355
    mul-int/lit16 v2, v0, 0x280

    div-int v0, v2, v1

    goto :goto_0

    .line 357
    :cond_6
    const/16 v0, 0x280

    .line 359
    goto :goto_0

    .line 368
    :sswitch_3
    if-lez v0, :cond_7

    .line 369
    mul-int/lit16 v2, v0, 0x118

    div-int v0, v2, v1

    goto :goto_1

    .line 371
    :cond_7
    const/16 v0, 0x118

    .line 373
    goto :goto_1

    .line 375
    :sswitch_4
    if-lez v0, :cond_8

    .line 376
    mul-int/lit16 v2, v0, 0x1a4

    div-int v0, v2, v1

    goto :goto_1

    .line 378
    :cond_8
    const/16 v0, 0x1a4

    .line 380
    goto :goto_1

    .line 382
    :sswitch_5
    if-lez v0, :cond_9

    .line 383
    mul-int/lit16 v2, v0, 0x230

    div-int v0, v2, v1

    goto :goto_1

    .line 385
    :cond_9
    const/16 v0, 0x230

    .line 387
    goto :goto_1

    .line 338
    :sswitch_data_0
    .sparse-switch
        0x2d0 -> :sswitch_0
        0x438 -> :sswitch_1
        0x5a0 -> :sswitch_2
    .end sparse-switch

    .line 366
    :sswitch_data_1
    .sparse-switch
        0x2d0 -> :sswitch_3
        0x438 -> :sswitch_4
        0x5a0 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public equals(Landroid/util/DisplayMetrics;)Z
    .locals 2
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equalsPhysical(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 271
    instance-of v0, p1, Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/util/DisplayMetrics;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/util/DisplayMetrics;->equals(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equalsPhysical(Landroid/util/DisplayMetrics;)Z
    .locals 2
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 296
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->xdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->ydpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iget v1, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 313
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public setTo(Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "o"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 236
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 237
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 238
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 239
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 240
    iget v0, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 241
    iget v0, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 242
    iget v0, p1, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 243
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 244
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 245
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 246
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 247
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 248
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 249
    iget v0, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 250
    return-void
.end method

.method public setToDefaults()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 253
    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 254
    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 255
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    iput v0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 256
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    iput v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 257
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 258
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 259
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 260
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    .line 261
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    .line 262
    iget v0, p0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensity:F

    .line 263
    iget v0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    .line 264
    iget v0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    .line 265
    iget v0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    .line 266
    iget v0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    .line 267
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMetrics{density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaledDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ydpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
