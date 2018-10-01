.class public Lcom/android/server/VSimTelephonyRegistry;
.super Ljava/lang/Object;
.source "VSimTelephonyRegistry.java"


# static fields
.field static final isVSimSupport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "ro.radio.vsim_support"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VSimTelephonyRegistry;->isVSimSupport:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processVSimPhoneNumbers(I)I
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/server/VSimTelephonyRegistry;->isVSimSupport:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 44
    add-int/lit8 p0, p0, 0x1

    .line 47
    :cond_0
    return p0
.end method
