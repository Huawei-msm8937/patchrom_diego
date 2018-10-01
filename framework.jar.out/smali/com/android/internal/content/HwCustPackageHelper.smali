.class public Lcom/android/internal/content/HwCustPackageHelper;
.super Ljava/lang/Object;
.source "HwCustPackageHelper.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HwCustPackageHelper"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "HwCustPackageHelper"

    const-string v1, "HwCustPackageHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method


# virtual methods
.method public fitsOnExternalEx(Landroid/content/Context;J)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sizeBytes"    # J

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isSdInstallEnabled()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
