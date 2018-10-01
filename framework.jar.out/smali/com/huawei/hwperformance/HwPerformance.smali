.class public interface abstract Lcom/huawei/hwperformance/HwPerformance;
.super Ljava/lang/Object;
.source "HwPerformance.java"


# static fields
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

.field public static final PERF_TAG_B_CPU_CUR:I = 0x6

.field public static final PERF_TAG_B_CPU_MAX:I = 0x5

.field public static final PERF_TAG_B_CPU_MIN:I = 0x4

.field public static final PERF_TAG_CTL_CPUS_ON:I = 0x65

.field public static final PERF_TAG_CTL_CPUS_ON_LIMIT:I = 0x66

.field public static final PERF_TAG_CTL_DEVICE_TYPE:I = 0x64

.field public static final PERF_TAG_CTRL_TYPE:I = 0x0

.field public static final PERF_TAG_DEF_B_CPU_MAX:I = 0x18

.field public static final PERF_TAG_DEF_B_CPU_MIN:I = 0x17

.field public static final PERF_TAG_DEF_L_CPU_MAX:I = 0x16

.field public static final PERF_TAG_DEF_L_CPU_MIN:I = 0x15

.field public static final PERF_TAG_L_CPU_CUR:I = 0x3

.field public static final PERF_TAG_L_CPU_MAX:I = 0x2

.field public static final PERF_TAG_L_CPU_MIN:I = 0x1

.field public static final PERF_TAG_PARAM_DURATION:I = 0x6a

.field public static final PERF_TAG_PARAM_EVENT_ID:I = 0x67

.field public static final PERF_TAG_PARAM_EVENT_PAYLOAD:I = 0x68

.field public static final PERF_TAG_PARAM_IO_PREFETCH_PID:I = 0x69

.field public static final PERF_TAG_TASK_FORK_ON_B_CLUSTER:I = 0x14

.field public static final PERF_VAL_CTRL_TYPE_HIGHPERF:I = 0x0

.field public static final PERF_VAL_CTRL_TYPE_LOW_VOLTAGE:I = 0x3

.field public static final PERF_VAL_CTRL_TYPE_MAX:I = 0x4

.field public static final PERF_VAL_CTRL_TYPE_SPEC_SCENE:I = 0x1

.field public static final PERF_VAL_CTRL_TYPE_THERMAL_PROTECT:I = 0x2

.field public static final PERF_VAL_DEV_TYPE_CPU_B_CUR:I = 0x7

.field public static final PERF_VAL_DEV_TYPE_CPU_B_MAX:I = 0x6

.field public static final PERF_VAL_DEV_TYPE_CPU_B_MIN:I = 0x5

.field public static final PERF_VAL_DEV_TYPE_CPU_DEF_B_MAX:I = 0xb

.field public static final PERF_VAL_DEV_TYPE_CPU_DEF_B_MIN:I = 0xa

.field public static final PERF_VAL_DEV_TYPE_CPU_DEF_L_MAX:I = 0x9

.field public static final PERF_VAL_DEV_TYPE_CPU_DEF_L_MIN:I = 0x8

.field public static final PERF_VAL_DEV_TYPE_CPU_EVENT:I = 0xc

.field public static final PERF_VAL_DEV_TYPE_CPU_L_CUR:I = 0x4

.field public static final PERF_VAL_DEV_TYPE_CPU_L_MAX:I = 0x3

.field public static final PERF_VAL_DEV_TYPE_CPU_L_MIN:I = 0x2

.field public static final PERF_VAL_DEV_TYPE_IO_PREFETCH_START:I = 0x0

.field public static final PERF_VAL_DEV_TYPE_IO_PREFETCH_STOP:I = 0x1

.field public static final PERF_VAL_DEV_TYPE_MAX:I = 0xd

.field public static final PERF_VAL_STATE_OFF:I = 0x0

.field public static final PERF_VAL_STATE_ON:I = 0x1

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_INPUT_INVALID:I = -0x3

.field public static final REQUEST_PLATFORM_NOTSUPPORT:I = -0x2

.field public static final REQUEST_SUCCEEDED:I


# virtual methods
.method public abstract perfConfigGet([I[I)I
.end method

.method public abstract perfConfigSet([I[ILjava/lang/String;)I
.end method
