.class public final Lcom/hisi/perfhub/PerfHub;
.super Ljava/lang/Object;
.source "PerfHub.java"


# static fields
.field public static final PERF_CTRL_TYPE_HIGHPERF:I = 0x0

.field public static final PERF_CTRL_TYPE_LOW_TEMP_LOW_VOLTAGE:I = 0x4

.field public static final PERF_CTRL_TYPE_LOW_VOLTAGE:I = 0x3

.field public static final PERF_CTRL_TYPE_MAX:I = 0x5

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

.field public static final PERF_STATE_OFF:I = 0x0

.field public static final PERF_STATE_ON:I = 0x1

.field public static final PERF_TAG_AVL_B_CPU_FREQ_LIST:I = 0x23

.field public static final PERF_TAG_AVL_DDR_FREQ_LIST:I = 0x25

.field public static final PERF_TAG_AVL_GPU_FREQ_LIST:I = 0x24

.field public static final PERF_TAG_AVL_L_CPU_FREQ_LIST:I = 0x22

.field public static final PERF_TAG_B_CPU_CUR:I = 0x6

.field public static final PERF_TAG_B_CPU_MAX:I = 0x5

.field public static final PERF_TAG_B_CPU_MIN:I = 0x4

.field public static final PERF_TAG_CTRL_TYPE:I = 0x0

.field public static final PERF_TAG_CTRL_TYPE_NEW:I = 0x26

.field public static final PERF_TAG_DDR_CUR:I = 0xc

.field public static final PERF_TAG_DDR_MAX:I = 0xb

.field public static final PERF_TAG_DDR_MIN:I = 0xa

.field public static final PERF_TAG_DEF_B_CPU_MAX:I = 0x18

.field public static final PERF_TAG_DEF_B_CPU_MIN:I = 0x17

.field public static final PERF_TAG_DEF_DDR_MAX:I = 0x1c

.field public static final PERF_TAG_DEF_DDR_MIN:I = 0x1b

.field public static final PERF_TAG_DEF_GPU_MAX:I = 0x1a

.field public static final PERF_TAG_DEF_GPU_MIN:I = 0x19

.field public static final PERF_TAG_DEF_HMP_DN_THRES:I = 0x1e

.field public static final PERF_TAG_DEF_HMP_UP_THRES:I = 0x1d

.field public static final PERF_TAG_DEF_IPA_CONTROL_TEMP:I = 0x20

.field public static final PERF_TAG_DEF_IPA_SUSTAINABLE_POWER:I = 0x21

.field public static final PERF_TAG_DEF_IPA_SWITCH_TEMP:I = 0x1f

.field public static final PERF_TAG_DEF_L_CPU_MAX:I = 0x16

.field public static final PERF_TAG_DEF_L_CPU_MIN:I = 0x15

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

.field public static final PERF_TAG_MAX:I = 0x27

.field public static final PERF_TAG_TASK_FORK_ON_B_CLUSTER:I = 0x14

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PF_API_JAVA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private native native_perf_config_get([I[I)I
.end method

.method private native native_perf_config_set([I[I)I
.end method

.method private native native_perf_event(ILjava/lang/String;[I)I
.end method


# virtual methods
.method public perfConfigGet([I[I)I
    .locals 1
    .param p1, "tags"    # [I
    .param p2, "values"    # [I

    .prologue
    .line 228
    invoke-direct {p0, p1, p2}, Lcom/hisi/perfhub/PerfHub;->native_perf_config_get([I[I)I

    move-result v0

    .line 229
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 230
    const/4 v0, -0x1

    .line 235
    :goto_0
    return v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public perfConfigSet([I[I)I
    .locals 1
    .param p1, "tags"    # [I
    .param p2, "values"    # [I

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/hisi/perfhub/PerfHub;->native_perf_config_set([I[I)I

    move-result v0

    .line 217
    .local v0, "ret":I
    if-eqz v0, :cond_0

    .line 218
    const/4 v0, -0x1

    .line 223
    :goto_0
    return v0

    .line 220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs perfEvent(ILjava/lang/String;[I)I
    .locals 1
    .param p1, "eventId"    # I
    .param p2, "PackageName"    # Ljava/lang/String;
    .param p3, "payload"    # [I

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "ret":I
    invoke-direct {p0, p1, p2, p3}, Lcom/hisi/perfhub/PerfHub;->native_perf_event(ILjava/lang/String;[I)I

    move-result v0

    .line 207
    if-eqz v0, :cond_0

    .line 208
    const/4 v0, -0x1

    .line 211
    :cond_0
    return v0
.end method
