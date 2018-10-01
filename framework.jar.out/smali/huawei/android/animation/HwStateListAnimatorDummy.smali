.class public Lhuawei/android/animation/HwStateListAnimatorDummy;
.super Ljava/lang/Object;
.source "HwStateListAnimatorDummy.java"

# interfaces
.implements Lhuawei/android/animation/HwStateListAnimator;


# static fields
.field private static volatile sHwStateListAnimator:Lhuawei/android/animation/HwStateListAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lhuawei/android/animation/HwStateListAnimatorDummy;->sHwStateListAnimator:Lhuawei/android/animation/HwStateListAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lhuawei/android/animation/HwStateListAnimator;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lhuawei/android/animation/HwStateListAnimatorDummy;->sHwStateListAnimator:Lhuawei/android/animation/HwStateListAnimator;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lhuawei/android/animation/HwStateListAnimatorDummy;

    invoke-direct {v0}, Lhuawei/android/animation/HwStateListAnimatorDummy;-><init>()V

    sput-object v0, Lhuawei/android/animation/HwStateListAnimatorDummy;->sHwStateListAnimator:Lhuawei/android/animation/HwStateListAnimator;

    .line 31
    :cond_0
    sget-object v0, Lhuawei/android/animation/HwStateListAnimatorDummy;->sHwStateListAnimator:Lhuawei/android/animation/HwStateListAnimator;

    return-object v0
.end method


# virtual methods
.method public addState([ILandroid/animation/Animator;)V
    .locals 0
    .param p1, "specs"    # [I
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 35
    return-void
.end method

.method public appendChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .prologue
    .line 65
    return-void
.end method

.method public createConstantState()Landroid/content/res/ConstantState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Lhuawei/android/animation/HwStateListAnimator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getRunningAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public setAnimatorEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 76
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 0
    .param p1, "configs"    # I

    .prologue
    .line 62
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 73
    return-void
.end method

.method public setState([I)V
    .locals 0
    .param p1, "state"    # [I

    .prologue
    .line 51
    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 48
    return-void
.end method
