.class public Lcom/android/server/wm/HwAppTransitionDummy;
.super Ljava/lang/Object;
.source "HwAppTransitionDummy.java"

# interfaces
.implements Lcom/android/server/wm/IHwAppTransition;


# static fields
.field private static mHwAppTransitionDummy:Lcom/android/server/wm/HwAppTransitionDummy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/HwAppTransitionDummy;->mHwAppTransitionDummy:Lcom/android/server/wm/HwAppTransitionDummy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/android/server/wm/HwAppTransitionDummy;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/server/wm/HwAppTransitionDummy;->mHwAppTransitionDummy:Lcom/android/server/wm/HwAppTransitionDummy;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/android/server/wm/HwAppTransitionDummy;

    invoke-direct {v0}, Lcom/android/server/wm/HwAppTransitionDummy;-><init>()V

    sput-object v0, Lcom/android/server/wm/HwAppTransitionDummy;->mHwAppTransitionDummy:Lcom/android/server/wm/HwAppTransitionDummy;

    .line 31
    :cond_0
    sget-object v0, Lcom/android/server/wm/HwAppTransitionDummy;->mHwAppTransitionDummy:Lcom/android/server/wm/HwAppTransitionDummy;

    return-object v0
.end method


# virtual methods
.method public overrideAnimation(Landroid/view/WindowManager$LayoutParams;ILandroid/content/Context;Lcom/android/server/AttributeCache$Entry;Lcom/android/server/wm/AppTransition;)Lcom/android/server/AttributeCache$Entry;
    .locals 1
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I
    .param p3, "mContext"    # Landroid/content/Context;
    .param p4, "mEnt"    # Lcom/android/server/AttributeCache$Entry;
    .param p5, "appTransition"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
