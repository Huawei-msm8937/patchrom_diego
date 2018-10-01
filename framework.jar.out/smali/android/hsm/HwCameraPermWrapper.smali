.class public Landroid/hsm/HwCameraPermWrapper;
.super Ljava/lang/Object;
.source "HwCameraPermWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Landroid/hsm/HwCameraPermWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hsm/HwCameraPermWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hsm/HwCameraPermWrapper;->isBlocked:Z

    return-void
.end method


# virtual methods
.method public confirmPermission()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x400

    invoke-static {v0}, Landroid/hsm/HwSystemManager;->allowOp(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/hsm/HwCameraPermWrapper;->isBlocked:Z

    .line 34
    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public confirmPermissionWithResult()Z
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x400

    invoke-static {v0}, Landroid/hsm/HwSystemManager;->allowOp(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/hsm/HwCameraPermWrapper;->isBlocked:Z

    .line 43
    iget-boolean v0, p0, Landroid/hsm/HwCameraPermWrapper;->isBlocked:Z

    return v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlocked()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/hsm/HwCameraPermWrapper;->isBlocked:Z

    return v0
.end method
