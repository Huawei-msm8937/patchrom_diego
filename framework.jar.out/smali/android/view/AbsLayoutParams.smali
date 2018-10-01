.class public abstract Landroid/view/AbsLayoutParams;
.super Ljava/lang/Object;
.source "AbsLayoutParams.java"


# static fields
.field public static final FLAG_KEYEVENT_PASS_TO_USER_HOME:I = -0x80000000

.field public static final FLAG_MMI_TEST_VOLUME_UP_DOWN:I = 0x8

.field public static final FLAG_SHARE_DIALOG:I = 0x1

.field public static final SYSTEM_UI_FLAG_IMMERSIVE_GESTURE_ISOLATED:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addHwFlags(I)V
    .locals 0
    .param p1, "hwFlags"    # I

    .prologue
    .line 37
    return-void
.end method

.method public clearHwFlags(I)V
    .locals 0
    .param p1, "hwFlags"    # I

    .prologue
    .line 40
    return-void
.end method

.method public getHwFlags()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
