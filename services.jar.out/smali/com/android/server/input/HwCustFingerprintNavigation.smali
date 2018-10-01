.class public Lcom/android/server/input/HwCustFingerprintNavigation;
.super Ljava/lang/Object;
.source "HwCustFingerprintNavigation.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HwCustInputManagerService"


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
.method public getCustNeedValue(Landroid/content/ContentResolver;Ljava/lang/String;III)Z
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "def"    # I
    .param p4, "userHandle"    # I
    .param p5, "compaireValue"    # I

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public handleFingerprintEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "ie"    # Landroid/view/InputEvent;

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public needCustNavigation()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public setFpNaviEnabled(Z)V
    .locals 0
    .param p1, "fpNaviEnabled"    # Z

    .prologue
    .line 44
    return-void
.end method
