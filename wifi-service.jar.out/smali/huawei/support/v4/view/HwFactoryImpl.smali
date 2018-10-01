.class public Lhuawei/support/v4/view/HwFactoryImpl;
.super Ljava/lang/Object;
.source "HwFactoryImpl.java"

# interfaces
.implements Landroid/support/v4/interfaces/HwControlFactory$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newHwViewPager(Landroid/content/Context;)Landroid/support/v4/interfaces/HwControlFactory$HwViewPager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    new-instance v0, Lhuawei/support/v4/view/HwViewPagerImpl;

    invoke-direct {v0, p1}, Lhuawei/support/v4/view/HwViewPagerImpl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
