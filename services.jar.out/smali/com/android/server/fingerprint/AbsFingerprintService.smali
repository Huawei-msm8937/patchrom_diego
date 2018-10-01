.class public abstract Lcom/android/server/fingerprint/AbsFingerprintService;
.super Lcom/android/server/SystemService;
.source "AbsFingerprintService.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public removeUserData(I[B)I
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "path"    # [B

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public updateFingerprints(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 14
    return-void
.end method
