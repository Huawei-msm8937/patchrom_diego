.class public Lcom/android/internal/telephony/HuaweiTelephonyConfigs;
.super Ljava/lang/Object;
.source "HuaweiTelephonyConfigs.java"


# static fields
.field public static final CHIP_PLATFORM_HISI:I = 0x1

.field public static final CHIP_PLATFORM_QCOM:I = 0x2

.field public static final CHIP_PLATFORM_UNDEFINED:I = 0x0

.field public static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field public static final FEATURE_ENABLE_HIPRI_SUB1:Ljava/lang/String; = "enableHIPRI_sub1"

.field public static final FEATURE_ENABLE_HIPRI_SUB2:Ljava/lang/String; = "enableHIPRI_sub2"

.field public static final FEATURE_ENABLE_MMS:Ljava/lang/String; = "enableMMS"

.field public static final FEATURE_ENABLE_MMS_SUB1:Ljava/lang/String; = "enableMMS_sub1"

.field public static final FEATURE_ENABLE_MMS_SUB2:Ljava/lang/String; = "enableMMS_sub2"

.field public static final FEATURE_ENABLE_SUPL:Ljava/lang/String; = "enableSUPL"

.field public static final OPERATOR_CHINA_CMCC:I = 0x1

.field public static final OPERATOR_CHINA_TELECOM:I = 0x2

.field public static final OPERATOR_CHINA_UNICOM:I = 0x3

.field public static final OPERATOR_UNDEFINED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HuaweiTelephonyConfigs"

.field public static final VALUE_CHIP_PLATFORM_HISI:Ljava/lang/String; = "HISI"

.field public static final VALUE_CHIP_PLATFORM_QCOM:Ljava/lang/String; = "QCOM"

.field public static final VALUE_CHIP_PLATFORM_UNDEFINED:Ljava/lang/String; = "UNDEFINED"

.field private static final VALUE_OPERATOR_CHINA_CMCC:Ljava/lang/String; = "CMCC"

.field private static final VALUE_OPERATOR_CHINA_TELECOM:Ljava/lang/String; = "TELECOM"

.field private static final VALUE_OPERATOR_CHINA_UNICOM:Ljava/lang/String; = "UNICOM"

.field private static final VALUE_OPERATOR_UNDEFINED:Ljava/lang/String; = "UNDEFINED"

.field private static final definedChipPlatformValue:Ljava/lang/String;

.field private static final definedOperatorValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "ro.config.operators"

    const-string v1, "UNDEFINED"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedOperatorValue:Ljava/lang/String;

    .line 66
    const-string v0, "ro.board.platform"

    const-string v1, "UNDEFINED"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedChipPlatformValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefinedChipPlatform()I
    .locals 2

    .prologue
    .line 70
    const-string v0, "HISI"

    sget-object v1, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedChipPlatformValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    .line 72
    :cond_0
    const-string v0, "QCOM"

    sget-object v1, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedChipPlatformValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x2

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDefinedOperator()I
    .locals 2

    .prologue
    .line 35
    const-string v0, "CMCC"

    sget-object v1, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedOperatorValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    .line 37
    :cond_0
    const-string v0, "TELECOM"

    sget-object v1, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedOperatorValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const/4 v0, 0x2

    goto :goto_0

    .line 39
    :cond_1
    const-string v0, "UNICOM"

    sget-object v1, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedOperatorValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    const/4 v0, 0x3

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isChinaMobile()Z
    .locals 2

    .prologue
    .line 46
    const-string v0, "CMCC"

    sget-object v1, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedOperatorValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isChinaTelecom()Z
    .locals 2

    .prologue
    .line 50
    const-string v0, "TELECOM"

    sget-object v1, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedOperatorValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isChinaUnicom()Z
    .locals 2

    .prologue
    .line 54
    const-string v0, "UNICOM"

    sget-object v1, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedOperatorValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHisiPlatform()Z
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedChipPlatformValue:Ljava/lang/String;

    const-string v1, "hi363"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedChipPlatformValue:Ljava/lang/String;

    const-string v1, "hi6210"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedChipPlatformValue:Ljava/lang/String;

    const-string v1, "hi365"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedChipPlatformValue:Ljava/lang/String;

    const-string v1, "hi6250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isModemBipEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isHisiPlatform()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPsRestrictedByFdn()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    const-string v4, "ro.config.fdn.restrict.ds"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 111
    .local v1, "FDN_PS_CHECK":Z
    const-string v4, "ro.config.fdn.preload"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 114
    .local v0, "FDN_PRELOAD_CACHE":Z
    const-string v4, "HuaweiTelephonyConfigs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fddn EVENT_GET_AD_DONE FDN_PS_CHECK:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,FDN_PRELOAD_CACHE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public static isQcomPlatform()Z
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->definedChipPlatformValue:Ljava/lang/String;

    const-string v1, "msm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
