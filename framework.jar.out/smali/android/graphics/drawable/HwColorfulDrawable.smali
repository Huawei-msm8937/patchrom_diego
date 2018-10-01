.class public Landroid/graphics/drawable/HwColorfulDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "HwColorfulDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/HwColorfulDrawable$HwColorfulLayerState;
    }
.end annotation


# static fields
.field private static mColor:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/graphics/drawable/LayerDrawable;-><init>()V

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)V

    .line 42
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 30
    return-void
.end method

.method constructor <init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V
    .locals 0
    .param p1, "layers"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/LayerDrawable$LayerState;)V

    .line 34
    return-void
.end method

.method private static updateColor(I)V
    .locals 0
    .param p0, "color"    # I

    .prologue
    .line 66
    sput p0, Landroid/graphics/drawable/HwColorfulDrawable;->mColor:I

    .line 67
    return-void
.end method

.method private updateColorfulTint(I)V
    .locals 6
    .param p1, "color"    # I

    .prologue
    .line 71
    sget v4, Landroid/graphics/drawable/HwColorfulDrawable;->mColor:I

    if-eq v4, p1, :cond_1

    .line 72
    iget-object v4, p0, Landroid/graphics/drawable/HwColorfulDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget-object v1, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mChildren:[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .line 73
    .local v1, "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    iget-object v4, p0, Landroid/graphics/drawable/HwColorfulDrawable;->mLayerState:Landroid/graphics/drawable/LayerDrawable$LayerState;

    iget v0, v4, Landroid/graphics/drawable/LayerDrawable$LayerState;->mNum:I

    .line 74
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 75
    aget-object v4, v1, v3

    iget-object v2, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    aget-object v4, v1, v3

    iget v4, v4, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v5, 0x102002e

    if-ne v4, v5, :cond_0

    .line 77
    sget v4, Landroid/graphics/drawable/HwColorfulDrawable;->mColor:I

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 74
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "N":I
    .end local v1    # "array":[Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/HwColorfulDrawable$HwColorfulLayerState;
    .locals 2
    .param p1, "state"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 45
    if-eqz p2, :cond_0

    .line 47
    invoke-static {p2}, Landroid/hwcontrol/HwWidgetFactory;->getControlColor(Landroid/content/res/Resources;)I

    move-result v0

    .line 48
    .local v0, "color":I
    invoke-direct {p0, v0}, Landroid/graphics/drawable/HwColorfulDrawable;->updateColorfulTint(I)V

    .line 49
    invoke-static {v0}, Landroid/graphics/drawable/HwColorfulDrawable;->updateColor(I)V

    .line 52
    .end local v0    # "color":I
    :cond_0
    new-instance v1, Landroid/graphics/drawable/HwColorfulDrawable$HwColorfulLayerState;

    invoke-direct {v1, p1, p0, p2}, Landroid/graphics/drawable/HwColorfulDrawable$HwColorfulLayerState;-><init>(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V

    return-object v1
.end method

.method bridge synthetic createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/LayerDrawable$LayerState;
    .locals 1
    .param p1, "x0"    # Landroid/graphics/drawable/LayerDrawable$LayerState;
    .param p2, "x1"    # Landroid/content/res/Resources;

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/HwColorfulDrawable;->createConstantState(Landroid/graphics/drawable/LayerDrawable$LayerState;Landroid/content/res/Resources;)Landroid/graphics/drawable/HwColorfulDrawable$HwColorfulLayerState;

    move-result-object v0

    return-object v0
.end method

.method protected initColorfulLayer(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;)V
    .locals 2
    .param p1, "layer"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;

    .prologue
    .line 84
    iget v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    const v1, 0x102002e

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Landroid/graphics/drawable/HwColorfulDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 87
    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 56
    sget v0, Landroid/graphics/drawable/HwColorfulDrawable;->mColor:I

    if-eq v0, p1, :cond_0

    .line 58
    invoke-direct {p0, p1}, Landroid/graphics/drawable/HwColorfulDrawable;->updateColorfulTint(I)V

    .line 60
    invoke-static {p1}, Landroid/graphics/drawable/HwColorfulDrawable;->updateColor(I)V

    .line 61
    invoke-virtual {p0}, Landroid/graphics/drawable/HwColorfulDrawable;->invalidateSelf()V

    .line 63
    :cond_0
    return-void
.end method
