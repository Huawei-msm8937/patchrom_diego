.class public Lhuawei/support/v4/view/HwViewPagerImpl;
.super Ljava/lang/Object;
.source "HwViewPagerImpl.java"

# interfaces
.implements Landroid/support/v4/interfaces/HwControlFactory$HwViewPager;


# static fields
.field private static final mRatio:F = 0.33333334f


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionBar:Landroid/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mQuarterWidth:F

.field private mgetTabContainerMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v1, "HwViewPagerImpl"

    iput-object v1, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mgetTabContainerMethod:Ljava/lang/reflect/Method;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 49
    .local v0, "screenSize":I
    int-to-float v1, v0

    const v2, 0x3eaaaaab

    mul-float/2addr v1, v2

    iput v1, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mQuarterWidth:F

    .line 50
    invoke-direct {p0, p1}, Lhuawei/support/v4/view/HwViewPagerImpl;->createTabScrollingMethod(Landroid/content/Context;)V

    .line 51
    iput-object p1, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private createCubicBezierInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 130
    .local v1, "animUtilInstance":Landroid/view/animation/Interpolator;
    :try_start_0
    new-instance v7, Ldalvik/system/PathClassLoader;

    const-string v8, "/system/framework/hwEmui.jar"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 132
    .local v7, "loader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.huawei.hwanimation.CubicBezierInterpolator"

    invoke-virtual {v7, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 133
    .local v2, "animUtilclazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_0

    .line 134
    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    const/4 v8, 0x3

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    .line 135
    .local v5, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 136
    .local v4, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v8, 0x4

    new-array v3, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x3ea66666    # 0.325f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x1

    const v9, 0x3f2147ae    # 0.63f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x2

    const v9, 0x3d4ccccd    # 0.05f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v3, v8

    const/4 v8, 0x3

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v3, v8

    .line 137
    .local v3, "args":[Ljava/lang/Object;
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/view/animation/Interpolator;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 153
    .end local v2    # "animUtilclazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "loader":Ldalvik/system/PathClassLoader;
    :cond_0
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v6

    .line 140
    .local v6, "e":Ljava/lang/ClassNotFoundException;
    iget-object v8, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "create Cubic Bezier Interpolator catch ClassNotFoundException"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    .end local v6    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v6

    .line 142
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    iget-object v8, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "create Cubic Bezier Interpolator catch NoSuchMethodException"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v6

    .line 144
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    iget-object v8, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "create Cubic Bezier Interpolator catch IllegalArgumentException"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v6

    .line 146
    .local v6, "e":Ljava/lang/InstantiationException;
    iget-object v8, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "create Cubic Bezier Interpolator catch InstantiationException"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    .end local v6    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v6

    .line 148
    .local v6, "e":Ljava/lang/IllegalAccessException;
    iget-object v8, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "create Cubic Bezier Interpolator catch IllegalAccessException"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v6

    .line 150
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v8, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v9, "create Cubic Bezier Interpolator catch InvocationTargetException"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createTabScrollingMethod(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 163
    :try_start_0
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string v3, "/system/framework/hwframework.jar"

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 164
    .local v2, "loader":Ldalvik/system/PathClassLoader;
    const-string v3, "com.huawei.android.app.ActionBarEx"

    invoke-virtual {v2, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 165
    .local v0, "actionBarExUtilclazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_0

    .line 166
    const-string v3, "setTabScrollingOffsets"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/ActionBar;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mgetTabContainerMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    .end local v0    # "actionBarExUtilclazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "loader":Ldalvik/system/PathClassLoader;
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    iget-object v3, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "create Tab Scrolling Method catch ClassNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    iget-object v3, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "create Tab Scrolling Method catch NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getActionBar()Landroid/app/ActionBar;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 178
    iget-object v1, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mContext:Landroid/content/Context;

    .line 179
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 180
    .local v0, "activity":Landroid/app/Activity;
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 181
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 182
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 184
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1    # "context":Landroid/content/Context;
    :goto_1
    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 188
    :cond_2
    if-nez v0, :cond_3

    :goto_2
    return-object v2

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    goto :goto_2
.end method


# virtual methods
.method public canScrollEdge()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 100
    invoke-direct {p0}, Lhuawei/support/v4/view/HwViewPagerImpl;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionbar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 104
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createScroller(Landroid/content/Context;)Landroid/widget/Scroller;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lhuawei/support/v4/view/HwViewPagerImpl;->createCubicBezierInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 62
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-object v1
.end method

.method public scrollEdgeBound(ZFFF)F
    .locals 2
    .param p1, "left"    # Z
    .param p2, "oldScroller"    # F
    .param p3, "deltax"    # F
    .param p4, "bound"    # F

    .prologue
    .line 113
    const v1, 0x3eaaaaab

    mul-float/2addr v1, p3

    add-float v0, p2, v1

    .line 114
    .local v0, "scroller":F
    if-eqz p1, :cond_0

    .line 115
    iget v1, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mQuarterWidth:F

    sub-float v1, p4, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 117
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mQuarterWidth:F

    add-float/2addr v1, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0
.end method

.method public tabScrollerFollowed(IF)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "offset"    # F

    .prologue
    .line 73
    iget-object v2, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mActionBar:Landroid/app/ActionBar;

    if-nez v2, :cond_0

    .line 74
    invoke-direct {p0}, Lhuawei/support/v4/view/HwViewPagerImpl;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mActionBar:Landroid/app/ActionBar;

    .line 77
    :cond_0
    iget-object v2, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mgetTabContainerMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 80
    const/4 v2, 0x3

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mActionBar:Landroid/app/ActionBar;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v2

    .line 81
    .local v0, "args":[Ljava/lang/Object;
    iget-object v2, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->mgetTabContainerMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "mgetTabContainerMethod invoke catch IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/IllegalAccessException;
    iget-object v2, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "mgetTabContainerMethod invoke catch IllegalAccessException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    iget-object v2, p0, Lhuawei/support/v4/view/HwViewPagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "mgetTabContainerMethod invoke catch InvocationTargetException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
