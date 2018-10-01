.class public final Landroidhwext/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidhwext/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AlertDialog:[I

.field public static final AlertDialog_popupAnimation:I = 0x0

.field public static final AlertDialog_popupAnimationnotitle:I = 0x1

.field public static final SubTab:[I

.field public static final SubTabWidget:[I

.field public static final SubTabWidget_divider:I = 0x0

.field public static final SubTabWidget_dividerPadding:I = 0x1

.field public static final SubTab_subTabBarStyle:I = 0x0

.field public static final SubTab_subTabViewStyle:I = 0x1

.field public static final Theme:[I

.field public static final Theme_checkboxStyleForIgnore:I = 0x9

.field public static final Theme_immersionNoColorful:I = 0xa

.field public static final Theme_indeterminateDrawable:I = 0x1

.field public static final Theme_progressDrawable:I = 0x0

.field public static final Theme_searchButtonSearchIcon:I = 0x5

.field public static final Theme_searchViewCloseIcon:I = 0x2

.field public static final Theme_searchViewGoIcon:I = 0x3

.field public static final Theme_searchViewSearchIcon:I = 0x4

.field public static final Theme_searchViewTextField:I = 0x7

.field public static final Theme_searchViewTextFieldRight:I = 0x8

.field public static final Theme_searchViewVoiceIcon:I = 0x6

.field public static final Theme_translucentImmersion:I = 0xb

.field public static final View:[I

.field public static final View_hwstateListAnimator:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 6698
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidhwext/R$styleable;->AlertDialog:[I

    .line 6750
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidhwext/R$styleable;->SubTab:[I

    .line 6777
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroidhwext/R$styleable;->SubTabWidget:[I

    .line 6830
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroidhwext/R$styleable;->Theme:[I

    .line 6933
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x2010002

    aput v2, v0, v1

    sput-object v0, Landroidhwext/R$styleable;->View:[I

    return-void

    .line 6698
    nop

    :array_0
    .array-data 4
        0x2010000
        0x2010001
    .end array-data

    .line 6750
    :array_1
    .array-data 4
        0x212000c
        0x212000d
    .end array-data

    .line 6777
    :array_2
    .array-data 4
        0x212000e
        0x212000f
    .end array-data

    .line 6830
    :array_3
    .array-data 4
        0x2120000
        0x2120001
        0x2120002
        0x2120003
        0x2120004
        0x2120005
        0x2120006
        0x2120007
        0x2120008
        0x2120009
        0x212000a
        0x212000b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6684
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
