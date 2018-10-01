.class public Lcom/android/internal/os/HwPowerProfileManagerDummy;
.super Ljava/lang/Object;
.source "HwPowerProfileManagerDummy.java"

# interfaces
.implements Lcom/android/internal/os/IHwPowerProfileManager;


# static fields
.field private static mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/os/HwPowerProfileManagerDummy;->mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/internal/os/IHwPowerProfileManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/internal/os/HwPowerProfileManagerDummy;->mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/internal/os/HwPowerProfileManagerDummy;

    invoke-direct {v0}, Lcom/android/internal/os/HwPowerProfileManagerDummy;-><init>()V

    sput-object v0, Lcom/android/internal/os/HwPowerProfileManagerDummy;->mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;

    .line 29
    :cond_0
    sget-object v0, Lcom/android/internal/os/HwPowerProfileManagerDummy;->mHwPowerProfileManager:Lcom/android/internal/os/IHwPowerProfileManager;

    return-object v0
.end method


# virtual methods
.method public readHwPowerValuesFromXml(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "sPowerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    return v0
.end method
