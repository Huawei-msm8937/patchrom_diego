.class public final Landroid/util/Jlog;
.super Ljava/lang/Object;
.source "Jlog.java"


# static fields
.field public static final HW_LOG_ID_JANK:I = 0x6

.field public static final INFLATE_TIME_LIMIT_NS:J = 0xf42400L

.field public static final JANK_UPDATE_PROP_DELAY:I = 0xdbba0

.field public static final JANK_UPDATE_PROP_INTERVAL:I = 0x7530

.field public static final MAX_VIOLATION_DURATION_MS:J = 0x1f40L

.field public static final MIN_VIOLATION_DURATION_MS:J = 0x140L

.field public static final OBTAINVIEW_TIME_LIMIT_NS:J = 0xf42400L

.field public static final PERF_CTRL_TYPE_HIGHPERF:I = 0x0

.field public static final PERF_CTRL_TYPE_LOW_VOLTAGE:I = 0x3

.field public static final PERF_CTRL_TYPE_MAX:I = 0x4

.field public static final PERF_CTRL_TYPE_SPEC_SCENE:I = 0x1

.field public static final PERF_CTRL_TYPE_THERMAL_PROTECT:I = 0x2

.field public static final PERF_EVENT_ANIMATION:I = 0x7

.field public static final PERF_EVENT_APP_START:I = 0x4

.field public static final PERF_EVENT_BOOT_COMPLETE:I = 0x0

.field public static final PERF_EVENT_INTERACTION:I = 0x1

.field public static final PERF_EVENT_LIST_FLING:I = 0x8

.field public static final PERF_EVENT_MAX:I = 0xc

.field public static final PERF_EVENT_OFF:I = 0x0

.field public static final PERF_EVENT_ON:I = 0x1

.field public static final PERF_EVENT_PROBE:I = 0x1001

.field public static final PERF_EVENT_RAW_REQ:I = 0x1000

.field public static final PERF_EVENT_ROTATING:I = 0x6

.field public static final PERF_EVENT_SCREEN_OFF:I = 0xa

.field public static final PERF_EVENT_SCREEN_ON:I = 0x9

.field public static final PERF_EVENT_STATUSBAR:I = 0xb

.field public static final PERF_EVENT_VSYNC_OFF:I = 0x3

.field public static final PERF_EVENT_VSYNC_ON:I = 0x2

.field public static final PERF_EVENT_WINDOW_SWITCH:I = 0x5

.field public static final PERF_HMP_POLICY_STATE_OFF:I = 0x0

.field public static final PERF_HMP_POLICY_STATE_ON:I = 0x1

.field public static final PERF_HMP_PRIORITY_0:I = 0x0

.field public static final PERF_HMP_PRIORITY_1:I = 0x1

.field public static final PERF_HMP_PRIORITY_2:I = 0x2

.field public static final PERF_HMP_PRIORITY_3:I = 0x3

.field public static final PERF_HMP_PRIORITY_4:I = 0x4

.field public static final PERF_HMP_PRIORITY_5:I = 0x5

.field public static final PERF_HMP_PRIORITY_MAX:I = 0x6

.field public static final PERF_TAG_B_CPU_CUR:I = 0x6

.field public static final PERF_TAG_B_CPU_MAX:I = 0x5

.field public static final PERF_TAG_B_CPU_MIN:I = 0x4

.field public static final PERF_TAG_CTRL_TYPE:I = 0x0

.field public static final PERF_TAG_DDR_CUR:I = 0xc

.field public static final PERF_TAG_DDR_MAX:I = 0xb

.field public static final PERF_TAG_DDR_MIN:I = 0xa

.field public static final PERF_TAG_GPU_CUR:I = 0x9

.field public static final PERF_TAG_GPU_MAX:I = 0x8

.field public static final PERF_TAG_GPU_MIN:I = 0x7

.field public static final PERF_TAG_HMP_DN_THRES:I = 0xe

.field public static final PERF_TAG_HMP_POLICY_STATE:I = 0x10

.field public static final PERF_TAG_HMP_PRIORITY:I = 0xf

.field public static final PERF_TAG_HMP_UP_THRES:I = 0xd

.field public static final PERF_TAG_IPA_CONTROL_TEMP:I = 0x12

.field public static final PERF_TAG_IPA_SUSTAINABLE_POWER:I = 0x13

.field public static final PERF_TAG_IPA_SWITCH_TEMP:I = 0x11

.field public static final PERF_TAG_L_CPU_CUR:I = 0x3

.field public static final PERF_TAG_L_CPU_MAX:I = 0x2

.field public static final PERF_TAG_L_CPU_MIN:I = 0x1

.field public static final PERF_TAG_MAX:I = 0x14

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field public static final SETUPVIEW_TIME_LIMIT_NS:J = 0xf42400L

.field public static final SKIPPED_FRAME_LIMIT:I = 0x5

.field private static mJankEnabled:Z

.field private static mbDisable:Z

.field private static mbEmuiAnimation:Z

.field private static mbLoadProp:Z

.field private static misBetaUser:I

.field private static misPerfhubEnable:I

.field private static mnEmuiAnimationSkipFrames:I

.field private static mnUpdatePropTime:J

.field private static msEmuiAnimationName:Ljava/lang/String;

.field private static msEmuiAnimationSkippedFrames:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 33
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/util/Jlog;->mnUpdatePropTime:J

    .line 34
    const-string/jumbo v0, "persist.sys.jankenable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/util/Jlog;->mJankEnabled:Z

    .line 35
    sput-boolean v2, Landroid/util/Jlog;->mbLoadProp:Z

    .line 36
    sput-boolean v2, Landroid/util/Jlog;->mbDisable:Z

    .line 37
    sput-boolean v2, Landroid/util/Jlog;->mbEmuiAnimation:Z

    .line 38
    sput v2, Landroid/util/Jlog;->mnEmuiAnimationSkipFrames:I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Landroid/util/Jlog;->msEmuiAnimationSkippedFrames:Ljava/lang/StringBuilder;

    .line 42
    sput v3, Landroid/util/Jlog;->misBetaUser:I

    .line 43
    sput v3, Landroid/util/Jlog;->misPerfhubEnable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public static animationEnd()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 268
    sput-boolean v0, Landroid/util/Jlog;->mbEmuiAnimation:Z

    .line 269
    sput v0, Landroid/util/Jlog;->mnEmuiAnimationSkipFrames:I

    .line 270
    return-void
.end method

.method public static animationSkipFrames(J)V
    .locals 6
    .param p0, "num"    # J

    .prologue
    .line 273
    sget-boolean v0, Landroid/util/Jlog;->mbEmuiAnimation:Z

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    sget-object v0, Landroid/util/Jlog;->msEmuiAnimationSkippedFrames:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 277
    sget-object v0, Landroid/util/Jlog;->msEmuiAnimationSkippedFrames:Ljava/lang/StringBuilder;

    const-string v1, "Skipped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :goto_1
    sget-object v0, Landroid/util/Jlog;->msEmuiAnimationSkippedFrames:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 285
    sget v0, Landroid/util/Jlog;->mnEmuiAnimationSkipFrames:I

    int-to-long v0, v0

    add-long/2addr v0, p0

    long-to-int v0, v0

    sput v0, Landroid/util/Jlog;->mnEmuiAnimationSkipFrames:I

    .line 286
    const-wide/16 v0, 0x3

    cmp-long v0, p0, v0

    if-gez v0, :cond_2

    sget v0, Landroid/util/Jlog;->mnEmuiAnimationSkipFrames:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 288
    :cond_2
    const/16 v0, 0xad

    sget-object v1, Landroid/util/Jlog;->msEmuiAnimationName:Ljava/lang/String;

    sget v2, Landroid/util/Jlog;->mnEmuiAnimationSkipFrames:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/util/Jlog;->msEmuiAnimationSkippedFrames:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " frames"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroid/util/Jlog;->d(ILjava/lang/String;ILjava/lang/String;)I

    .line 289
    invoke-static {}, Landroid/util/Jlog;->animationEnd()V

    goto :goto_0

    .line 281
    :cond_3
    sget-object v0, Landroid/util/Jlog;->msEmuiAnimationSkippedFrames:Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static animationStart(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/Jlog;->mbEmuiAnimation:Z

    .line 262
    sput v2, Landroid/util/Jlog;->mnEmuiAnimationSkipFrames:I

    .line 263
    sget-object v0, Landroid/util/Jlog;->msEmuiAnimationSkippedFrames:Ljava/lang/StringBuilder;

    sget-object v1, Landroid/util/Jlog;->msEmuiAnimationSkippedFrames:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 264
    sput-object p0, Landroid/util/Jlog;->msEmuiAnimationName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d(IILjava/lang/String;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "arg2"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#ARG2:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(ILjava/lang/String;ILjava/lang/String;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 320
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#ARG1:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">#ARG2:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static d(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "tag"    # I
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 306
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    const/4 v0, 0x0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#ARG1:<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static disable()V
    .locals 3

    .prologue
    .line 225
    const/4 v0, 0x1

    sput-boolean v0, Landroid/util/Jlog;->mbDisable:Z

    .line 226
    const/4 v0, 0x3

    const/16 v1, 0x3c

    const-string v2, "JL_MONKEY_CTS_START"

    invoke-static {v0, v1, v2}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    .line 228
    return-void
.end method

.method public static e(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static enable()V
    .locals 3

    .prologue
    .line 231
    const/4 v0, 0x0

    sput-boolean v0, Landroid/util/Jlog;->mbDisable:Z

    .line 232
    const/4 v0, 0x3

    const/16 v1, 0x3d

    const-string v2, "JL_MONKEY_CTS_END"

    invoke-static {v0, v1, v2}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    .line 234
    return-void
.end method

.method public static extractAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "nStartPos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 241
    .local v0, "nLen":I
    if-gtz v0, :cond_1

    .line 255
    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 244
    .restart local p0    # "msg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "}"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const-string v2, " u"

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 248
    if-ltz v1, :cond_0

    .line 250
    add-int/lit8 v1, v1, 0x2

    .line 251
    const-string v2, " "

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 252
    if-ltz v1, :cond_0

    .line 254
    add-int/lit8 v1, v1, 0x1

    .line 255
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static i(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static isBetaUser()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 199
    const/4 v2, -0x1

    sget v3, Landroid/util/Jlog;->misBetaUser:I

    if-eq v2, v3, :cond_2

    sget v2, Landroid/util/Jlog;->misBetaUser:I

    if-ne v0, v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 199
    goto :goto_0

    .line 201
    :cond_2
    const-string/jumbo v2, "ro.logsystem.usertype"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 202
    sput v0, Landroid/util/Jlog;->misBetaUser:I

    .line 206
    :goto_1
    sget v2, Landroid/util/Jlog;->misBetaUser:I

    if-eq v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 204
    :cond_3
    sput v1, Landroid/util/Jlog;->misBetaUser:I

    goto :goto_1
.end method

.method public static isEmuiAnimation()Z
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Landroid/util/Jlog;->mbEmuiAnimation:Z

    goto :goto_0
.end method

.method public static isEnable()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 210
    sget-boolean v3, Landroid/util/Jlog;->mbDisable:Z

    if-eqz v3, :cond_0

    .line 221
    .local v0, "now":J
    :goto_0
    return v2

    .line 211
    .end local v0    # "now":J
    :cond_0
    sget-boolean v3, Landroid/util/Jlog;->mbLoadProp:Z

    if-eqz v3, :cond_1

    sget-boolean v2, Landroid/util/Jlog;->mJankEnabled:Z

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 214
    .restart local v0    # "now":J
    const-wide/32 v4, 0xdbba0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    sget-wide v4, Landroid/util/Jlog;->mnUpdatePropTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7530

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    .line 216
    const-string/jumbo v3, "persist.sys.jankenable"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Landroid/util/Jlog;->mJankEnabled:Z

    .line 217
    sput-wide v0, Landroid/util/Jlog;->mnUpdatePropTime:J

    .line 218
    const/4 v2, 0x1

    sput-boolean v2, Landroid/util/Jlog;->mbLoadProp:Z

    .line 221
    :cond_2
    sget-boolean v2, Landroid/util/Jlog;->mJankEnabled:Z

    goto :goto_0
.end method

.method public static isHisiChipset()Z
    .locals 3

    .prologue
    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "chipType":Ljava/lang/String;
    const-string/jumbo v1, "ro.board.platform"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 350
    const-string/jumbo v1, "msm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "qsc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "MSM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "QSC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 352
    :cond_0
    const/4 v1, 0x0

    .line 354
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static varargs perfEvent(ILjava/lang/String;[I)I
    .locals 13
    .param p0, "eventId"    # I
    .param p1, "PackageName"    # Ljava/lang/String;
    .param p2, "payload"    # [I

    .prologue
    .line 361
    const/4 v8, 0x0

    .line 362
    .local v8, "ret":I
    const/4 v5, 0x0

    .line 365
    .local v5, "msg":Ljava/lang/String;
    const/4 v11, -0x1

    sget v12, Landroid/util/Jlog;->misPerfhubEnable:I

    if-ne v11, v12, :cond_0

    .line 367
    const-string/jumbo v11, "ro.config.hw_perfhub"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 368
    const/4 v11, 0x1

    sput v11, Landroid/util/Jlog;->misPerfhubEnable:I

    .line 374
    :cond_0
    :goto_0
    sget v11, Landroid/util/Jlog;->misPerfhubEnable:I

    if-nez v11, :cond_2

    .line 375
    const/4 v8, -0x1

    .line 407
    .end local v8    # "ret":I
    :goto_1
    return v8

    .line 370
    .restart local v8    # "ret":I
    :cond_1
    const/4 v11, 0x0

    sput v11, Landroid/util/Jlog;->misPerfhubEnable:I

    goto :goto_0

    .line 377
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 378
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v10

    .line 380
    .local v10, "tid":I
    const-string/jumbo v11, "perfhub"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 382
    .local v9, "service":Landroid/os/IBinder;
    if-nez v9, :cond_3

    .line 383
    const/4 v8, -0x1

    goto :goto_1

    .line 385
    :cond_3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 386
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 388
    .local v7, "reply":Landroid/os/Parcel;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "pid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|tid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 390
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 392
    :cond_4
    const-string v11, "android.os.IPerfHub"

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 395
    array-length v11, p2

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    move-object v0, p2

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget v2, v0, v3

    .line 398
    .local v2, "i":I
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 401
    .end local v2    # "i":I
    :cond_5
    const/4 v11, 0x1

    const/4 v12, 0x1

    :try_start_0
    invoke-interface {v9, v11, v1, v7, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_1

    .line 402
    :catch_0
    move-exception v11

    goto :goto_3
.end method

.method public static native print_janklog_native(IILjava/lang/String;)I
.end method

.method public static v(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 324
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static w(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 336
    invoke-static {}, Landroid/util/Jlog;->isEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Landroid/util/Jlog;->print_janklog_native(IILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
