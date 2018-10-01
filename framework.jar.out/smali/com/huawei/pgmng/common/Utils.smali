.class public final Lcom/huawei/pgmng/common/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PG Utils"

.field private static mAutoAdjustBrightnessLimitVal:I

.field private static mRatioMaxBrightness:I

.field private static mRatioMinBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xb9

    sput v0, Lcom/huawei/pgmng/common/Utils;->mRatioMaxBrightness:I

    .line 23
    const/16 v0, 0x23

    sput v0, Lcom/huawei/pgmng/common/Utils;->mRatioMinBrightness:I

    .line 24
    const/16 v0, 0x6e

    sput v0, Lcom/huawei/pgmng/common/Utils;->mAutoAdjustBrightnessLimitVal:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adapterHighPrecisionBright(I)V
    .locals 1
    .param p0, "bright"    # I

    .prologue
    .line 28
    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    .line 29
    const/16 v0, 0x57c

    sput v0, Lcom/huawei/pgmng/common/Utils;->mRatioMinBrightness:I

    .line 30
    const/16 v0, 0x1c56

    sput v0, Lcom/huawei/pgmng/common/Utils;->mRatioMaxBrightness:I

    .line 31
    const/16 v0, 0x10e9

    sput v0, Lcom/huawei/pgmng/common/Utils;->mAutoAdjustBrightnessLimitVal:I

    .line 33
    :cond_0
    return-void
.end method

.method private static checkWorkSourceThenNote(ILjava/lang/String;IILandroid/os/WorkSource;Landroid/os/WorkSource;I)V
    .locals 9
    .param p0, "flags"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "ownerPid"    # I
    .param p4, "workSource1"    # Landroid/os/WorkSource;
    .param p5, "workSource2"    # Landroid/os/WorkSource;
    .param p6, "eventTag"    # I

    .prologue
    .line 120
    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    .line 121
    .local v1, "iWs1Size":I
    invoke-virtual {p5}, Landroid/os/WorkSource;->size()I

    move-result v2

    .line 125
    .local v2, "iWs2Size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 126
    invoke-virtual {p5, v0}, Landroid/os/WorkSource;->get(I)I

    move-result p2

    .line 127
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 128
    invoke-virtual {p4, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 133
    :cond_0
    if-ne v3, v1, :cond_1

    .line 135
    const/16 v4, 0x3e8

    if-eq p2, v4, :cond_1

    const/16 v4, 0x3e9

    if-eq p2, v4, :cond_1

    .line 136
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p6, v4, v5, v6, v7}, Lcom/huawei/pgmng/log/LogPower;->push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    .end local v3    # "j":I
    :cond_3
    return-void
.end method

.method public static getAnimatedValue(III)I
    .locals 2
    .param p0, "tarVal"    # I
    .param p1, "curVal"    # I
    .param p2, "amount"    # I

    .prologue
    .line 77
    move v0, p1

    .line 78
    .local v0, "animatedValue":I
    if-ge p1, p0, :cond_1

    .line 79
    add-int v1, p1, p2

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    if-le p1, p0, :cond_0

    .line 81
    sub-int v1, p1, p2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public static getAutoAdjustBright(I)I
    .locals 1
    .param p0, "bright"    # I

    .prologue
    .line 55
    invoke-static {p0}, Lcom/huawei/pgmng/common/Utils;->adapterHighPrecisionBright(I)V

    .line 57
    sget v0, Lcom/huawei/pgmng/common/Utils;->mRatioMinBrightness:I

    if-ge p0, v0, :cond_1

    .line 69
    .end local p0    # "bright":I
    :cond_0
    :goto_0
    return p0

    .line 61
    .restart local p0    # "bright":I
    :cond_1
    sget v0, Lcom/huawei/pgmng/common/Utils;->mAutoAdjustBrightnessLimitVal:I

    if-ge p0, v0, :cond_2

    .line 63
    sget v0, Lcom/huawei/pgmng/common/Utils;->mRatioMinBrightness:I

    sub-int v0, p0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0xa

    sub-int/2addr p0, v0

    goto :goto_0

    .line 65
    :cond_2
    sget v0, Lcom/huawei/pgmng/common/Utils;->mRatioMaxBrightness:I

    if-ge p0, v0, :cond_0

    .line 66
    sget v0, Lcom/huawei/pgmng/common/Utils;->mRatioMaxBrightness:I

    sub-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0xa

    sub-int/2addr p0, v0

    goto :goto_0
.end method

.method public static getRatioBright(ID)I
    .locals 3
    .param p0, "bright"    # I
    .param p1, "ratio"    # D

    .prologue
    .line 38
    invoke-static {p0}, Lcom/huawei/pgmng/common/Utils;->adapterHighPrecisionBright(I)V

    .line 41
    sget v0, Lcom/huawei/pgmng/common/Utils;->mRatioMinBrightness:I

    if-ge p0, v0, :cond_1

    .line 49
    :cond_0
    :goto_0
    return p0

    .line 43
    :cond_1
    sget v0, Lcom/huawei/pgmng/common/Utils;->mRatioMaxBrightness:I

    if-ge p0, v0, :cond_0

    .line 44
    int-to-double v0, p0

    mul-double/2addr v0, p1

    double-to-int p0, v0

    .line 45
    sget v0, Lcom/huawei/pgmng/common/Utils;->mRatioMinBrightness:I

    if-ge p0, v0, :cond_0

    .line 46
    sget p0, Lcom/huawei/pgmng/common/Utils;->mRatioMinBrightness:I

    goto :goto_0
.end method

.method public static handleTimeOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # Ljava/lang/String;

    .prologue
    .line 154
    const/16 v0, 0x94

    invoke-static {v0, p0, p1, p2}, Lcom/huawei/pgmng/log/LogPower;->push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public static isActivityHardwareAccelerated(Landroid/content/pm/ActivityInfo;Landroid/view/Window;)Z
    .locals 7
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "w"    # Landroid/view/Window;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 89
    const-string v5, "persist.sys.ui.hw"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 90
    .local v2, "prp":Z
    iget v5, p0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x200

    if-eqz v5, :cond_2

    move v0, v4

    .line 91
    .local v0, "act":Z
    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x1000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    move v3, v4

    .line 92
    .local v3, "win":Z
    :goto_1
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v1, v4

    .line 94
    .local v1, "gpu":Z
    :cond_1
    return v1

    .end local v0    # "act":Z
    .end local v1    # "gpu":Z
    .end local v3    # "win":Z
    :cond_2
    move v0, v1

    .line 90
    goto :goto_0

    .restart local v0    # "act":Z
    :cond_3
    move v3, v1

    .line 91
    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_1
.end method

.method public static noteWakelock(ILjava/lang/String;IILandroid/os/WorkSource;I)V
    .locals 10
    .param p0, "flags"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "ownerPid"    # I
    .param p4, "workSource"    # Landroid/os/WorkSource;
    .param p5, "eventTag"    # I

    .prologue
    const/16 v9, 0x3e9

    const/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    if-eqz p4, :cond_1

    .line 102
    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v0

    .line 103
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 104
    invoke-virtual {p4, v1}, Landroid/os/WorkSource;->get(I)I

    move-result p2

    .line 105
    if-eq p2, v8, :cond_0

    if-eq p2, v9, :cond_0

    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-static {p5, v2, v3, v4, v5}, Lcom/huawei/pgmng/log/LogPower;->push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    if-eq p2, v8, :cond_2

    if-eq p2, v9, :cond_2

    .line 112
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-static {p5, v2, v3, v4, v5}, Lcom/huawei/pgmng/log/LogPower;->push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 116
    :cond_2
    return-void
.end method

.method public static noteWakelock(ILjava/lang/String;IILandroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 7
    .param p0, "flags"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ownerUid"    # I
    .param p3, "ownerPid"    # I
    .param p4, "oldWorkSource"    # Landroid/os/WorkSource;
    .param p5, "newWorkSource"    # Landroid/os/WorkSource;

    .prologue
    .line 145
    const/16 v6, 0xa1

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p5

    move-object v5, p4

    invoke-static/range {v0 .. v6}, Lcom/huawei/pgmng/common/Utils;->checkWorkSourceThenNote(ILjava/lang/String;IILandroid/os/WorkSource;Landroid/os/WorkSource;I)V

    .line 146
    const/16 v6, 0xa0

    move v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/huawei/pgmng/common/Utils;->checkWorkSourceThenNote(ILjava/lang/String;IILandroid/os/WorkSource;Landroid/os/WorkSource;I)V

    .line 147
    return-void
.end method
