.class public Lcom/android/internal/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field mRecycleOnMeasure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 885
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 886
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 889
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 890
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 893
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 894
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 898
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 899
    return-void
.end method


# virtual methods
.method protected initializeVariousScrollIndicators(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 908
    invoke-static {p1}, Landroid/hwcontrol/HwWidgetFactory;->isHwTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 909
    invoke-super {p0, p1}, Landroid/widget/ListView;->initializeVariousScrollIndicators(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 911
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x20301ff

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method protected reSizeScrollIndicators([I)Z
    .locals 4
    .param p1, "xy"    # [I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 917
    invoke-virtual {p0}, Lcom/android/internal/app/AlertController$RecycleListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/hwcontrol/HwWidgetFactory;->isHwTheme(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 918
    invoke-super {p0, p1}, Landroid/widget/ListView;->reSizeScrollIndicators([I)Z

    move-result v1

    .line 923
    :goto_0
    return v1

    .line 920
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/internal/app/AlertController$RecycleListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 921
    .local v0, "item":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    aput v2, p1, v3

    .line 922
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    aput v2, p1, v1

    goto :goto_0
.end method

.method protected recycleOnMeasure()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/android/internal/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    return v0
.end method
