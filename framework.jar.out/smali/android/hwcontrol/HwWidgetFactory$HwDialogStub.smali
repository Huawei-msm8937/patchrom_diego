.class public interface abstract Landroid/hwcontrol/HwWidgetFactory$HwDialogStub;
.super Ljava/lang/Object;
.source "HwWidgetFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hwcontrol/HwWidgetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HwDialogStub"
.end annotation


# static fields
.field public static final DIALOG_STUB_MASK_ANIMATOR:I = 0x1

.field public static final DIALOG_STUB_MASK_DISMISS:I = 0x2


# virtual methods
.method public abstract dismissDialogFactory()V
.end method

.method public abstract getMask()I
.end method

.method public abstract hasButtons()Z
.end method

.method public abstract showDialogFactory()V
.end method
