.class public abstract Lcom/android/server/AbsMountService;
.super Landroid/os/storage/IMountService$Stub;
.source "AbsMountService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/os/storage/IMountService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected getShareableVolumes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getUmsStoragePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method protected umsStabilityErrorCorrection(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "umsPath"    # Ljava/lang/String;
    .param p2, "umsAvailable"    # Z
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    .line 9
    const/4 v0, 0x1

    return v0
.end method
