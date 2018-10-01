.class public Landroid/hwcontrol/HwWidgetFactory;
.super Ljava/lang/Object;
.source "HwWidgetFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hwcontrol/HwWidgetFactory$PermissionInformation;,
        Landroid/hwcontrol/HwWidgetFactory$HwDialogStub;,
        Landroid/hwcontrol/HwWidgetFactory$HwToast;,
        Landroid/hwcontrol/HwWidgetFactory$HwMenuPopupHelper;,
        Landroid/hwcontrol/HwWidgetFactory$HwTextView;,
        Landroid/hwcontrol/HwWidgetFactory$HwListPopupWindow;,
        Landroid/hwcontrol/HwWidgetFactory$Factory;,
        Landroid/hwcontrol/HwWidgetFactory$DisplayMode;
    }
.end annotation


# static fields
.field public static final DEFAULT_PRIMARY_COLOR:I = -0xf0f10

.field private static final IS_EMUI3_0:Z = true

.field private static final TAG:Ljava/lang/String; = "HwWidgetFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static obj:Landroid/hwcontrol/HwWidgetFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    sput-object v0, Landroid/hwcontrol/HwWidgetFactory;->obj:Landroid/hwcontrol/HwWidgetFactory$Factory;

    .line 393
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hwcontrol/HwWidgetFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    return-void
.end method

.method public static checkIsHwTheme(Landroid/content/Context;Landroid/util/AttributeSet;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 215
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 216
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0, p0, p1}, Landroid/hwcontrol/HwWidgetFactory$Factory;->initAddtionalStyle(Landroid/content/Context;Landroid/util/AttributeSet;)Z

    move-result v1

    .line 219
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCompoundButtonDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "tv"    # Landroid/util/TypedValue;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "old"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 288
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 289
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getCompoundButtonDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 292
    .end local p2    # "old":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p2
.end method

.method public static getCompoundButtonDrawableRes(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldResId"    # I

    .prologue
    .line 296
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 297
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 298
    invoke-interface {v0, p0, p1}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getCompoundButtonDrawableRes(Landroid/content/Context;I)I

    move-result p1

    .line 300
    .end local p1    # "oldResId":I
    :cond_0
    return p1
.end method

.method public static getControlColor(Landroid/content/res/Resources;)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 340
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 341
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getControlColor(Landroid/content/res/Resources;)I

    move-result v1

    .line 344
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDisplayMode(Landroid/content/Context;)Landroid/hwcontrol/HwWidgetFactory$DisplayMode;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 381
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 382
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getDisplayMode(Landroid/content/Context;)Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    move-result-object v1

    .line 386
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/hwcontrol/HwWidgetFactory$DisplayMode;->Normal:Landroid/hwcontrol/HwWidgetFactory$DisplayMode;

    goto :goto_0
.end method

.method public static getEdgeEffect(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 245
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 246
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getEdgeEffectImpl(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 249
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getFastScrollerThumbDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "tv"    # Landroid/util/TypedValue;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "old"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 312
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 313
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 314
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getFastScrollerThumbDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 316
    .end local p2    # "old":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p2
.end method

.method public static getGlowEffect(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 252
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 253
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getGlowEffectImpl(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 256
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHuaweiActionBarImpl(Landroid/app/Activity;)Lcom/android/internal/app/WindowDecorActionBar;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 148
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 149
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getHuaweiActionBarImpl(Landroid/app/Activity;)Lcom/android/internal/app/WindowDecorActionBar;

    move-result-object v1

    .line 153
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static getHuaweiActionBarImpl(Landroid/app/Dialog;)Lcom/android/internal/app/WindowDecorActionBar;
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 158
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 159
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getHuaweiActionBarImpl(Landroid/app/Dialog;)Lcom/android/internal/app/WindowDecorActionBar;

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/app/WindowDecorActionBar;

    invoke-direct {v1, p0}, Lcom/android/internal/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V

    goto :goto_0
.end method

.method public static getHuaweiRealTheme(I)I
    .locals 2
    .param p0, "theme"    # I

    .prologue
    .line 139
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 140
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getHuaweiRealThemeImpl(I)I

    move-result v1

    .line 143
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHwAlertController(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "window"    # Landroid/view/Window;

    .prologue
    .line 170
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 171
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/app/AlertController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->newHwAlertController(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwDialogStub(Landroid/content/Context;Landroid/view/Window;Landroid/app/Dialog;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwDialogStub;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "dialog"    # Landroid/app/Dialog;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 208
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 209
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/hwcontrol/HwWidgetFactory$Factory;->newHwDialogStub(Landroid/content/Context;Landroid/view/Window;Landroid/app/Dialog;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwDialogStub;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwFastScroller(Landroid/widget/AbsListView;ILandroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .param p0, "absListView"    # Landroid/widget/AbsListView;
    .param p1, "fastScrollStyle"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 187
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getHwFastScroller(Landroid/widget/AbsListView;ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static getHwListPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/ListPopupWindow;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .prologue
    .line 192
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 193
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/hwcontrol/HwWidgetFactory$Factory;->newHwListPopupWindow(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/ListPopupWindow;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwMenuPopupHelper(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPopupHelper;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwMenuPopupHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mph"    # Lcom/android/internal/view/menu/MenuPopupHelper;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 116
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->newHwMenuPopupHelper(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPopupHelper;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwMenuPopupHelper;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwOverflowMenuButton(Landroid/content/Context;Landroid/widget/ActionMenuPresenter;)Landroid/view/View;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionMenuPresenter"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    .line 177
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 178
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/hwcontrol/HwWidgetFactory$Factory;->newHwOverflowMenuButton(Landroid/content/Context;Landroid/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwSplineOverScroller(Landroid/widget/OverScroller$SplineOverScroller;Landroid/content/Context;)Landroid/widget/IHwSplineOverScroller;
    .locals 2
    .param p0, "sos"    # Landroid/widget/OverScroller$SplineOverScroller;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 199
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-nez v0, :cond_0

    new-instance v1, Landroid/widget/HwSplineOverScrollerDummy;

    invoke-direct {v1}, Landroid/widget/HwSplineOverScrollerDummy;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getHwSplineOverScrollerImpl(Landroid/widget/OverScroller$SplineOverScroller;Landroid/content/Context;)Landroid/widget/IHwSplineOverScroller;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwTextView(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwTextView;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 112
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->newHwTextView(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwTextView;

    move-result-object v1

    goto :goto_0
.end method

.method public static getHwToast(Landroid/content/Context;Landroid/widget/Toast;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwToast;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/widget/Toast;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 119
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 120
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->newHwToast(Landroid/content/Context;Landroid/widget/Toast;Landroid/util/AttributeSet;)Landroid/hwcontrol/HwWidgetFactory$HwToast;

    move-result-object v1

    goto :goto_0
.end method

.method public static getImmersionResource(Landroid/content/Context;IIIZ)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resLight"    # I
    .param p2, "colorfulResLight"    # I
    .param p3, "resDark"    # I
    .param p4, "defaultIsDark"    # Z

    .prologue
    .line 270
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 271
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 272
    invoke-interface/range {v0 .. v5}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getImmersionResource(Landroid/content/Context;IIIZ)I

    move-result v1

    .line 274
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;
    .locals 6

    .prologue
    .line 399
    sget-object v2, Landroid/hwcontrol/HwWidgetFactory;->obj:Landroid/hwcontrol/HwWidgetFactory$Factory;

    if-eqz v2, :cond_0

    .line 400
    sget-object v2, Landroid/hwcontrol/HwWidgetFactory;->obj:Landroid/hwcontrol/HwWidgetFactory$Factory;

    .line 415
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 402
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Landroid/hwcontrol/HwWidgetFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 404
    :try_start_0
    const-string v2, "com.huawei.android.hwcontrol.HwWidgetFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 405
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hwcontrol/HwWidgetFactory$Factory;

    sput-object v2, Landroid/hwcontrol/HwWidgetFactory;->obj:Landroid/hwcontrol/HwWidgetFactory$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    sget-object v2, Landroid/hwcontrol/HwWidgetFactory;->obj:Landroid/hwcontrol/HwWidgetFactory$Factory;

    if-eqz v2, :cond_1

    .line 411
    const-string v2, "HwWidgetFactory"

    const-string v3, ": successes to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v2, Landroid/hwcontrol/HwWidgetFactory;->obj:Landroid/hwcontrol/HwWidgetFactory$Factory;

    goto :goto_0

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwWidgetFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 409
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 414
    :cond_1
    const-string v2, "HwWidgetFactory"

    const-string v3, ": failes to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPrimaryColor(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 348
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 349
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getPrimaryColor(Landroid/content/Context;)I

    move-result v1

    .line 352
    :goto_0
    return v1

    :cond_0
    const v1, -0xf0f10

    goto :goto_0
.end method

.method public static getSuggestionForgroundColorStyle(I)I
    .locals 2
    .param p0, "colorBackground"    # I

    .prologue
    .line 356
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 357
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getSuggestionForgroundColorStyle(I)I

    move-result v1

    .line 360
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSuggestionForgroundColorStyle(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 365
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 366
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getSuggestionForgroundColorStyle(Landroid/content/Context;)I

    move-result v1

    .line 368
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getThemeId(Landroid/os/Bundle;Landroid/content/res/Resources;)I
    .locals 2
    .param p0, "data"    # Landroid/os/Bundle;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 131
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 132
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p0, p1}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getThemeIdImpl(Landroid/os/Bundle;Landroid/content/res/Resources;)I

    move-result v1

    .line 135
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getTrackDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "tv"    # Landroid/util/TypedValue;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "old"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 304
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 305
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->getTrackDrawable(Landroid/util/TypedValue;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 308
    .end local p2    # "old":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object p2
.end method

.method public static isColorfulEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 279
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 280
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->isColorfulEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 283
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHwDarkTheme(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 237
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 238
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->isHwDarkTheme(Landroid/content/Context;)Z

    move-result v1

    .line 241
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHwLightTheme(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 230
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 231
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->isHwLightTheme(Landroid/content/Context;)Z

    move-result v1

    .line 234
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHwTheme(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 224
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 225
    invoke-interface {v0, p0}, Landroid/hwcontrol/HwWidgetFactory$Factory;->isHwTheme(Landroid/content/Context;)Z

    move-result v1

    .line 227
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setEditorWindowColorful(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "forceSystemRes"    # Z

    .prologue
    .line 373
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 374
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->setEditorWindowColorful(Landroid/content/Context;Landroid/view/View;Z)V

    .line 377
    :cond_0
    return-void
.end method

.method public static setImmersionStyle(Landroid/content/Context;Landroid/widget/TextView;IIIZ)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "colorResDark"    # I
    .param p3, "colorResLight"    # I
    .param p4, "colorfulResLight"    # I
    .param p5, "defaultIsDark"    # Z

    .prologue
    .line 262
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 263
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 264
    invoke-interface/range {v0 .. v6}, Landroid/hwcontrol/HwWidgetFactory$Factory;->setImmersionStyle(Landroid/content/Context;Landroid/widget/TextView;IIIZ)V

    .line 267
    :cond_0
    return-void
.end method

.method public static setIndeterminateDrawableTiled(Landroid/widget/ProgressBar;Landroid/util/TypedValue;Landroid/content/Context;)V
    .locals 1
    .param p0, "progressBar"    # Landroid/widget/ProgressBar;
    .param p1, "tv"    # Landroid/util/TypedValue;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 335
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->setIndeterminateDrawableTiled(Landroid/widget/ProgressBar;Landroid/util/TypedValue;Landroid/content/Context;)V

    .line 338
    :cond_0
    return-void
.end method

.method public static setProgressDrawableTiled(Landroid/widget/ProgressBar;Landroid/util/TypedValue;Landroid/content/Context;)V
    .locals 1
    .param p0, "progressBar"    # Landroid/widget/ProgressBar;
    .param p1, "tv"    # Landroid/util/TypedValue;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 328
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->setProgressDrawableTiled(Landroid/widget/ProgressBar;Landroid/util/TypedValue;Landroid/content/Context;)V

    .line 331
    :cond_0
    return-void
.end method

.method public static setTextColorful(Landroid/view/View;Landroid/content/Context;Z)V
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isHwTheme"    # Z

    .prologue
    .line 320
    invoke-static {}, Landroid/hwcontrol/HwWidgetFactory;->getImplObject()Landroid/hwcontrol/HwWidgetFactory$Factory;

    move-result-object v0

    .line 321
    .local v0, "obj":Landroid/hwcontrol/HwWidgetFactory$Factory;
    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v0, p0, p1, p2}, Landroid/hwcontrol/HwWidgetFactory$Factory;->setTextColorful(Landroid/view/View;Landroid/content/Context;Z)V

    .line 324
    :cond_0
    return-void
.end method
