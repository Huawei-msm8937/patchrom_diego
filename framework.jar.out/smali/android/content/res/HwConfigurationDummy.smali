.class public final Landroid/content/res/HwConfigurationDummy;
.super Ljava/lang/Object;
.source "HwConfigurationDummy.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/content/res/IHwConfiguration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/content/res/IHwConfiguration;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/res/IHwConfiguration;)V
    .locals 0
    .param p1, "o"    # Landroid/content/res/IHwConfiguration;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/content/res/IHwConfiguration;)I
    .locals 1
    .param p1, "that"    # Landroid/content/res/IHwConfiguration;

    .prologue
    .line 94
    instance-of v0, p1, Landroid/content/res/HwConfigurationDummy;

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 87
    instance-of v0, p1, Landroid/content/res/HwConfigurationDummy;

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public diff(Landroid/content/res/IHwConfiguration;)I
    .locals 1
    .param p1, "delta"    # Landroid/content/res/IHwConfiguration;

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/content/res/IHwConfiguration;)Z
    .locals 1
    .param p1, "that"    # Landroid/content/res/IHwConfiguration;

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Landroid/content/res/HwConfigurationDummy;->compareTo(Landroid/content/res/IHwConfiguration;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Landroid/content/res/HwConfigurationDummy;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConfigItem(I)I
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 114
    const/16 v0, 0x11

    .line 115
    .local v0, "result":I
    const/16 v1, 0x20f

    add-int/lit8 v0, v1, 0x0

    .line 116
    return v0
.end method

.method public makeDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 84
    return-void
.end method

.method public setConfigItem(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "val"    # I

    .prologue
    .line 121
    return-void
.end method

.method public setDensityDPI(I)V
    .locals 0
    .param p1, "dpi"    # I

    .prologue
    .line 128
    return-void
.end method

.method public setTo(Landroid/content/res/IHwConfiguration;)V
    .locals 0
    .param p1, "o"    # Landroid/content/res/IHwConfiguration;

    .prologue
    .line 39
    return-void
.end method

.method public setToDefaults()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Configuration dummy."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Landroid/content/res/IHwConfiguration;)I
    .locals 1
    .param p1, "delta"    # Landroid/content/res/IHwConfiguration;

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    return-void
.end method
