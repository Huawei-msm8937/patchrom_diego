.class public interface abstract Landroid/hwcontrol/HwWidgetFactory$Factory;
.super Ljava/lang/Object;
.source "HwWidgetFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hwcontrol/HwWidgetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract getCompoundButtonDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getCompoundButtonDrawableRes(Landroid/content/Context;I)I
.end method

.method public abstract getControlColor(Landroid/content/res/Resources;)I
.end method

.method public abstract getDisplayMode(Landroid/content/Context;)Landroid/hwcontrol/HwWidgetFactory$DisplayMode;
.end method

.method public abstract getEdgeEffectImpl(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getFastScrollerThumbDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getGlowEffectImpl(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getHuaweiActionBarImpl(Landroid/app/Activity;)Lcom/android/internal/app/WindowDecorActionBar;
.end method

.method public abstract getHuaweiActionBarImpl(Landroid/app/Dialog;)Lcom/android/internal/app/WindowDecorActionBar;
.end method

.method public abstract getHuaweiRealThemeImpl(I)I
.end method

.method public abstract getHwFastScroller(Landroid/widget/AbsListView;ILandroid/content/Context;)Ljava/lang/Object;
.end method

.method public abstract getHwSplineOverScrollerImpl(Landroid/widget/OverScroller$SplineOverScroller;Landroid/content/Context;)Landroid/widget/IHwSplineOverScroller;
.end method

.method public abstract getImmersionResource(Landroid/content/Context;IIIZ)I
.end method

.method public abstract getPrimaryColor(Landroid/content/Context;)I
.end method

.method public abstract getSuggestionForgroundColorStyle(I)I
.end method

.method public abstract getSuggestionForgroundColorStyle(Landroid/content/Context;)I
.end method

.method public abstract getThemeIdImpl(Landroid/os/Bundle;Landroid/content/res/Resources;)I
.end method

.method public abstract getTrackDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract initAddtionalStyle(Landroid/content/Context;Landroid/util/AttributeSet;)Z
.end method

.method public abstract isColorfulEnabled(Landroid/content/Context;)Z
.end method

.method public abstract isHwDarkTheme(Landroid/content/Context;)Z
.end method

.method public abstract isHwLightTheme(Landroid/content/Context;)Z
.end method

.method public abstract isHwTheme()Z
.end method

.method public abstract isHwTheme(Landroid/content/Context;)Z
.end method

.method public abstract newHwAlertController(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
.end method

.method public abstract newHwDialogStub(Landroid/content/Context;Landroid/view/Window;Landroid/app/Dialog;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwDialogStub;
.end method

.method public abstract newHwListPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/ListPopupWindow;
.end method

.method public abstract newHwMenuPopupHelper(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPopupHelper;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwMenuPopupHelper;
.end method

.method public abstract newHwOverflowMenuButton(Landroid/content/Context;Landroid/widget/ActionMenuPresenter;)Landroid/view/View;
.end method

.method public abstract newHwTextView(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwTextView;
.end method

.method public abstract newHwToast(Landroid/content/Context;Landroid/widget/Toast;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwToast;
.end method

.method public abstract setEditorWindowColorful(Landroid/content/Context;Landroid/view/View;Z)V
.end method

.method public abstract setImmersionStyle(Landroid/content/Context;Landroid/widget/TextView;IIIZ)V
.end method

.method public abstract setIndeterminateDrawableTiled(Landroid/widget/ProgressBar;Landroid/util/TypedValue;Landroid/content/Context;)V
.end method

.method public abstract setProgressDrawableTiled(Landroid/widget/ProgressBar;Landroid/util/TypedValue;Landroid/content/Context;)V
.end method

.method public abstract setTextColorful(Landroid/view/View;Landroid/content/Context;Z)V
.end method
