.class public abstract Lcom/android/server/usb/AbsUsbDeviceManager;
.super Ljava/lang/Object;
.source "AbsUsbDeviceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected containsFunctionOuter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method protected dueSimStatusCompletedMsg()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getUsbHandlerConnected()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method protected interceptSetEnabledFunctions(Ljava/lang/String;)Z
    .locals 1
    .param p1, "functions"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected isAdbDisabled()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method protected isCmccUsbLimit()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected removeAdbFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "function"    # Ljava/lang/String;

    .prologue
    .line 59
    return-object p1
.end method

.method protected sendHandlerEmptyMessage(I)Z
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method protected setEnabledFunctionsEx(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "functions"    # Ljava/lang/String;
    .param p2, "forceRestart"    # Z

    .prologue
    .line 50
    return-void
.end method

.method protected setUsbConfigEx(Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
