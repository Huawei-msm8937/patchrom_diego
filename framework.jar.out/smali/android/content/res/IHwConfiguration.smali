.class public interface abstract Landroid/content/res/IHwConfiguration;
.super Ljava/lang/Object;
.source "IHwConfiguration.java"


# static fields
.field public static final CLEARMODE_NO:I = 0x0

.field public static final CLEARMODE_YES:I = 0x1

.field public static final CLEAR_MODE:I = 0x4

.field public static final SIMPLEUIMODE_NO:I = 0x1

.field public static final SIMPLEUIMODE_UNDEFINED:I = 0x0

.field public static final SIMPLEUIMODE_YES:I = 0x2

.field public static final SIMPLEUI_MODE:I = 0x2

.field public static final THEME_MODE:I = 0x1

.field public static final USERID_MODE:I = 0x3


# virtual methods
.method public abstract compareTo(Landroid/content/res/IHwConfiguration;)I
.end method

.method public abstract diff(Landroid/content/res/IHwConfiguration;)I
.end method

.method public abstract equals(Landroid/content/res/IHwConfiguration;)Z
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getConfigItem(I)I
.end method

.method public abstract hashCode()I
.end method

.method public abstract makeDefault()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract readFromParcel(Landroid/os/Parcel;)V
.end method

.method public abstract setConfigItem(II)V
.end method

.method public abstract setDensityDPI(I)V
.end method

.method public abstract setTo(Landroid/content/res/IHwConfiguration;)V
.end method

.method public abstract setToDefaults()V
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract updateFrom(Landroid/content/res/IHwConfiguration;)I
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method
