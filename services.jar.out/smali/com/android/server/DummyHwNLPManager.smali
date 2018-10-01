.class public Lcom/android/server/DummyHwNLPManager;
.super Ljava/lang/Object;
.source "DummyHwNLPManager.java"

# interfaces
.implements Lcom/android/server/HwNLPManager;


# static fields
.field private static mInstance:Lcom/android/server/HwNLPManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/android/server/DummyHwNLPManager;

    invoke-direct {v0}, Lcom/android/server/DummyHwNLPManager;-><init>()V

    sput-object v0, Lcom/android/server/DummyHwNLPManager;->mInstance:Lcom/android/server/HwNLPManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/server/HwNLPManager;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/server/DummyHwNLPManager;->mInstance:Lcom/android/server/HwNLPManager;

    return-object v0
.end method


# virtual methods
.method public setHwMultiNlpPolicy(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    return-void
.end method

.method public setLocationManagerService(Lcom/android/server/LocationManagerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/LocationManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    return-void
.end method

.method public setPidGoogleLocation(ILjava/lang/String;)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 44
    return-void
.end method

.method public shouldSkipGoogleNlp(I)Z
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSkipGoogleNlp(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public skipForeignNlpPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public useCivilNlpPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
