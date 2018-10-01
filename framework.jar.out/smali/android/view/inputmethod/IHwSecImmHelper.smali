.class public interface abstract Landroid/view/inputmethod/IHwSecImmHelper;
.super Ljava/lang/Object;
.source "IHwSecImmHelper.java"


# static fields
.field public static final SECURITY_INPUT_METHOD_SERVICE:Ljava/lang/String; = "input_method_secure"


# virtual methods
.method public abstract hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;Landroid/view/View;Lcom/android/internal/view/IInputMethodClient$Stub;)Z
.end method

.method public abstract isPasswordInputType(Landroid/view/View;)Z
.end method

.method public abstract isUseSecureIME()Z
.end method

.method public abstract showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;Lcom/android/internal/view/IInputMethodClient$Stub;)Z
.end method
