.class public interface abstract Lcom/android/server/policy/HwPolicyFactory$Factory;
.super Ljava/lang/Object;
.source "HwPolicyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/HwPolicyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract addRebootMenu(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addUltraPowerSaveImpl(Ljava/util/ArrayList;Landroid/content/Context;)V
.end method

.method public abstract getHwPhoneLayoutInflater(Landroid/content/Context;)Lcom/android/internal/policy/PhoneLayoutInflater;
.end method

.method public abstract getHwPhoneWindow(Landroid/content/Context;)Landroid/view/Window;
.end method

.method public abstract getHwPhoneWindowManager()Landroid/view/WindowManagerPolicy;
.end method

.method public abstract hideBootMessage()V
.end method

.method public abstract ifUseHwGlobalActions()Z
.end method

.method public abstract isHwGlobalActionsShowing()Z
.end method

.method public abstract showBootMessage(Landroid/content/Context;II)V
.end method

.method public abstract showHwGlobalActionsFragment(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/PowerManager;ZZZ)V
.end method
