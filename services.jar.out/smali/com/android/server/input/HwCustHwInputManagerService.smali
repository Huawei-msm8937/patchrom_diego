.class public Lcom/android/server/input/HwCustHwInputManagerService;
.super Ljava/lang/Object;
.source "HwCustHwInputManagerService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HwCustHwInputManagerService"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public isFingerprintNavigationEnable()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public registerContentObserverForFingerprintNavigation(Landroid/database/ContentObserver;)I
    .locals 1
    .param p1, "co"    # Landroid/database/ContentObserver;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method
