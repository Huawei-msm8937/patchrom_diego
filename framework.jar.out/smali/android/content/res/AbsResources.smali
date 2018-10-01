.class public Landroid/content/res/AbsResources;
.super Ljava/lang/Object;
.source "AbsResources.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearHwThemeZipsAndSomeIcons()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected clearTypedArray(Landroid/content/res/TypedArray;I)V
    .locals 5
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .param p2, "len"    # I

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 63
    iget-object v2, p1, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v3, v1, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 64
    add-int/lit8 v1, v1, 0x6

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public getDrawableForDynamic(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getThemeBitmap(Landroid/util/TypedValue;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleAddIconBackground(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .param p1, "id"    # I
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 42
    return-object p2
.end method

.method public preloadHwThemeZipsAndSomeIcons(I)V
    .locals 0
    .param p1, "currentUserId"    # I

    .prologue
    .line 85
    return-void
.end method

.method protected serbianSyrillic2Latin(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p1, "res"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    return-object p1
.end method

.method protected serbianSyrillic2Latin(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "res"    # Ljava/lang/String;

    .prologue
    .line 77
    return-object p1
.end method

.method protected serbianSyrillic2Latin([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0
    .param p1, "res"    # [Ljava/lang/CharSequence;

    .prologue
    .line 73
    return-object p1
.end method

.method protected serbianSyrillic2Latin([Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p1, "res"    # [Ljava/lang/String;

    .prologue
    .line 81
    return-object p1
.end method

.method protected setHwTheme(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 32
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    return-void
.end method
