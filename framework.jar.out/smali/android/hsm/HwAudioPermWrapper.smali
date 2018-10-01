.class public Landroid/hsm/HwAudioPermWrapper;
.super Ljava/lang/Object;
.source "HwAudioPermWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isAudioBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Landroid/hsm/HwAudioPermWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hsm/HwAudioPermWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hsm/HwAudioPermWrapper;->isAudioBlocked:Z

    return-void
.end method


# virtual methods
.method public confirmPermission()V
    .locals 1

    .prologue
    .line 33
    const/16 v0, 0x80

    invoke-static {v0}, Landroid/hsm/HwSystemManager;->allowOp(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/hsm/HwAudioPermWrapper;->isAudioBlocked:Z

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
    const/16 v0, 0x80

    invoke-static {v0}, Landroid/hsm/HwSystemManager;->allowOp(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/hsm/HwAudioPermWrapper;->isAudioBlocked:Z

    .line 43
    iget-boolean v0, p0, Landroid/hsm/HwAudioPermWrapper;->isAudioBlocked:Z

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
    iget-boolean v0, p0, Landroid/hsm/HwAudioPermWrapper;->isAudioBlocked:Z

    return v0
.end method

.method public mockRead([BII)I
    .locals 3
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    const/4 v2, 0x0

    .line 67
    move v0, p2

    .local v0, "count":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 68
    aput-byte v2, p1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return v2
.end method

.method public mockRead([SII)I
    .locals 3
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    const/4 v2, 0x0

    .line 86
    move v0, p2

    .local v0, "count":I
    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    .line 87
    aput-short v2, p1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return v2
.end method
