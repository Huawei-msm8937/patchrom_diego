.class public Landroid/cover/HwCoverManagerDummy;
.super Ljava/lang/Object;
.source "HwCoverManagerDummy.java"

# interfaces
.implements Landroid/cover/IHwCoverManager;


# static fields
.field private static sSelf:Landroid/cover/HwCoverManagerDummy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Landroid/cover/HwCoverManagerDummy;->sSelf:Landroid/cover/HwCoverManagerDummy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/cover/HwCoverManagerDummy;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Landroid/cover/HwCoverManagerDummy;->sSelf:Landroid/cover/HwCoverManagerDummy;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Landroid/cover/HwCoverManagerDummy;

    invoke-direct {v0}, Landroid/cover/HwCoverManagerDummy;-><init>()V

    sput-object v0, Landroid/cover/HwCoverManagerDummy;->sSelf:Landroid/cover/HwCoverManagerDummy;

    .line 26
    :cond_0
    sget-object v0, Landroid/cover/HwCoverManagerDummy;->sSelf:Landroid/cover/HwCoverManagerDummy;

    return-object v0
.end method


# virtual methods
.method public isCoverOpen()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x1

    return v0
.end method
