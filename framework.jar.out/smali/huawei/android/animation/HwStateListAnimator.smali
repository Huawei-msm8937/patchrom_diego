.class public interface abstract Lhuawei/android/animation/HwStateListAnimator;
.super Ljava/lang/Object;
.source "HwStateListAnimator.java"


# virtual methods
.method public abstract addState([ILandroid/animation/Animator;)V
.end method

.method public abstract appendChangingConfigurations(I)V
.end method

.method public abstract createConstantState()Landroid/content/res/ConstantState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConstantState",
            "<",
            "Lhuawei/android/animation/HwStateListAnimator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getChangingConfigurations()I
.end method

.method public abstract getRunningAnimator()Landroid/animation/Animator;
.end method

.method public abstract getTarget()Ljava/lang/Object;
.end method

.method public abstract jumpToCurrentState()V
.end method

.method public abstract setAnimatorEnable(Z)V
.end method

.method public abstract setChangingConfigurations(I)V
.end method

.method public abstract setMode(I)V
.end method

.method public abstract setState([I)V
.end method

.method public abstract setTarget(Ljava/lang/Object;)V
.end method
