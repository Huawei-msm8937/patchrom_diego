.class public interface abstract Landroid/hwcontrol/HwWidgetFactory$HwTextView;
.super Ljava/lang/Object;
.source "HwWidgetFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hwcontrol/HwWidgetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HwTextView"
.end annotation


# virtual methods
.method public abstract getEditor(Landroid/widget/TextView;)Landroid/widget/Editor;
.end method

.method public abstract initTextViewAddtionalStyle(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;Landroid/widget/Editor;)V
.end method

.method public abstract initialTextView(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/widget/TextView;)V
.end method

.method public abstract isCustomStyle()Z
.end method

.method public abstract playIvtEffect(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract playIvtEffect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;II)Z
.end method

.method public abstract reLayoutAfterMeasure(Landroid/widget/TextView;Landroid/text/Layout;)V
.end method

.method public abstract setError(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/CharSequence;)V
.end method
