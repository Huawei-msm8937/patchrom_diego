.class public Lcom/android/internal/widget/multiwaveview/AbsGlowPadView;
.super Landroid/view/View;
.source "AbsGlowPadView.java"


# instance fields
.field protected mPointDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/AbsGlowPadView;->mPointDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    return-void
.end method


# virtual methods
.method public getPointDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/AbsGlowPadView;->mPointDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
