.class public Lcom/android/server/location/HwCustGpsLocationProvider;
.super Ljava/lang/Object;
.source "HwCustGpsLocationProvider.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HwCustGpsLocationProvider"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public isForceSetGpsInterval()Z
    .locals 2

    .prologue
    .line 80
    const-string v0, "HwCustGpsLocationProvider"

    const-string v1, "forceSetGpsInterval 0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public sendPostionModeCommand(ZLjava/lang/String;)Z
    .locals 2
    .param p1, "oldresult"    # Z
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string v0, "HwCustGpsLocationProvider"

    const-string v1, "sendPostionModeCommand 0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return p1
.end method

.method public setPostionMode(I)I
    .locals 2
    .param p1, "oldPositionMode"    # I

    .prologue
    .line 59
    const-string v0, "HwCustGpsLocationProvider"

    const-string v1, "setPostionMode 0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return p1
.end method

.method public setPostionModebyCommand(I)I
    .locals 2
    .param p1, "oldPositionMode"    # I

    .prologue
    .line 40
    const-string v0, "HwCustGpsLocationProvider"

    const-string v1, "setPostionMode 0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return p1
.end method

.method public setRoaming(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 51
    return-void
.end method
