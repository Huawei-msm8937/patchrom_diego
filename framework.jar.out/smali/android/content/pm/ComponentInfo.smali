.class public Landroid/content/pm/ComponentInfo;
.super Landroid/content/pm/PackageItemInfo;
.source "ComponentInfo.java"


# instance fields
.field public applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public descriptionRes:I

.field public enabled:Z

.field public exported:Z

.field public processName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ComponentInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/content/pm/PackageItemInfo;)V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 77
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 78
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 79
    iget v0, p1, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 80
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 81
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 82
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0, p1}, Landroid/content/pm/PackageItemInfo;-><init>(Landroid/os/Parcel;)V

    .line 62
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 70
    iput-boolean v2, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 191
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    .line 196
    return-void

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    :cond_1
    move v1, v2

    .line 195
    goto :goto_1
.end method


# virtual methods
.method protected dumpBack(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 171
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ApplicationInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 177
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    .line 178
    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ApplicationInfo: null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected dumpFront(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method protected getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public final getBannerResource()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ComponentInfo;->banner:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->banner:I

    goto :goto_0
.end method

.method public final getIconResource()I
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/ComponentInfo;->icon:I

    iget-object v3, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, v0, v1, v2, v3}, Landroid/hwtheme/HwThemeManager;->updateIconCache(Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Ljava/lang/String;II)V

    .line 136
    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ComponentInfo;->icon:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    goto :goto_0
.end method

.method public final getLogoResource()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ComponentInfo;->logo:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->logo:I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadDefaultBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 210
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 203
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected loadDefaultLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 218
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 85
    iget-object v3, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 86
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 115
    :cond_0
    :goto_0
    return-object v2

    .line 88
    :cond_1
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 90
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x0

    .line 92
    .local v2, "label":Ljava/lang/CharSequence;
    iget v3, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    if-eqz v3, :cond_2

    .line 93
    iget-object v3, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, p0, Landroid/content/pm/ComponentInfo;->labelRes:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 94
    if-nez v2, :cond_0

    .line 98
    :cond_2
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 99
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_0

    .line 101
    :cond_3
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v3, :cond_6

    .line 103
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwPackageManager()Landroid/common/HwPackageManager;

    move-result-object v1

    .line 104
    .local v1, "hpm":Landroid/common/HwPackageManager;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->hwLabelRes:I

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 105
    iget-object v3, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->hwLabelRes:I

    invoke-interface {v1, p1, v3, v4, v0}, Landroid/common/HwPackageManager;->getAppLabelText(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 107
    :cond_4
    if-nez v2, :cond_5

    .line 109
    iget-object v3, p0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p1, v3, v4, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 111
    :cond_5
    if-nez v2, :cond_0

    .line 115
    .end local v1    # "hpm":Landroid/common/HwPackageManager;
    :cond_6
    iget-object v2, p0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 181
    invoke-super {p0, p1, p2}, Landroid/content/pm/PackageItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    iget-object v0, p0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget v0, p0, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->enabled:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-boolean v0, p0, Landroid/content/pm/ComponentInfo;->exported:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    return-void

    :cond_0
    move v0, v2

    .line 185
    goto :goto_0

    :cond_1
    move v1, v2

    .line 186
    goto :goto_1
.end method
