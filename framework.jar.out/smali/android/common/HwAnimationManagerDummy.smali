.class public Landroid/common/HwAnimationManagerDummy;
.super Ljava/lang/Object;
.source "HwAnimationManagerDummy.java"

# interfaces
.implements Landroid/common/HwAnimationManager;


# static fields
.field private static mHwAnimationManager:Landroid/common/HwAnimationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Landroid/common/HwAnimationManagerDummy;->mHwAnimationManager:Landroid/common/HwAnimationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/common/HwAnimationManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/common/HwAnimationManagerDummy;->mHwAnimationManager:Landroid/common/HwAnimationManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/common/HwAnimationManagerDummy;

    invoke-direct {v0}, Landroid/common/HwAnimationManagerDummy;-><init>()V

    sput-object v0, Landroid/common/HwAnimationManagerDummy;->mHwAnimationManager:Landroid/common/HwAnimationManager;

    .line 30
    :cond_0
    sget-object v0, Landroid/common/HwAnimationManagerDummy;->mHwAnimationManager:Landroid/common/HwAnimationManager;

    return-object v0
.end method


# virtual methods
.method public loadEnterAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delta"    # I

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public loadExitAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delta"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method
