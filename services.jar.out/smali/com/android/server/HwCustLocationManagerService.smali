.class public Lcom/android/server/HwCustLocationManagerService;
.super Ljava/lang/Object;
.source "HwCustLocationManagerService.java"


# static fields
.field public static DEL_PKG:Ljava/lang/String; = null

.field public static final EVENT_REMOVE_PACKAGE_LOCATION:I = 0xbb9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "pkg"

    sput-object v0, Lcom/android/server/HwCustLocationManagerService;->DEL_PKG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public hwLocationPowerTrackerDump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 39
    return-void
.end method

.method public hwLocationPowerTrackerRecordRequest(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isIntent"    # Z

    .prologue
    .line 25
    return-void
.end method

.method public hwLocationPowerTrackerRemoveRequest(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 32
    return-void
.end method

.method public initHwLocationPowerTracker(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 18
    return-void
.end method
