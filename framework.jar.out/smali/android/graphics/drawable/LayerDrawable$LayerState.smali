.class Landroid/graphics/drawable/LayerDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field mChangingConfigurations:I

.field mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

.field mChildrenChangingConfigurations:I

.field private mHaveIsStateful:Z

.field private mHaveOpacity:Z

.field private mIsStateful:Z

.field mNum:I

.field private mOpacity:I

.field mOpacityOverride:I

.field mPaddingBottom:I

.field mPaddingEnd:I

.field mPaddingLeft:I

.field private mPaddingMode:I

.field mPaddingRight:I

.field mPaddingStart:I

.field mPaddingTop:I

.field mThemeAttrs:[I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1786
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 1765
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1766
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1767
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1768
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1769
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1770
    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1771
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 1782
    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 1784
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 1787
    if-eqz p1, :cond_1

    .line 1788
    iget-object v3, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1789
    .local v3, "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1791
    .local v0, "N":I
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1792
    new-array v4, v0, [Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1794
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    .line 1795
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    .line 1797
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1798
    aget-object v2, v3, v1

    .line 1799
    .local v2, "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    new-instance v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    invoke-direct {v5, v2, p2, p3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    aput-object v5, v4, v1

    .line 1797
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1802
    .end local v2    # "or":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_0
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 1803
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 1804
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    .line 1805
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 1806
    iget-boolean v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    .line 1807
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    .line 1808
    iget-object v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    .line 1809
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingTop:I

    .line 1810
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingBottom:I

    .line 1811
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingLeft:I

    .line 1812
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingRight:I

    .line 1813
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingStart:I

    .line 1814
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingEnd:I

    .line 1815
    iget v4, p1, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    iput v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacityOverride:I

    .line 1820
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "origChildDrawable":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :goto_1
    return-void

    .line 1817
    :cond_1
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1818
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/graphics/drawable/LayerDrawable$LayerState;)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;

    .prologue
    .line 1760
    iget-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/LayerDrawable$LayerState;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p1, "x1"    # Z

    .prologue
    .line 1760
    iput-boolean p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mAutoMirrored:Z

    return p1
.end method

.method static synthetic access$100(Landroid/graphics/drawable/LayerDrawable$LayerState;)I
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;

    .prologue
    .line 1760
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/LayerDrawable$LayerState;I)I
    .locals 0
    .param p0, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p1, "x1"    # I

    .prologue
    .line 1760
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mPaddingMode:I

    return p1
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1935
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1936
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1937
    .local v0, "N":I
    const/4 v4, 0x0

    .line 1938
    .local v4, "pixelCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1939
    aget-object v6, v1, v3

    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1940
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 1941
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    .line 1942
    .local v5, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v5, :cond_0

    .line 1943
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->addAtlasableBitmaps(Ljava/util/Collection;)I

    move-result v6

    add-int/2addr v4, v6

    .line 1938
    .end local v5    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1947
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    return v4
.end method

.method public canApplyTheme()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1824
    iget-object v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mThemeAttrs:[I

    if-nez v5, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1837
    :cond_0
    :goto_0
    return v4

    .line 1828
    :cond_1
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1829
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1830
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1831
    aget-object v3, v1, v2

    .line 1832
    .local v3, "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->canApplyTheme()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1830
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1837
    .end local v3    # "layer":Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final canConstantState()Z
    .locals 5

    .prologue
    .line 1915
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1916
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1917
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1918
    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1919
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1920
    const/4 v4, 0x0

    .line 1925
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_1
    return v4

    .line 1917
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1925
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 1852
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChangingConfigurations:I

    iget v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildrenChangingConfigurations:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final getOpacity()I
    .locals 7

    .prologue
    .line 1857
    iget-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    if-eqz v6, :cond_0

    .line 1858
    iget v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 1890
    :goto_0
    return v5

    .line 1861
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1862
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1865
    .local v0, "N":I
    const/4 v3, -0x1

    .line 1866
    .local v3, "firstIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 1867
    aget-object v6, v1, v4

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_3

    .line 1868
    move v3, v4

    .line 1874
    :cond_1
    if-ltz v3, :cond_4

    .line 1875
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    .line 1881
    .local v5, "op":I
    :goto_2
    add-int/lit8 v4, v3, 0x1

    :goto_3
    if-ge v4, v0, :cond_5

    .line 1882
    aget-object v6, v1, v4

    iget-object v2, v6, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1883
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 1884
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v5

    .line 1881
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1866
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v5    # "op":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1877
    :cond_4
    const/4 v5, -0x2

    .restart local v5    # "op":I
    goto :goto_2

    .line 1888
    :cond_5
    iput v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mOpacity:I

    .line 1889
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    goto :goto_0
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1929
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveOpacity:Z

    .line 1930
    iput-boolean v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    .line 1931
    return-void
.end method

.method public final isStateful()Z
    .locals 6

    .prologue
    .line 1894
    iget-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    if-eqz v5, :cond_0

    .line 1895
    iget-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 1911
    :goto_0
    return v4

    .line 1898
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 1899
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 1900
    .local v0, "N":I
    const/4 v4, 0x0

    .line 1901
    .local v4, "isStateful":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 1902
    aget-object v5, v1, v3

    iget-object v2, v5, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1903
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1904
    const/4 v4, 0x1

    .line 1909
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1
    iput-boolean v4, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mIsStateful:Z

    .line 1910
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/drawable/LayerDrawable$LayerState;->mHaveIsStateful:Z

    goto :goto_0

    .line 1901
    .restart local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 1842
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 1847
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    return-object v0
.end method
