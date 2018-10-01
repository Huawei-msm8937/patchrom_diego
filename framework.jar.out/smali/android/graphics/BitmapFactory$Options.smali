.class public Landroid/graphics/BitmapFactory$Options;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BitmapFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# static fields
.field public static final CODEC_ERROR:I = 0x2

.field public static final CODEC_PARTIAL:I = 0x3

.field public static final IO_ERROR:I = 0x1

.field public static final SUCCESS:I = 0x0

.field public static final UNSUPPORTED_TYPE:I = 0x4


# instance fields
.field public errorCode:I

.field public inBitmap:Landroid/graphics/Bitmap;

.field public inDensity:I

.field public inDither:Z

.field public inInputShareable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public inJustDecodeBounds:Z

.field public inMutable:Z

.field public inPreferQualityOverSpeed:Z

.field public inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field public inPremultiplied:Z

.field public inPurgeable:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public inSampleSize:I

.field public inScaled:Z

.field public inScreenDensity:I

.field public inTargetDensity:I

.field public inTempStorage:[B

.field public inThumbnailMode:Z

.field public mCancel:Z

.field public outHeight:I

.field public outMimeType:Ljava/lang/String;

.field public outWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 46
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 47
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 48
    iput-boolean v2, p0, Landroid/graphics/BitmapFactory$Options;->inPremultiplied:Z

    .line 49
    iput-boolean v1, p0, Landroid/graphics/BitmapFactory$Options;->inThumbnailMode:Z

    .line 51
    iput v1, p0, Landroid/graphics/BitmapFactory$Options;->errorCode:I

    .line 53
    return-void
.end method

.method private native requestCancel()V
.end method


# virtual methods
.method public requestCancelDecode()V
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    .line 383
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;->requestCancel()V

    .line 384
    return-void
.end method
