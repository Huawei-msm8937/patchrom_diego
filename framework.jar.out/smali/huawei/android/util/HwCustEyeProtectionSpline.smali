.class public Lhuawei/android/util/HwCustEyeProtectionSpline;
.super Ljava/lang/Object;
.source "HwCustEyeProtectionSpline.java"


# static fields
.field private static final DEFAULT_BRIGHTNESS:F = 100.0f

.field private static final TAG:Ljava/lang/String; = "HwCustEyeProtectionSpline"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lhuawei/android/util/HwCustEyeProtectionSpline;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public IsEyeProtectionMode()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getEyeProtectionBrightnessLevel(F)F
    .locals 1
    .param p1, "lux"    # F

    .prologue
    .line 55
    const/high16 v0, 0x42c80000    # 100.0f

    return v0
.end method
