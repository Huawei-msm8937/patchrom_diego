.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$1;,
        Landroid/content/res/AssetManager$AssetInputStream;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final backupResPath:Ljava/lang/String; = "/system/SharedRes/"

.field private static canAccess:Z = false

.field private static final defautlResPath:Ljava/lang/String; = "/sdcard/SharedRes/"

.field private static hasSharedRes:Z

.field private static final localLOGV:Z

.field private static preLocale:Ljava/lang/String;

.field private static resValid:Z

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;

.field private static sharedAsset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/res/AssetManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNumRefs:I

.field private mObject:J

.field private final mOffsets:[J

.field private mOpen:Z

.field private mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBlocks:[Landroid/content/res/StringBlock;

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    .line 72
    const-string v0, ""

    sput-object v0, Landroid/content/res/AssetManager;->preLocale:Ljava/lang/String;

    .line 73
    sput-boolean v1, Landroid/content/res/AssetManager;->hasSharedRes:Z

    .line 74
    sput-boolean v1, Landroid/content/res/AssetManager;->resValid:Z

    .line 79
    sput-boolean v1, Landroid/content/res/AssetManager;->canAccess:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;-><init>(I)V

    .line 101
    sget-object v0, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Landroid/content/res/AssetManager;->makeSharedResource()Z

    .line 105
    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "notShared"    # I

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 88
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 89
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 108
    monitor-enter p0

    .line 113
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->init(Z)V

    .line 115
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 116
    monitor-exit p0

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "isSystem"    # Z

    .prologue
    const/4 v1, 0x1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 88
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 89
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 136
    invoke-direct {p0, v1}, Landroid/content/res/AssetManager;->init(Z)V

    .line 138
    return-void
.end method

.method static synthetic access$100(Landroid/content/res/AssetManager;J)J
    .locals 3
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Landroid/content/res/AssetManager;J)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->readAssetChar(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/content/res/AssetManager;J)J
    .locals 3
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetRemainingLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Landroid/content/res/AssetManager;J)V
    .locals 1
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->destroyAsset(J)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/res/AssetManager;J)V
    .locals 1
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/res/AssetManager;JJI)J
    .locals 3
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->seekAsset(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Landroid/content/res/AssetManager;J[BII)I
    .locals 1
    .param p0, "x0"    # Landroid/content/res/AssetManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # [B
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .prologue
    .line 39
    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->readAsset(J[BII)I

    move-result v0

    return v0
.end method

.method private final native addAssetPathNative(Ljava/lang/String;)I
.end method

.method static final native applyStyle(JIIJ[I[I[I)Z
.end method

.method static final native applyThemeStyle(JIZ)V
.end method

.method static final native clearTheme(J)V
.end method

.method static final native copyTheme(JJ)V
.end method

.method private final decRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 1056
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1059
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_0

    .line 1060
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 1062
    :cond_0
    return-void
.end method

.method private final native deleteTheme(J)V
.end method

.method private final native destroy()V
.end method

.method private final native destroyAsset(J)V
.end method

.method static final native dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static ensureSystemAssets()V
    .locals 3

    .prologue
    .line 120
    sget-object v2, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 121
    :try_start_0
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v1, :cond_0

    .line 122
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 123
    .local v0, "system":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 124
    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 126
    :cond_0
    monitor-exit v2

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final native getArrayStringInfo(I)[I
.end method

.method private final native getArrayStringResource(I)[Ljava/lang/String;
.end method

.method public static final native getAssetAllocations()Ljava/lang/String;
.end method

.method private final native getAssetLength(J)J
.end method

.method private final native getAssetRemainingLength(J)J
.end method

.method public static final native getGlobalAssetCount()I
.end method

.method public static final native getGlobalAssetManagerCount()I
.end method

.method private final native getNativeStringBlock(I)J
.end method

.method private final native getStringBlockCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 147
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method private getTextForDBid(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "dbid_cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/high16 v7, 0x10000

    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, "dbid":I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x5

    if-le v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_0

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    if-ne v5, v6, :cond_0

    .line 419
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "dbid_str":Ljava/lang/String;
    const/4 v5, 0x4

    const/16 v6, 0x5d

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 424
    if-lez v1, :cond_1

    .line 425
    sget-object v5, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    div-int v6, v1, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 426
    .local v0, "am":Landroid/content/res/AssetManager;
    if-eqz v0, :cond_1

    .line 427
    const/high16 v5, 0x7f020000

    rem-int v6, v1, v7

    or-int/2addr v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/res/AssetManager;->getResourceText(IZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 428
    .local v3, "sharedResult":Ljava/lang/CharSequence;
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 434
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v2    # "dbid_str":Ljava/lang/String;
    .end local v3    # "sharedResult":Ljava/lang/CharSequence;
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    .line 422
    goto :goto_0

    .restart local v2    # "dbid_str":Ljava/lang/String;
    :cond_1
    move-object v3, v4

    .line 434
    goto :goto_0
.end method

.method static final native getThemeChangingConfigurations(J)I
.end method

.method public static hasRes()Z
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Landroid/content/res/AssetManager;->resValid:Z

    return v0
.end method

.method private final incRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 1049
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 1050
    return-void
.end method

.method private final native init(Z)V
.end method

.method private final native loadResourceBagValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native loadResourceValue(ISLandroid/util/TypedValue;Z)I
.end method

.method static final native loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I
.end method

.method private static makeSharedResource()Z
    .locals 17

    .prologue
    .line 157
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v14

    sput-object v14, Landroid/content/res/AssetManager;->preLocale:Ljava/lang/String;

    .line 158
    sget-object v14, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1

    .line 160
    sget-object v14, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 161
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 162
    .local v8, "key":Ljava/lang/Integer;
    sget-object v14, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/res/AssetManager;

    .line 163
    .local v13, "value":Landroid/content/res/AssetManager;
    invoke-virtual {v13}, Landroid/content/res/AssetManager;->close()V

    goto :goto_0

    .line 165
    .end local v8    # "key":Ljava/lang/Integer;
    .end local v13    # "value":Landroid/content/res/AssetManager;
    :cond_0
    sget-object v14, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 167
    :cond_1
    const/4 v14, 0x0

    sput-boolean v14, Landroid/content/res/AssetManager;->resValid:Z

    .line 169
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "lang":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, "country":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/sdcard/SharedRes/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v12, "resfolder":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/system/SharedRes/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v2, "backupresfolder":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 176
    new-instance v12, Ljava/io/File;

    .end local v12    # "resfolder":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/sdcard/SharedRes/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v12    # "resfolder":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2    # "backupresfolder":Ljava/io/File;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "/system/SharedRes/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .restart local v2    # "backupresfolder":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_3

    .line 179
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 181
    const/4 v14, 0x0

    sput-boolean v14, Landroid/content/res/AssetManager;->hasSharedRes:Z

    .line 182
    const/4 v14, 0x1

    sput-boolean v14, Landroid/content/res/AssetManager;->canAccess:Z

    .line 184
    :cond_2
    const/4 v14, 0x0

    .line 216
    :goto_1
    return v14

    .line 188
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 189
    .local v5, "filearray":[Ljava/io/File;
    if-nez v5, :cond_4

    .line 191
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 194
    :cond_4
    if-eqz v5, :cond_7

    .line 196
    move-object v1, v5

    .local v1, "arr$":[Ljava/io/File;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v10, :cond_6

    aget-object v4, v1, v6

    .line 198
    .local v4, "fi":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".lang"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 200
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".lang"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 201
    .local v11, "resID":I
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Landroid/content/res/AssetManager;-><init>(I)V

    .line 202
    .local v0, "am":Landroid/content/res/AssetManager;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 203
    sget-object v14, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v11    # "resID":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 206
    .end local v4    # "fi":Ljava/io/File;
    :cond_6
    const/4 v14, 0x1

    sput-boolean v14, Landroid/content/res/AssetManager;->canAccess:Z

    .line 208
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    :cond_7
    sget-object v14, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-lez v14, :cond_8

    .line 210
    const/4 v14, 0x1

    sput-boolean v14, Landroid/content/res/AssetManager;->hasSharedRes:Z

    .line 211
    const/4 v14, 0x1

    goto :goto_1

    .line 214
    :cond_8
    const/4 v14, 0x0

    sput-boolean v14, Landroid/content/res/AssetManager;->hasSharedRes:Z

    .line 216
    const/4 v14, 0x0

    goto :goto_1
.end method

.method private final native newTheme()J
.end method

.method private final native openAsset(Ljava/lang/String;I)J
.end method

.method private final native openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native openNonAssetNative(ILjava/lang/String;I)J
.end method

.method private final native openXmlAssetNative(ILjava/lang/String;)J
.end method

.method private final native readAsset(J[BII)I
.end method

.method private final native readAssetChar(J)I
.end method

.method static final native resolveAttrs(JII[I[I[I[I)Z
.end method

.method private final native seekAsset(JJI)J
.end method


# virtual methods
.method public final addAssetPath(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 823
    monitor-enter p0

    .line 824
    :try_start_0
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->addAssetPathNative(Ljava/lang/String;)I

    move-result v0

    .line 825
    .local v0, "res":I
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 826
    monitor-exit p0

    return v0

    .line 827
    .end local v0    # "res":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final addAssetPaths([Ljava/lang/String;)[I
    .locals 3
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    .line 864
    if-nez p1, :cond_1

    .line 865
    const/4 v0, 0x0

    .line 873
    :cond_0
    return-object v0

    .line 868
    :cond_1
    array-length v2, p1

    new-array v0, v2, [I

    .line 869
    .local v0, "cookies":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 870
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final addOverlayPath(Ljava/lang/String;)I
    .locals 2
    .param p1, "idmapPath"    # Ljava/lang/String;

    .prologue
    .line 842
    monitor-enter p0

    .line 843
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addOverlayPathNative(Ljava/lang/String;)I

    move-result v0

    .line 844
    .local v0, "res":I
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 845
    monitor-exit p0

    return v0

    .line 846
    .end local v0    # "res":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final native addOverlayPathNative(Ljava/lang/String;)I
.end method

.method public close()V
    .locals 2

    .prologue
    .line 225
    monitor-enter p0

    .line 228
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 232
    :cond_0
    monitor-exit p0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final createTheme()J
    .locals 4

    .prologue
    .line 712
    monitor-enter p0

    .line 713
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 714
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 719
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 716
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()J

    move-result-wide v0

    .line 717
    .local v0, "res":J
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 718
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v0
.end method

.method final ensureStringBlocks()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_1

    .line 457
    monitor-enter p0

    .line 458
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_0

    .line 459
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v0, v0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 461
    :cond_0
    monitor-exit p0

    .line 463
    :cond_1
    return-void

    .line 461
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 740
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 744
    return-void

    .line 742
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final native getArrayIntResource(I)[I
.end method

.method final native getArraySize(I)I
.end method

.method public final native getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native getCookieName(I)Ljava/lang/String;
.end method

.method public final native getLocales()[Ljava/lang/String;
.end method

.method final getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "id"    # I

    .prologue
    .line 482
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method final getResourceBagText(II)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "ident"    # I
    .param p2, "bagEntryId"    # I

    .prologue
    .line 305
    monitor-enter p0

    .line 306
    :try_start_0
    iget-object v4, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 308
    .local v4, "tmpValue":Landroid/util/TypedValue;
    invoke-static {}, Landroid/content/res/AssetManager;->hasRes()Z

    move-result v5

    if-eqz v5, :cond_1

    const/high16 v5, -0x80000000

    or-int v1, p1, v5

    .line 309
    .local v1, "dbid_id":I
    :goto_0
    const/4 v5, 0x1

    invoke-direct {p0, v1, p2, v4, v5}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I

    move-result v0

    .line 310
    .local v0, "block":I
    if-ltz v0, :cond_3

    .line 311
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 312
    iget-object v5, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v5, v5, v0

    iget v6, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v5, v6}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 313
    .local v2, "result":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/AssetManager;->hasRes()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->getTextForDBid(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 315
    .local v3, "rt":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    move-object v2, v3

    .line 321
    .end local v3    # "rt":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    monitor-exit p0

    .line 324
    .end local v2    # "result":Ljava/lang/CharSequence;
    :goto_2
    return-object v2

    .end local v0    # "block":I
    .end local v1    # "dbid_id":I
    :cond_1
    move v1, p1

    .line 308
    goto :goto_0

    .line 319
    .restart local v0    # "block":I
    .restart local v1    # "dbid_id":I
    :cond_2
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "result":Ljava/lang/CharSequence;
    goto :goto_1

    .line 323
    .end local v2    # "result":Ljava/lang/CharSequence;
    :cond_3
    monitor-exit p0

    .line 324
    const/4 v2, 0x0

    goto :goto_2

    .line 323
    .end local v0    # "block":I
    .end local v1    # "dbid_id":I
    .end local v4    # "tmpValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method final native getResourceEntryName(I)Ljava/lang/String;
.end method

.method final native getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final native getResourceName(I)Ljava/lang/String;
.end method

.method final native getResourcePackageName(I)Ljava/lang/String;
.end method

.method final getResourceStringArray(I)[Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/high16 v10, 0x10000

    .line 333
    invoke-static {}, Landroid/content/res/AssetManager;->hasRes()Z

    move-result v6

    if-eqz v6, :cond_2

    const/high16 v6, -0x80000000

    or-int v2, p1, v6

    .line 334
    .local v2, "dbid_id":I
    :goto_0
    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    move-result-object v4

    .line 335
    .local v4, "retArray":[Ljava/lang/String;
    invoke-static {}, Landroid/content/res/AssetManager;->hasRes()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 336
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v6, v4

    if-ge v3, v6, :cond_3

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "dbid":I
    aget-object v6, v4, v3

    if-eqz v6, :cond_0

    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_0

    aget-object v6, v4, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5b

    if-ne v6, v7, :cond_0

    aget-object v6, v4, v3

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5f

    if-ne v6, v7, :cond_0

    .line 340
    aget-object v6, v4, v3

    const/4 v7, 0x4

    aget-object v8, v4, v3

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 342
    :cond_0
    if-lez v1, :cond_1

    .line 343
    sget-object v6, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    div-int v7, v1, v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    .line 344
    .local v0, "am":Landroid/content/res/AssetManager;
    if-eqz v0, :cond_1

    .line 345
    const/high16 v6, 0x7f020000

    rem-int v7, v1, v10

    or-int/2addr v6, v7

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/content/res/AssetManager;->getResourceText(IZ)Ljava/lang/CharSequence;

    move-result-object v5

    .line 346
    .local v5, "sharedResult":Ljava/lang/CharSequence;
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 348
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    .line 336
    .end local v0    # "am":Landroid/content/res/AssetManager;
    .end local v5    # "sharedResult":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v1    # "dbid":I
    .end local v2    # "dbid_id":I
    .end local v3    # "i":I
    .end local v4    # "retArray":[Ljava/lang/String;
    :cond_2
    move v2, p1

    .line 333
    goto :goto_0

    .line 354
    .restart local v2    # "dbid_id":I
    .restart local v4    # "retArray":[Ljava/lang/String;
    :cond_3
    return-object v4
.end method

.method final getResourceText(I)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "ident"    # I

    .prologue
    const/4 v10, 0x3

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v7, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 243
    .local v7, "tmpValue":Landroid/util/TypedValue;
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v7, v9}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 244
    .local v0, "block":I
    if-ltz v0, :cond_3

    .line 245
    iget v8, v7, Landroid/util/TypedValue;->type:I

    if-ne v8, v10, :cond_0

    .line 246
    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v0

    iget v9, v7, Landroid/util/TypedValue;->data:I

    invoke-virtual {v8, v9}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 251
    .local v5, "result":Ljava/lang/CharSequence;
    :goto_0
    sget-boolean v8, Landroid/content/res/AssetManager;->canAccess:Z

    if-nez v8, :cond_1

    .line 253
    invoke-static {}, Landroid/content/res/AssetManager;->makeSharedResource()Z

    .line 254
    sget-object v8, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 256
    const/4 v8, 0x1

    sput-boolean v8, Landroid/content/res/AssetManager;->canAccess:Z

    .line 257
    monitor-exit p0

    .line 279
    .end local v5    # "result":Ljava/lang/CharSequence;
    :goto_1
    return-object v5

    .line 249
    :cond_0
    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/CharSequence;
    goto :goto_0

    .line 260
    :cond_1
    sget-boolean v8, Landroid/content/res/AssetManager;->hasSharedRes:Z

    if-eqz v8, :cond_2

    .line 263
    const/high16 v8, -0x80000000

    or-int v3, p1, v8

    .line 264
    .local v3, "dbid_id":I
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {p0, v3, v8, v7, v9}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v4

    .line 265
    .local v4, "dbidblock":I
    const/4 v1, 0x0

    .line 266
    .local v1, "dbid":I
    if-ltz v4, :cond_2

    iget v8, v7, Landroid/util/TypedValue;->type:I

    if-ne v8, v10, :cond_2

    .line 267
    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v4

    iget v9, v7, Landroid/util/TypedValue;->data:I

    invoke-virtual {v8, v9}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 268
    .local v2, "dbid_cs":Ljava/lang/CharSequence;
    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->getTextForDBid(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 269
    .local v6, "rt":Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    .line 271
    const/4 v8, 0x1

    sput-boolean v8, Landroid/content/res/AssetManager;->resValid:Z

    .line 272
    move-object v5, v6

    .line 276
    .end local v1    # "dbid":I
    .end local v2    # "dbid_cs":Ljava/lang/CharSequence;
    .end local v3    # "dbid_id":I
    .end local v4    # "dbidblock":I
    .end local v6    # "rt":Ljava/lang/CharSequence;
    :cond_2
    monitor-exit p0

    goto :goto_1

    .line 278
    .end local v0    # "block":I
    .end local v5    # "result":Ljava/lang/CharSequence;
    .end local v7    # "tmpValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v0    # "block":I
    .restart local v7    # "tmpValue":Landroid/util/TypedValue;
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 279
    const/4 v5, 0x0

    goto :goto_1
.end method

.method final getResourceText(IZ)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "ident"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 289
    .local v1, "tmpValue":Landroid/util/TypedValue;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v1, v3}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 290
    .local v0, "block":I
    if-ltz v0, :cond_1

    .line 291
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 292
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    .line 297
    :goto_0
    return-object v2

    .line 294
    :cond_0
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v2

    monitor-exit p0

    goto :goto_0

    .line 296
    .end local v0    # "block":I
    .end local v1    # "tmpValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "block":I
    .restart local v1    # "tmpValue":Landroid/util/TypedValue;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 11
    .param p1, "id"    # I

    .prologue
    .line 392
    invoke-static {}, Landroid/content/res/AssetManager;->hasRes()Z

    move-result v10

    if-eqz v10, :cond_0

    const/high16 v10, -0x80000000

    or-int v1, p1, v10

    .line 394
    .local v1, "dbid_id":I
    :goto_0
    invoke-direct {p0, v1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    move-result-object v6

    .line 396
    .local v6, "rawInfoArray":[I
    array-length v7, v6

    .line 397
    .local v7, "rawInfoArrayLen":I
    div-int/lit8 v4, v7, 0x2

    .line 400
    .local v4, "infoArrayLen":I
    new-array v8, v4, [Ljava/lang/CharSequence;

    .line 401
    .local v8, "retArray":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v2, v7, :cond_2

    .line 402
    aget v0, v6, v2

    .line 403
    .local v0, "block":I
    add-int/lit8 v10, v2, 0x1

    aget v3, v6, v10

    .line 404
    .local v3, "index":I
    if-ltz v3, :cond_1

    iget-object v10, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v10, v10, v0

    invoke-virtual {v10, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_2
    aput-object v10, v8, v5

    .line 401
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "block":I
    .end local v1    # "dbid_id":I
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "infoArrayLen":I
    .end local v5    # "j":I
    .end local v6    # "rawInfoArray":[I
    .end local v7    # "rawInfoArrayLen":I
    .end local v8    # "retArray":[Ljava/lang/CharSequence;
    :cond_0
    move v1, p1

    .line 392
    goto :goto_0

    .line 404
    .restart local v0    # "block":I
    .restart local v1    # "dbid_id":I
    .restart local v2    # "i":I
    .restart local v3    # "index":I
    .restart local v4    # "infoArrayLen":I
    .restart local v5    # "j":I
    .restart local v6    # "rawInfoArray":[I
    .restart local v7    # "rawInfoArrayLen":I
    .restart local v8    # "retArray":[Ljava/lang/CharSequence;
    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    .line 406
    .end local v0    # "block":I
    .end local v3    # "index":I
    :cond_2
    invoke-static {}, Landroid/content/res/AssetManager;->hasRes()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 407
    const/4 v2, 0x0

    :goto_3
    array-length v10, v8

    if-ge v2, v10, :cond_4

    .line 408
    aget-object v10, v8, v2

    invoke-direct {p0, v10}, Landroid/content/res/AssetManager;->getTextForDBid(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 409
    .local v9, "rt":Ljava/lang/CharSequence;
    if-eqz v9, :cond_3

    aput-object v9, v8, v2

    .line 407
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 412
    .end local v9    # "rt":Ljava/lang/CharSequence;
    :cond_4
    return-object v8
.end method

.method final native getResourceTypeName(I)Ljava/lang/String;
.end method

.method final getResourceValue(IILandroid/util/TypedValue;Z)Z
    .locals 11
    .param p1, "ident"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z

    .prologue
    const/4 v10, 0x3

    const/4 v7, 0x1

    .line 363
    int-to-short v8, p2

    invoke-direct {p0, p1, v8, p3, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 364
    .local v0, "block":I
    if-ltz v0, :cond_2

    .line 365
    iget v8, p3, Landroid/util/TypedValue;->type:I

    if-eq v8, v10, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v7

    .line 368
    :cond_1
    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v0

    iget v9, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v8, v9}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 369
    sget-boolean v8, Landroid/content/res/AssetManager;->hasSharedRes:Z

    if-eqz v8, :cond_0

    .line 371
    iget-object v6, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 372
    .local v6, "tmpValue":Landroid/util/TypedValue;
    const/high16 v8, -0x80000000

    or-int v3, p1, v8

    .line 373
    .local v3, "dbid_id":I
    int-to-short v8, p2

    invoke-direct {p0, v3, v8, v6, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v4

    .line 374
    .local v4, "dbidblock":I
    const/4 v1, 0x0

    .line 375
    .local v1, "dbid":I
    if-ltz v4, :cond_0

    iget v8, v6, Landroid/util/TypedValue;->type:I

    if-ne v8, v10, :cond_0

    .line 376
    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v4

    iget v9, v6, Landroid/util/TypedValue;->data:I

    invoke-virtual {v8, v9}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 377
    .local v2, "dbid_cs":Ljava/lang/CharSequence;
    invoke-direct {p0, v2}, Landroid/content/res/AssetManager;->getTextForDBid(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 378
    .local v5, "rt":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    iput-object v5, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 383
    .end local v1    # "dbid":I
    .end local v2    # "dbid_cs":Ljava/lang/CharSequence;
    .end local v3    # "dbid_id":I
    .end local v4    # "dbidblock":I
    .end local v5    # "rt":Ljava/lang/CharSequence;
    .end local v6    # "tmpValue":Landroid/util/TypedValue;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method final native getStyleAttributes(I)[I
.end method

.method final getThemeValue(JILandroid/util/TypedValue;Z)Z
    .locals 5
    .param p1, "theme"    # J
    .param p3, "ident"    # I
    .param p4, "outValue"    # Landroid/util/TypedValue;
    .param p5, "resolveRefs"    # Z

    .prologue
    const/4 v2, 0x1

    .line 439
    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I

    move-result v0

    .line 440
    .local v0, "block":I
    if-ltz v0, :cond_2

    .line 441
    iget v3, p4, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 452
    :goto_0
    return v2

    .line 444
    :cond_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 445
    .local v1, "blocks":[Landroid/content/res/StringBlock;
    if-nez v1, :cond_1

    .line 446
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()V

    .line 447
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 449
    :cond_1
    aget-object v3, v1, v0

    iget v4, p4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v3, v4}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    goto :goto_0

    .line 452
    .end local v1    # "blocks":[Landroid/content/res/StringBlock;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public final native isUpToDate()Z
.end method

.method public final native list(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final makeStringBlocks([Landroid/content/res/StringBlock;)V
    .locals 8
    .param p1, "seed"    # [Landroid/content/res/StringBlock;

    .prologue
    .line 466
    if-eqz p1, :cond_0

    array-length v2, p1

    .line 467
    .local v2, "seedNum":I
    :goto_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    move-result v1

    .line 468
    .local v1, "num":I
    new-array v3, v1, [Landroid/content/res/StringBlock;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 471
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 472
    if-ge v0, v2, :cond_1

    .line 473
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v4, p1, v0

    aput-object v4, v3, v0

    .line 471
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 466
    .end local v0    # "i":I
    .end local v1    # "num":I
    .end local v2    # "seedNum":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 475
    .restart local v0    # "i":I
    .restart local v1    # "num":I
    .restart local v2    # "seedNum":I
    :cond_1
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    new-instance v4, Landroid/content/res/StringBlock;

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getNativeStringBlock(I)J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-direct {v4, v6, v7, v5}, Landroid/content/res/StringBlock;-><init>(JZ)V

    aput-object v4, v3, v0

    goto :goto_2

    .line 478
    :cond_2
    return-void
.end method

.method public final open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    monitor-enter p0

    .line 520
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v3, :cond_0

    .line 521
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Assetmanager has been closed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 529
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 523
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)J

    move-result-wide v0

    .line 524
    .local v0, "asset":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 525
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V

    .line 526
    .local v2, "res":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 527
    monitor-exit p0

    return-object v2

    .line 529
    .end local v2    # "res":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 535
    monitor-enter p0

    .line 536
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 539
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 540
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 541
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v0

    .line 543
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 544
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    monitor-enter p0

    .line 612
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v3, :cond_0

    .line 613
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Assetmanager has been closed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 621
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 615
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)J

    move-result-wide v0

    .line 616
    .local v0, "asset":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 617
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$1;)V

    .line 618
    .local v2, "res":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 619
    monitor-exit p0

    return-object v2

    .line 621
    .end local v2    # "res":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset absolute file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 632
    monitor-enter p0

    .line 633
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 636
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 638
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 639
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    monitor-exit p0

    return-object v0

    .line 641
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method final openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    monitor-enter p0

    .line 692
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v1, :cond_0

    .line 693
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Assetmanager has been closed"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 701
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 695
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)J

    move-result-wide v2

    .line 696
    .local v2, "xmlBlock":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 697
    new-instance v0, Landroid/content/res/XmlBlock;

    invoke-direct {v0, p0, v2, v3}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V

    .line 698
    .local v0, "res":Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V

    .line 699
    monitor-exit p0

    return-object v0

    .line 701
    .end local v0    # "res":Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 702
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset XML file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 678
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public final openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 664
    .local v0, "block":Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 665
    .local v1, "rp":Landroid/content/res/XmlResourceParser;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 666
    return-object v1
.end method

.method public final openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method final releaseTheme(J)V
    .locals 1
    .param p1, "theme"    # J

    .prologue
    .line 723
    monitor-enter p0

    .line 724
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->deleteTheme(J)V

    .line 725
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 726
    monitor-exit p0

    .line 727
    return-void

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final native retrieveArray(I[I)I
.end method

.method final native retrieveAttributes(J[I[I[I)Z
.end method

.method public final native setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V
.end method

.method public final setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIIZ)V
    .locals 21
    .param p1, "mcc"    # I
    .param p2, "mnc"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "orientation"    # I
    .param p5, "touchscreen"    # I
    .param p6, "density"    # I
    .param p7, "keyboard"    # I
    .param p8, "keyboardHidden"    # I
    .param p9, "navigation"    # I
    .param p10, "screenWidth"    # I
    .param p11, "screenHeight"    # I
    .param p12, "smallestScreenWidthDp"    # I
    .param p13, "screenWidthDp"    # I
    .param p14, "screenHeightDp"    # I
    .param p15, "screenLayout"    # I
    .param p16, "uiMode"    # I
    .param p17, "majorVersion"    # I
    .param p18, "ResFlag"    # Z

    .prologue
    .line 923
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/content/res/AssetManager;->preLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 925
    invoke-static {}, Landroid/content/res/AssetManager;->makeSharedResource()Z

    .line 927
    :cond_0
    sget-object v2, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 929
    sget-object v2, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 930
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    .line 931
    .local v20, "key":Ljava/lang/Integer;
    sget-object v2, Landroid/content/res/AssetManager;->sharedAsset:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .local v1, "am":Landroid/content/res/AssetManager;
    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    .line 932
    invoke-virtual/range {v1 .. v18}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    goto :goto_0

    .line 936
    .end local v1    # "am":Landroid/content/res/AssetManager;
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v20    # "key":Ljava/lang/Integer;
    :cond_1
    invoke-virtual/range {p0 .. p17}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 938
    return-void
.end method

.method public final native setLocale(Ljava/lang/String;)V
.end method

.method xmlBlockGone(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 706
    monitor-enter p0

    .line 707
    int-to-long v0, p1

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    .line 708
    monitor-exit p0

    .line 709
    return-void

    .line 708
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
