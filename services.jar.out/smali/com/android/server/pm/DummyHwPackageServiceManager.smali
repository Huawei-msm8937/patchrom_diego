.class public Lcom/android/server/pm/DummyHwPackageServiceManager;
.super Ljava/lang/Object;
.source "DummyHwPackageServiceManager.java"

# interfaces
.implements Lcom/android/server/pm/HwPackageServiceManager;


# static fields
.field private static mInstance:Lcom/android/server/pm/HwPackageServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/android/server/pm/DummyHwPackageServiceManager;

    invoke-direct {v0}, Lcom/android/server/pm/DummyHwPackageServiceManager;-><init>()V

    sput-object v0, Lcom/android/server/pm/DummyHwPackageServiceManager;->mInstance:Lcom/android/server/pm/HwPackageServiceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/server/pm/HwPackageServiceManager;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/android/server/pm/DummyHwPackageServiceManager;->mInstance:Lcom/android/server/pm/HwPackageServiceManager;

    return-object v0
.end method


# virtual methods
.method public addHwSharedUserLP(Ljava/lang/Object;)V
    .locals 0
    .param p1, "settings"    # Ljava/lang/Object;

    .prologue
    .line 15
    return-void
.end method
