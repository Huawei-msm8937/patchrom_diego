.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# instance fields
.field private final mAssets:Landroid/content/res/AssetManager;

.field mData:[I

.field mIndices:[I

.field mLength:I

.field private final mMetrics:Landroid/util/DisplayMetrics;

.field private mRecycled:Z

.field private final mResources:Landroid/content/res/Resources;

.field mTheme:Landroid/content/res/Resources$Theme;

.field mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "data"    # [I
    .param p3, "indices"    # [I
    .param p4, "len"    # I

    .prologue
    .line 1208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1209
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 1210
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    iput-object v0, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    .line 1211
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    .line 1212
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1213
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 1214
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 1215
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .locals 3
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1174
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 1175
    .local v1, "type":I
    if-nez v1, :cond_0

    .line 1176
    const/4 v2, 0x0

    .line 1185
    :goto_0
    return v2

    .line 1178
    :cond_0
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 1179
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 1180
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 1181
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 1182
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 1183
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 1184
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_1
    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 1185
    const/4 v2, 0x1

    goto :goto_0

    .line 1184
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 1189
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1190
    .local v1, "data":[I
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 1192
    .local v0, "cookie":I
    iget-object v3, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    invoke-static {}, Landroid/content/res/AssetManager;->hasRes()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1194
    iget-object v3, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v4, p1, 0x3

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1195
    .local v2, "result":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 1205
    .end local v2    # "result":Ljava/lang/CharSequence;
    :goto_0
    return-object v2

    .line 1198
    :cond_0
    if-gez v0, :cond_2

    .line 1199
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v3, :cond_1

    .line 1200
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 1203
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1205
    :cond_2
    iget-object v3, p0, Landroid/content/res/TypedArray;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v0, v4}, Landroid/content/res/AssetManager;->getPooledStringForCookie(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method static obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "len"    # I

    .prologue
    .line 47
    iget-object v2, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v2}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/TypedArray;

    .line 48
    .local v0, "attrs":Landroid/content/res/TypedArray;
    if-eqz v0, :cond_1

    .line 49
    iput p1, v0, Landroid/content/res/TypedArray;->mLength:I

    .line 50
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 52
    mul-int/lit8 v1, p1, 0x6

    .line 53
    .local v1, "fullLen":I
    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 55
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->clearTypedArray(Landroid/content/res/TypedArray;I)V

    .line 65
    .end local v0    # "attrs":Landroid/content/res/TypedArray;
    .end local v1    # "fullLen":I
    :goto_0
    return-object v0

    .line 60
    .restart local v0    # "attrs":Landroid/content/res/TypedArray;
    .restart local v1    # "fullLen":I
    :cond_0
    new-array v2, v1, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    .line 61
    add-int/lit8 v2, p1, 0x1

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/content/res/TypedArray;->mIndices:[I

    goto :goto_0

    .line 65
    .end local v1    # "fullLen":I
    :cond_1
    new-instance v0, Landroid/content/res/TypedArray;

    .end local v0    # "attrs":Landroid/content/res/TypedArray;
    mul-int/lit8 v2, p1, 0x6

    new-array v2, v2, [I

    add-int/lit8 v3, p1, 0x1

    new-array v3, v3, [I

    invoke-direct {v0, p0, v2, v3, p1}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;[I[II)V

    goto :goto_0
.end method


# virtual methods
.method public extractThemeAttrs()[I
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->extractThemeAttrs([I)[I

    move-result-object v0

    return-object v0
.end method

.method public extractThemeAttrs([I)[I
    .locals 9
    .param p1, "scrap"    # [I

    .prologue
    const/4 v8, 0x0

    .line 1103
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_0

    .line 1104
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Cannot make calls to a recycled instance!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1107
    :cond_0
    const/4 v2, 0x0

    .line 1109
    .local v2, "attrs":[I
    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1110
    .local v3, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1111
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 1112
    mul-int/lit8 v5, v4, 0x6

    .line 1113
    .local v5, "index":I
    add-int/lit8 v6, v5, 0x0

    aget v6, v3, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 1111
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1119
    :cond_2
    add-int/lit8 v6, v5, 0x0

    aput v8, v3, v6

    .line 1121
    add-int/lit8 v6, v5, 0x1

    aget v1, v3, v6

    .line 1122
    .local v1, "attr":I
    if-eqz v1, :cond_1

    .line 1128
    if-nez v2, :cond_3

    .line 1129
    if-eqz p1, :cond_4

    array-length v6, p1

    if-ne v6, v0, :cond_4

    .line 1130
    move-object v2, p1

    .line 1131
    invoke-static {v2, v8}, Ljava/util/Arrays;->fill([II)V

    .line 1137
    :cond_3
    :goto_2
    aput v1, v2, v4

    goto :goto_1

    .line 1133
    :cond_4
    new-array v2, v0, [I

    goto :goto_2

    .line 1140
    .end local v1    # "attr":I
    .end local v5    # "index":I
    :cond_5
    return-object v2
.end method

.method public getBoolean(IZ)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # Z

    .prologue
    .line 315
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 316
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 319
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 320
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 321
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 322
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 332
    .end local p2    # "defValue":Z
    :goto_0
    return p2

    .line 324
    .restart local p2    # "defValue":Z
    :cond_1
    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_3

    .line 326
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move p2, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 329
    :cond_3
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 330
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 331
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result p2

    goto :goto_0

    .line 336
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBoolean of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getChangingConfigurations()I
    .locals 8

    .prologue
    .line 1153
    iget-boolean v6, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v6, :cond_0

    .line 1154
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Cannot make calls to a recycled instance!"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1157
    :cond_0
    const/4 v1, 0x0

    .line 1159
    .local v1, "changingConfig":I
    iget-object v2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1160
    .local v2, "data":[I
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1161
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 1162
    mul-int/lit8 v4, v3, 0x6

    .line 1163
    .local v4, "index":I
    add-int/lit8 v6, v4, 0x0

    aget v5, v2, v6

    .line 1164
    .local v5, "type":I
    if-nez v5, :cond_1

    .line 1161
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1167
    :cond_1
    add-int/lit8 v6, v4, 0x4

    aget v6, v2, v6

    or-int/2addr v1, v6

    goto :goto_1

    .line 1169
    .end local v4    # "index":I
    .end local v5    # "type":I
    :cond_2
    return v1
.end method

.method public getColor(II)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 440
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 441
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 444
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-lt p1, v4, :cond_2

    .line 445
    const-string v4, "Resources"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TypedArray.getColor() index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of bounds["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] and return defValue="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .end local p2    # "defValue":I
    :cond_1
    :goto_0
    return p2

    .line 450
    .restart local p2    # "defValue":I
    :cond_2
    mul-int/lit8 p1, p1, 0x6

    .line 451
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 452
    .local v1, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 453
    .local v2, "type":I
    if-eqz v2, :cond_1

    .line 455
    const/16 v4, 0x10

    if-lt v2, v4, :cond_3

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_3

    .line 458
    iget-object v4, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    iget-object v5, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    invoke-direct {p0, p1, v6}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v6

    invoke-static {v1, p1, v4, v5, v6}, Landroid/hwtheme/HwThemeManager;->getThemeColor([IILandroid/util/TypedValue;Landroid/content/res/Resources;Z)I

    move-result p2

    goto :goto_0

    .line 460
    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 461
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 462
    .local v3, "value":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 463
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    iget-object v6, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 465
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    goto :goto_0

    .line 468
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_4
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 469
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 470
    .restart local v3    # "value":Landroid/util/TypedValue;
    mul-int/lit8 v4, p1, 0x6

    invoke-direct {p0, v4, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 471
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to resolve attribute at index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 475
    .end local v3    # "value":Landroid/util/TypedValue;
    :cond_5
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert to color: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 499
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 500
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 503
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 504
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 505
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 506
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 509
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 511
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDimension(IF)F
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 582
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 583
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 587
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 588
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 589
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 592
    .end local p2    # "defValue":F
    :goto_0
    return p2

    .line 591
    .restart local p2    # "defValue":F
    :cond_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 592
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result p2

    goto :goto_0

    .line 594
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 595
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 596
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 597
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve attribute at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 601
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDimensionPixelOffset(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 629
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 630
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 633
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 634
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 635
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 636
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 639
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .line 638
    .restart local p2    # "defValue":I
    :cond_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 639
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_0

    .line 641
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 642
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 643
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 644
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve attribute at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 648
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDimensionPixelSize(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 677
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 678
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 681
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 682
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TypedArray.getDimensionPixelSize() index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of bounds["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and return defValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .end local p2    # "defValue":I
    :cond_1
    :goto_0
    return p2

    .line 687
    .restart local p2    # "defValue":I
    :cond_2
    mul-int/lit8 p1, p1, 0x6

    .line 688
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 689
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 690
    .local v1, "type":I
    if-eqz v1, :cond_1

    .line 692
    const/4 v3, 0x5

    if-ne v1, v3, :cond_3

    .line 693
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_0

    .line 695
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 696
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 697
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 698
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve attribute at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 702
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_4
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 902
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 903
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 906
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 907
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 908
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 909
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve attribute at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 912
    :cond_1
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iget-object v3, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 914
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFloat(IF)F
    .locals 7
    .param p1, "index"    # I
    .param p2, "defValue"    # F

    .prologue
    .line 391
    iget-boolean v4, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v4, :cond_0

    .line 392
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 396
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 397
    .local v0, "data":[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v0, v4

    .line 398
    .local v2, "type":I
    if-nez v2, :cond_1

    .line 412
    .end local p2    # "defValue":F
    :goto_0
    return p2

    .line 400
    .restart local p2    # "defValue":F
    :cond_1
    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    .line 401
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    goto :goto_0

    .line 402
    :cond_2
    const/16 v4, 0x10

    if-lt v2, v4, :cond_3

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_3

    .line 404
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    int-to-float p2, v4

    goto :goto_0

    .line 407
    :cond_3
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 408
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 409
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 410
    .local v1, "str":Ljava/lang/CharSequence;
    if-eqz v1, :cond_4

    .line 411
    invoke-static {v3}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 412
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    goto :goto_0

    .line 417
    .end local v1    # "str":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getFloat of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getFraction(IIIF)F
    .locals 6
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I
    .param p4, "defValue"    # F

    .prologue
    .line 801
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 802
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 805
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 806
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TypedArray.getFraction() index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of bounds["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and return defValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .end local p4    # "defValue":F
    :cond_1
    :goto_0
    return p4

    .line 811
    .restart local p4    # "defValue":F
    :cond_2
    mul-int/lit8 p1, p1, 0x6

    .line 812
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 813
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 814
    .local v1, "type":I
    if-eqz v1, :cond_1

    .line 816
    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    .line 817
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result p4

    goto :goto_0

    .line 819
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 820
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 821
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 822
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve attribute at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 826
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_4
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert to fraction: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getIndex(I)I
    .locals 2
    .param p1, "at"    # I

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIndexCount()I
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 354
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 355
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 358
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 359
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 360
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 361
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 371
    .end local p2    # "defValue":I
    :goto_0
    return p2

    .line 363
    .restart local p2    # "defValue":I
    :cond_1
    const/16 v3, 0x10

    if-lt v1, v3, :cond_2

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_2

    .line 365
    add-int/lit8 v3, p1, 0x1

    aget p2, v0, v3

    goto :goto_0

    .line 368
    :cond_2
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 369
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 370
    invoke-static {v2}, Landroid/os/StrictMode;->noteResourceMismatch(Ljava/lang/Object;)V

    .line 371
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result p2

    goto :goto_0

    .line 375
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInt of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getInteger(II)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 530
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 531
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 534
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 535
    const-string v3, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TypedArray.getInteger() index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of bounds["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and return defValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    .end local p2    # "defValue":I
    :cond_1
    :goto_0
    return p2

    .line 540
    .restart local p2    # "defValue":I
    :cond_2
    mul-int/lit8 p1, p1, 0x6

    .line 541
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 542
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 543
    .local v1, "type":I
    if-eqz v1, :cond_1

    .line 545
    const/16 v3, 0x10

    if-lt v1, v3, :cond_3

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_3

    .line 547
    add-int/lit8 v3, p1, 0x1

    aget p2, v0, v3

    goto :goto_0

    .line 548
    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 549
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 550
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 551
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve attribute at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 555
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_4
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t convert to integer: type=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getLayoutDimension(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 764
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_0

    .line 765
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 768
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 769
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 770
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 771
    .local v1, "type":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2

    .line 773
    add-int/lit8 v2, p1, 0x1

    aget p2, v0, v2

    .line 779
    .end local p2    # "defValue":I
    :cond_1
    :goto_0
    return p2

    .line 774
    .restart local p2    # "defValue":I
    :cond_2
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 775
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p2

    goto :goto_0
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 725
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 726
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 729
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 730
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 731
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 732
    .local v1, "type":I
    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_1

    .line 734
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    .line 736
    :goto_0
    return v3

    .line 735
    :cond_1
    const/4 v3, 0x5

    if-ne v1, v3, :cond_2

    .line 736
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v3

    goto :goto_0

    .line 738
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 739
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 740
    .local v2, "value":Landroid/util/TypedValue;
    mul-int/lit8 v3, p1, 0x6

    invoke-direct {p0, v3, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    .line 741
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to resolve attribute at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 745
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": You must supply a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attribute."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getNonConfigurationString(II)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I
    .param p2, "allowedChangingConfigs"    # I

    .prologue
    const/4 v4, 0x0

    .line 271
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_0

    .line 272
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 275
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 276
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 277
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v1, v5

    .line 278
    .local v2, "type":I
    add-int/lit8 v5, p1, 0x4

    aget v5, v1, v5

    xor-int/lit8 v6, p2, -0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 290
    :cond_1
    :goto_0
    return-object v4

    .line 281
    :cond_2
    if-eqz v2, :cond_1

    .line 283
    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    .line 284
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 287
    :cond_3
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 288
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 289
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 290
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 294
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNonConfigurationString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 240
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 241
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 245
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 246
    .local v1, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v2, v1, v3

    .line 247
    .local v2, "type":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 248
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 249
    .local v0, "cookie":I
    if-gez v0, :cond_1

    .line 250
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 254
    .end local v0    # "cookie":I
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPositionDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1054
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1055
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1058
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "<internal>"

    goto :goto_0
.end method

.method public getResourceId(II)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 847
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_0

    .line 848
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 852
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 853
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_1

    .line 854
    add-int/lit8 v2, p1, 0x3

    aget v1, v0, v2

    .line 855
    .local v1, "resid":I
    if-eqz v1, :cond_1

    .line 859
    .end local v1    # "resid":I
    :goto_0
    return v1

    :cond_1
    move v1, p2

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-boolean v5, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v5, :cond_0

    .line 197
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Cannot make calls to a recycled instance!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 201
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 202
    .local v1, "data":[I
    add-int/lit8 v5, p1, 0x0

    aget v2, v1, v5

    .line 203
    .local v2, "type":I
    if-nez v2, :cond_2

    .line 217
    :cond_1
    :goto_0
    return-object v4

    .line 205
    :cond_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    .line 207
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->isSRLocale()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 208
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->serbianSyrillic2Latin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 211
    :cond_3
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 214
    :cond_4
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 215
    .local v3, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 216
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 217
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 221
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_5
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getString of bad type: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 154
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 155
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Cannot make calls to a recycled instance!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 159
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 160
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 161
    .local v1, "type":I
    if-nez v1, :cond_1

    .line 162
    const/4 v3, 0x0

    .line 174
    :goto_0
    return-object v3

    .line 163
    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 165
    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->isSRLocale()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->serbianSyrillic2Latin(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 169
    :cond_2
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 172
    :cond_3
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 173
    .local v2, "v":Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_0

    .line 178
    :cond_4
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getText of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 933
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 934
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 937
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 938
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 939
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 941
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getThemeAttributeId(II)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "defValue"    # I

    .prologue
    .line 875
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 876
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 879
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 880
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 881
    .local v0, "data":[I
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 882
    add-int/lit8 v1, p1, 0x1

    aget p2, v0, v1

    .line 884
    .end local p2    # "defValue":I
    :cond_1
    return p2
.end method

.method public getType(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 971
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 972
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 975
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 976
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    add-int/lit8 v1, p1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    .line 955
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 956
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
    :cond_0
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 991
    iget-boolean v2, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v2, :cond_0

    .line 992
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 995
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 996
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 997
    .local v0, "data":[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 998
    .local v1, "type":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasValueOrEmpty(I)Z
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 1012
    iget-boolean v3, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v3, :cond_0

    .line 1013
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Cannot make calls to a recycled instance!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1016
    :cond_0
    mul-int/lit8 p1, p1, 0x6

    .line 1017
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 1018
    .local v0, "data":[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 1019
    .local v1, "type":I
    if-nez v1, :cond_1

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-ne v3, v2, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot make calls to a recycled instance!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1036
    iget-boolean v1, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v1, :cond_0

    .line 1037
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot make calls to a recycled instance!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1040
    :cond_0
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 1041
    .local v0, "value":Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1044
    .end local v0    # "value":Landroid/util/TypedValue;
    :goto_0
    return-object v0

    .restart local v0    # "value":Landroid/util/TypedValue;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1068
    iget-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/TypedArray;->mRecycled:Z

    .line 1075
    iput-object v1, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 1076
    iput-object v1, p0, Landroid/content/res/TypedArray;->mTheme:Landroid/content/res/Resources$Theme;

    .line 1078
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 1079
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1219
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
