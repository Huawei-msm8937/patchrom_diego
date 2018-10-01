.class public Landroid/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Build$VERSION_CODES;,
        Landroid/os/Build$VERSION;
    }
.end annotation


# static fields
.field public static final BOARD:Ljava/lang/String;

.field public static final BOOTLOADER:Ljava/lang/String;

.field public static final BRAND:Ljava/lang/String;

.field public static final CPU_ABI:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CPU_ABI2:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEVICE:Ljava/lang/String;

.field public static final DISPLAY:Ljava/lang/String;

.field public static final FINGERPRINT:Ljava/lang/String;

.field public static final HARDWARE:Ljava/lang/String;

.field public static final HIDE_PRODUCT_INFO:Z

.field public static final HOST:Ljava/lang/String;

.field public static final ID:Ljava/lang/String;

.field public static final IS_DEBUGGABLE:Z

.field public static final MANUFACTURER:Ljava/lang/String;

.field public static final MODEL:Ljava/lang/String;

.field public static final NO_HOTA:Z

.field public static final PRODUCT:Ljava/lang/String;

.field public static final RADIO:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERIAL:Ljava/lang/String;

.field public static final SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

.field public static final SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

.field public static final SUPPORTED_ABIS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Build"

.field public static final TAGS:Ljava/lang/String;

.field public static final TIME:J

.field public static final TYPE:Ljava/lang/String;

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final USER:Ljava/lang/String;

.field static final matchers:[Ljava/lang/String;

.field static final replacements:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 40
    const-string/jumbo v1, "ro.build.hide"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/os/Build;->HIDE_PRODUCT_INFO:Z

    .line 46
    const-string/jumbo v1, "ro.build.nohota"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Landroid/os/Build;->NO_HOTA:Z

    .line 48
    const-string/jumbo v1, "ro.build.hide.matchers"

    const-string v4, ""

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->matchers:[Ljava/lang/String;

    .line 50
    const-string/jumbo v1, "ro.build.hide.replacements"

    const-string v4, ""

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->replacements:[Ljava/lang/String;

    .line 57
    const-string/jumbo v1, "ro.build.id"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "ro.build.display.id"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 63
    const-string/jumbo v1, "ro.product.name"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "ro.product.board"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    .line 88
    const-string/jumbo v1, "ro.product.manufacturer"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "ro.product.brand"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 94
    const-string/jumbo v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 97
    const-string/jumbo v1, "ro.bootloader"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    .line 108
    const-string v1, "gsm.version.baseband"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->RADIO:Ljava/lang/String;

    .line 111
    sget-boolean v1, Landroid/os/Build;->HIDE_PRODUCT_INFO:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ro.hardware.alter"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 114
    const-string/jumbo v1, "ro.serialno"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "ro.product.cpu.abilist"

    const-string v4, ","

    invoke-static {v1, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 130
    const-string/jumbo v1, "ro.product.cpu.abilist32"

    const-string v4, ","

    invoke-static {v1, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 139
    const-string/jumbo v1, "ro.product.cpu.abilist64"

    const-string v4, ","

    invoke-static {v1, v4}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 150
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->is64Bit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    .line 156
    .local v0, "abiList":[Ljava/lang/String;
    :goto_1
    aget-object v1, v0, v3

    sput-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 157
    array-length v1, v0

    if-le v1, v2, :cond_2

    .line 158
    aget-object v1, v0, v2

    sput-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    .line 659
    :goto_2
    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 662
    const-string/jumbo v1, "ro.build.tags"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 665
    invoke-static {}, Landroid/os/Build;->deriveFingerprint()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 764
    const-string/jumbo v1, "ro.build.date.utc"

    invoke-static {v1}, Landroid/os/Build;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sput-wide v4, Landroid/os/Build;->TIME:J

    .line 765
    const-string/jumbo v1, "ro.build.user"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    .line 766
    const-string/jumbo v1, "ro.build.host"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    .line 772
    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_3
    sput-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return-void

    .line 111
    .end local v0    # "abiList":[Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "ro.hardware"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 153
    :cond_1
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .restart local v0    # "abiList":[Ljava/lang/String;
    goto :goto_1

    .line 160
    :cond_2
    const-string v1, ""

    sput-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move v1, v3

    .line 772
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0, p1}, Landroid/os/Build;->getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static deriveFingerprint()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/16 v3, 0x2f

    .line 672
    const-string/jumbo v1, "ro.build.fingerprint"

    invoke-static {v1}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "finger":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ro.product.brand"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.product.device"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.version.release"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.id"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.version.incremental"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.type"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ro.build.tags"

    invoke-static {v2}, Landroid/os/Build;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    :cond_0
    return-object v0
.end method

.method public static ensureFingerprintProperty()V
    .locals 3

    .prologue
    .line 694
    const-string/jumbo v1, "ro.build.fingerprint"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    :try_start_0
    const-string/jumbo v1, "ro.build.fingerprint"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void

    .line 697
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_0
    move-exception v0

    .line 698
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "Build"

    const-string v2, "Failed to set fingerprint property"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 820
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 822
    :goto_0
    return-wide v2

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getRadioVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 780
    const-string v0, "gsm.version.baseband"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 784
    const-string/jumbo v1, "unknown"

    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    .local v0, "str":Ljava/lang/String;
    sget-boolean v1, Landroid/os/Build;->NO_HOTA:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ro.build.display.id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_NoHota"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    :cond_0
    sget-boolean v1, Landroid/os/Build;->HIDE_PRODUCT_INFO:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ro.build.id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.build.host"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.build.user"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.product.manufacturer"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.hardware"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.build.display.id"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.build.fingerprint"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.product.board"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.product.device"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.product.model"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.product.name"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "ro.product.brand"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 803
    :cond_1
    invoke-static {p0, v0}, Landroid/os/Build;->hide_build_info(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    .end local v0    # "str":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method private static getStringList(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "separator"    # Ljava/lang/String;

    .prologue
    .line 810
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 812
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 814
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static final hide_build_info(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 832
    sget-object v10, Landroid/os/Build;->matchers:[Ljava/lang/String;

    array-length v10, v10

    if-eqz v10, :cond_0

    sget-object v10, Landroid/os/Build;->matchers:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_9

    .line 833
    :cond_0
    const-string/jumbo v8, "unknown"

    .line 834
    .local v8, "tar":Ljava/lang/String;
    const-string v10, "C\\w{2}B\\d{3}SP\\d{2}"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 835
    .local v5, "pnHwverSP":Ljava/util/regex/Pattern;
    const-string v10, "C\\w{2}B\\d{3}"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 836
    .local v4, "pnHwver":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 837
    .local v3, "mhwSP":Ljava/util/regex/Matcher;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 838
    .local v2, "mhw":Ljava/util/regex/Matcher;
    const/4 v9, 0x0

    .line 839
    .local v9, "ver":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 840
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    .line 847
    :cond_1
    :goto_0
    const-string/jumbo v10, "ro.build.fingerprint"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 848
    if-nez v9, :cond_2

    .line 849
    const-string v9, "KRT16M"

    .line 851
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":user/release-keys"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_3
    :goto_1
    move-object v7, v8

    .line 878
    .end local v2    # "mhw":Ljava/util/regex/Matcher;
    .end local v3    # "mhwSP":Ljava/util/regex/Matcher;
    .end local v4    # "pnHwver":Ljava/util/regex/Pattern;
    .end local v5    # "pnHwverSP":Ljava/util/regex/Pattern;
    .end local v8    # "tar":Ljava/lang/String;
    .end local v9    # "ver":Ljava/lang/String;
    :cond_4
    return-object v7

    .line 842
    .restart local v2    # "mhw":Ljava/util/regex/Matcher;
    .restart local v3    # "mhwSP":Ljava/util/regex/Matcher;
    .restart local v4    # "pnHwver":Ljava/util/regex/Pattern;
    .restart local v5    # "pnHwverSP":Ljava/util/regex/Pattern;
    .restart local v8    # "tar":Ljava/lang/String;
    .restart local v9    # "ver":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 843
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 855
    :cond_6
    const-string/jumbo v10, "ro.build.user"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 856
    const-string v8, "android"

    goto :goto_1

    .line 858
    :cond_7
    const-string/jumbo v10, "ro.build.host"

    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 859
    const-string/jumbo v8, "localhost"

    goto :goto_1

    .line 861
    :cond_8
    if-eqz v9, :cond_3

    .line 862
    move-object v8, v9

    goto :goto_1

    .line 869
    .end local v2    # "mhw":Ljava/util/regex/Matcher;
    .end local v3    # "mhwSP":Ljava/util/regex/Matcher;
    .end local v4    # "pnHwver":Ljava/util/regex/Pattern;
    .end local v5    # "pnHwverSP":Ljava/util/regex/Pattern;
    .end local v8    # "tar":Ljava/lang/String;
    .end local v9    # "ver":Ljava/lang/String;
    :cond_9
    move-object v7, p1

    .line 870
    .local v7, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v10, Landroid/os/Build;->matchers:[Ljava/lang/String;

    array-length v10, v10

    if-ge v0, v10, :cond_4

    .line 871
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(?i)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->matchers:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "match":Ljava/lang/String;
    sget-object v10, Landroid/os/Build;->replacements:[Ljava/lang/String;

    array-length v10, v10

    if-lt v0, v10, :cond_a

    const-string/jumbo v6, "unknown"

    .line 875
    .local v6, "replace":Ljava/lang/String;
    :goto_3
    invoke-virtual {v7, v1, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 870
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 873
    .end local v6    # "replace":Ljava/lang/String;
    :cond_a
    sget-object v10, Landroid/os/Build;->replacements:[Ljava/lang/String;

    aget-object v6, v10, v0

    goto :goto_3
.end method

.method public static isBuildConsistent()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 713
    const-string/jumbo v8, "ro.build.fingerprint"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "system":Ljava/lang/String;
    const-string/jumbo v8, "ro.vendor.build.fingerprint"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 715
    .local v6, "vendor":Ljava/lang/String;
    const-string/jumbo v8, "ro.bootimage.build.fingerprint"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "bootimage":Ljava/lang/String;
    const-string/jumbo v8, "ro.build.expect.bootloader"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "requiredBootloader":Ljava/lang/String;
    const-string/jumbo v8, "ro.bootloader"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 718
    .local v1, "currentBootloader":Ljava/lang/String;
    const-string/jumbo v8, "ro.build.expect.baseband"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 719
    .local v4, "requiredRadio":Ljava/lang/String;
    const-string v8, "gsm.version.baseband"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 721
    .local v2, "currentRadio":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 722
    const-string v8, "Build"

    const-string v9, "Required ro.build.fingerprint is empty!"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_0
    return v7

    .line 726
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 727
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 728
    const-string v8, "Build"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Mismatched fingerprints; system reported "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but vendor reported "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_1
    const/4 v7, 0x1

    goto :goto_0
.end method
