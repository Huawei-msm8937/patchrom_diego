.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$InstanceTracker;,
        Landroid/os/StrictMode$InstanceCountViolation;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$LogStackTrace;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$StrictModeResourceMismatchViolation;,
        Landroid/os/StrictMode$StrictModeCustomViolation;,
        Landroid/os/StrictMode$StrictModeDiskWriteViolation;,
        Landroid/os/StrictMode$StrictModeDiskReadViolation;,
        Landroid/os/StrictMode$StrictModeNetworkViolation;,
        Landroid/os/StrictMode$StrictModeViolation;,
        Landroid/os/StrictMode$VmPolicy;,
        Landroid/os/StrictMode$ThreadPolicy;
    }
.end annotation


# static fields
.field private static final ALL_THREAD_DETECT_BITS:I = 0x1f

.field private static final ALL_VM_DETECT_BITS:I = 0x7f00

.field public static final ART_OPT_ENABLE:Z

.field private static final CLEARTEXT_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.clear"

.field public static final DETECT_CUSTOM:I = 0x8

.field public static final DETECT_DISK_READ:I = 0x2

.field public static final DETECT_DISK_WRITE:I = 0x1

.field public static final DETECT_NETWORK:I = 0x4

.field public static final DETECT_RESOURCE_MISMATCH:I = 0x10

.field public static final DETECT_VM_ACTIVITY_LEAKS:I = 0x400

.field private static final DETECT_VM_CLEARTEXT_NETWORK:I = 0x4000

.field public static final DETECT_VM_CLOSABLE_LEAKS:I = 0x200

.field public static final DETECT_VM_CURSOR_LEAKS:I = 0x100

.field private static final DETECT_VM_FILE_URI_EXPOSURE:I = 0x2000

.field private static final DETECT_VM_INSTANCE_LEAKS:I = 0x800

.field public static final DETECT_VM_REGISTRATION_LEAKS:I = 0x1000

.field public static final DISABLE_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.disable"

.field private static final EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_ENG_BUILD:Z

.field private static final IS_USER_BUILD:Z

.field private static final LOG_V:Z

.field private static final MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final MAX_SPAN_TAGS:I = 0x14

.field private static final MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field public static final NETWORK_POLICY_ACCEPT:I = 0x0

.field public static final NETWORK_POLICY_LOG:I = 0x1

.field public static final NETWORK_POLICY_REJECT:I = 0x2

.field private static final NO_OP_SPAN:Landroid/os/StrictMode$Span;

.field public static final PENALTY_DEATH:I = 0x40000

.field public static final PENALTY_DEATH_ON_CLEARTEXT_NETWORK:I = 0x800000

.field public static final PENALTY_DEATH_ON_NETWORK:I = 0x80000

.field public static final PENALTY_DIALOG:I = 0x20000

.field public static final PENALTY_DROPBOX:I = 0x200000

.field public static final PENALTY_FLASH:I = 0x100000

.field public static final PENALTY_GATHER:I = 0x400000

.field public static final PENALTY_LOG:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "StrictMode"

.field private static final THREAD_PENALTY_MASK:I = 0x7f0000

.field public static final VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final VM_PENALTY_MASK:I = 0xa50000

.field private static final gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsIdlerRegistered:Z

.field private static sLastInstanceCountCheckMillis:J

.field private static final sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static volatile sVmPolicyMask:I

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadAndroidPolicy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    const-string v0, "StrictMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    .line 126
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    .line 127
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    .line 135
    const-string/jumbo v0, "persist.sys.art.opt.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->ART_OPT_ENABLE:Z

    .line 335
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    .line 342
    sput v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 343
    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 349
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 858
    new-instance v0, Landroid/os/StrictMode$1;

    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    .line 1178
    new-instance v0, Landroid/os/StrictMode$2;

    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    .line 1186
    new-instance v0, Landroid/os/StrictMode$3;

    invoke-direct {v0}, Landroid/os/StrictMode$3;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    .line 1193
    new-instance v0, Landroid/os/StrictMode$4;

    invoke-direct {v0}, Landroid/os/StrictMode$4;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    .line 1615
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    .line 1616
    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1617
    new-instance v0, Landroid/os/StrictMode$6;

    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 1810
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    .line 2056
    new-instance v0, Landroid/os/StrictMode$7;

    invoke-direct {v0}, Landroid/os/StrictMode$7;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 2080
    new-instance v0, Landroid/os/StrictMode$8;

    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    .line 2087
    new-instance v0, Landroid/os/StrictMode$9;

    invoke-direct {v0}, Landroid/os/StrictMode$9;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    .line 2203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p0}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    .line 122
    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 122
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    .line 122
    invoke-static {p0}, Landroid/os/StrictMode;->executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic access$1400()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1500()J
    .locals 2

    .prologue
    .line 122
    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide v0
.end method

.method static synthetic access$1502(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 122
    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide p0
.end method

.method static synthetic access$2200()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$600()Landroid/util/Singleton;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    return v0
.end method

.method static synthetic access$900()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .locals 4

    .prologue
    .line 1026
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 1027
    .local v1, "oldPolicyMask":I
    and-int/lit8 v0, v1, -0x3

    .line 1028
    .local v0, "newPolicyMask":I
    if-eq v0, v1, :cond_0

    .line 1029
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1031
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method public static allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .locals 4

    .prologue
    .line 1007
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 1008
    .local v1, "oldPolicyMask":I
    and-int/lit8 v0, v1, -0x4

    .line 1009
    .local v0, "newPolicyMask":I
    if-eq v0, v1, :cond_0

    .line 1010
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1012
    :cond_0
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v2
.end method

.method private static amTheSystemServerProcess()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1040
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    const/16 v8, 0x3e8

    if-eq v7, v8, :cond_1

    .line 1054
    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    .local v2, "i$":I
    .local v3, "len$":I
    .local v4, "stack":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return v6

    .line 1046
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "stack":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    .line 1047
    .restart local v4    # "stack":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 1048
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .restart local v0    # "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 1049
    .local v5, "ste":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 1050
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v7, "com.android.server."

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1051
    const/4 v6, 0x1

    goto :goto_0

    .line 1048
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static clearGatheredViolations()V
    .locals 2

    .prologue
    .line 1586
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1587
    return-void
.end method

.method public static conditionallyCheckInstanceCounts()V
    .locals 10

    .prologue
    .line 1593
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v6

    .line 1594
    .local v6, "policy":Landroid/os/StrictMode$VmPolicy;
    iget-object v8, v6, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 1613
    :cond_0
    return-void

    .line 1598
    :cond_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1599
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 1600
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1603
    iget-object v8, v6, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1604
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 1605
    .local v4, "klass":Ljava/lang/Class;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1606
    .local v5, "limit":I
    const/4 v8, 0x0

    invoke-static {v4, v8}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v2

    .line 1607
    .local v2, "instances":J
    int-to-long v8, v5

    cmp-long v8, v2, v8

    if-lez v8, :cond_2

    .line 1610
    new-instance v7, Landroid/os/StrictMode$InstanceCountViolation;

    invoke-direct {v7, v4, v2, v3, v5}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    .line 1611
    .local v7, "tr":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static conditionallyEnableDebugLogging()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1063
    const-string/jumbo v6, "persist.sys.strictmode.visual"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Landroid/os/StrictMode;->amTheSystemServerProcess()Z

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 1065
    .local v0, "doFlashes":Z
    :goto_0
    const-string/jumbo v6, "persist.sys.strictmode.disable"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1069
    .local v2, "suppress":Z
    if-nez v0, :cond_2

    sget-boolean v6, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-nez v6, :cond_0

    if-eqz v2, :cond_2

    .line 1070
    :cond_0
    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 1110
    :goto_1
    return v5

    .end local v0    # "doFlashes":Z
    .end local v2    # "suppress":Z
    :cond_1
    move v0, v5

    .line 1063
    goto :goto_0

    .line 1085
    .restart local v0    # "doFlashes":Z
    .restart local v2    # "suppress":Z
    :cond_2
    const/4 v3, 0x7

    .line 1089
    .local v3, "threadPolicyMask":I
    sget-boolean v6, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-nez v6, :cond_3

    .line 1090
    const/high16 v6, 0x200000

    or-int/2addr v3, v6

    .line 1092
    :cond_3
    if-eqz v0, :cond_4

    .line 1093
    const/high16 v6, 0x100000

    or-int/2addr v3, v6

    .line 1096
    :cond_4
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1100
    sget-boolean v6, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-eqz v6, :cond_5

    .line 1101
    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    :goto_2
    move v5, v4

    .line 1110
    goto :goto_1

    .line 1103
    :cond_5
    new-instance v5, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v5}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    .line 1104
    .local v1, "policyBuilder":Landroid/os/StrictMode$VmPolicy$Builder;
    sget-boolean v5, Landroid/os/StrictMode;->IS_ENG_BUILD:Z

    if-eqz v5, :cond_6

    .line 1105
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 1107
    :cond_6
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v5

    invoke-static {v5}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1108
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v5

    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    goto :goto_2
.end method

.method public static decrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 11
    .param p0, "klass"    # Ljava/lang/Class;

    .prologue
    const/4 v7, 0x0

    .line 2238
    if-nez p0, :cond_1

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2243
    :cond_1
    const-class v8, Landroid/os/StrictMode;

    monitor-enter v8

    .line 2244
    :try_start_0
    sget-object v9, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v9, v9, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v9, v9, 0x400

    if-nez v9, :cond_2

    .line 2245
    monitor-exit v8

    goto :goto_0

    .line 2267
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2248
    :cond_2
    :try_start_1
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2249
    .local v1, "expected":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 2252
    .local v5, "newExpected":I
    sget-boolean v9, Landroid/os/StrictMode;->ART_OPT_ENABLE:Z

    if-eqz v9, :cond_6

    .line 2253
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_5

    :cond_3
    move v5, v7

    .line 2258
    :goto_1
    if-nez v5, :cond_9

    .line 2259
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v9, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2266
    :goto_2
    add-int/lit8 v4, v5, 0x1

    .line 2267
    .local v4, "limit":I
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2270
    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    move-result v0

    .line 2271
    .local v0, "actual":I
    sget-boolean v8, Landroid/os/StrictMode;->ART_OPT_ENABLE:Z

    if-eqz v8, :cond_a

    .line 2274
    if-gt v0, v4, :cond_4

    const/16 v8, 0xa

    if-le v0, v8, :cond_0

    .line 2291
    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2292
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 2293
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2295
    invoke-static {p0, v7}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v2

    .line 2296
    .local v2, "instances":J
    int-to-long v8, v4

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 2297
    new-instance v6, Landroid/os/StrictMode$InstanceCountViolation;

    invoke-direct {v6, p0, v2, v3, v4}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    .line 2298
    .local v6, "tr":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2253
    .end local v0    # "actual":I
    .end local v2    # "instances":J
    .end local v4    # "limit":I
    .end local v6    # "tr":Ljava/lang/Throwable;
    :cond_5
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    .line 2255
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    move v5, v7

    :goto_3
    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    goto :goto_3

    .line 2261
    :cond_9
    sget-object v9, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, p0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 2278
    .restart local v0    # "actual":I
    .restart local v4    # "limit":I
    :cond_a
    if-gt v0, v4, :cond_4

    goto :goto_0
.end method

.method private static dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "violationMaskSubset"    # I
    .param p1, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    .line 1535
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1536
    .local v0, "outstanding":I
    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 1539
    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 1565
    :goto_0
    return-void

    .line 1543
    :cond_0
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_1

    const-string v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dropboxing async; in-flight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_1
    new-instance v1, Landroid/os/StrictMode$5;

    const-string v2, "callActivityManagerForStrictModeDropbox"

    invoke-direct {v1, v2, p0, p1}, Landroid/os/StrictMode$5;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$5;->start()V

    goto :goto_0
.end method

.method public static enableDeathOnNetwork()V
    .locals 4

    .prologue
    .line 1120
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    .line 1121
    .local v1, "oldPolicy":I
    or-int/lit8 v2, v1, 0x4

    const/high16 v3, 0x80000

    or-int v0, v2, v3

    .line 1122
    .local v0, "newPolicy":I
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1123
    return-void
.end method

.method public static enableDefaults()V
    .locals 1

    .prologue
    .line 1696
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1700
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 1704
    return-void
.end method

.method public static enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2109
    sget-boolean v3, Landroid/os/StrictMode;->IS_USER_BUILD:Z

    if-eqz v3, :cond_0

    .line 2110
    sget-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    .line 2137
    :goto_0
    return-object v0

    .line 2112
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2113
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "name must be non-null and non-empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2115
    :cond_2
    sget-object v3, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ThreadSpanState;

    .line 2116
    .local v2, "state":Landroid/os/StrictMode$ThreadSpanState;
    const/4 v0, 0x0

    .line 2117
    .local v0, "span":Landroid/os/StrictMode$Span;
    monitor-enter v2

    .line 2118
    :try_start_0
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_5

    .line 2119
    iget-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 2120
    # getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    .line 2121
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    .line 2126
    :goto_1
    # setter for: Landroid/os/StrictMode$Span;->mName:Ljava/lang/String;
    invoke-static {v0, p0}, Landroid/os/StrictMode$Span;->access$1902(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;

    .line 2127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Landroid/os/StrictMode$Span;->mCreateMillis:J
    invoke-static {v0, v4, v5}, Landroid/os/StrictMode$Span;->access$2002(Landroid/os/StrictMode$Span;J)J

    .line 2128
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    # setter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->access$1802(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 2129
    const/4 v3, 0x0

    # setter for: Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;
    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 2130
    iput-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    .line 2131
    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    .line 2132
    # getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 2133
    # getter for: Landroid/os/StrictMode$Span;->mNext:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/os/StrictMode$Span;->access$1800(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    # setter for: Landroid/os/StrictMode$Span;->mPrev:Landroid/os/StrictMode$Span;
    invoke-static {v3, v0}, Landroid/os/StrictMode$Span;->access$2102(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 2135
    :cond_3
    sget-boolean v3, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v3, :cond_4

    const-string v3, "StrictMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Span enter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    :cond_4
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2124
    :cond_5
    :try_start_1
    new-instance v1, Landroid/os/StrictMode$Span;

    invoke-direct {v1, v2}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "span":Landroid/os/StrictMode$Span;
    .local v1, "span":Landroid/os/StrictMode$Span;
    move-object v0, v1

    .end local v1    # "span":Landroid/os/StrictMode$Span;
    .restart local v0    # "span":Landroid/os/StrictMode$Span;
    goto :goto_1
.end method

.method private static executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V
    .locals 4
    .param p0, "info"    # Landroid/os/StrictMode$ViolationInfo;

    .prologue
    .line 1521
    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    .line 1522
    .local v0, "violationBit":I
    new-instance v1, Landroid/os/StrictMode$StrictModeViolation;

    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    throw v1
.end method

.method public static getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .locals 3

    .prologue
    .line 993
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$1;)V

    return-object v0
.end method

.method public static getThreadPolicyMask()I
    .locals 1

    .prologue
    .line 982
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->getPolicyMask()I

    move-result v0

    return v0
.end method

.method public static getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .locals 2

    .prologue
    .line 1682
    const-class v1, Landroid/os/StrictMode;

    monitor-enter v1

    .line 1683
    :try_start_0
    sget-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    monitor-exit v1

    return-object v0

    .line 1684
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static hasGatheredViolations()Z
    .locals 1

    .prologue
    .line 1577
    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static incrementExpectedActivityCount(Ljava/lang/Class;)V
    .locals 4
    .param p0, "klass"    # Ljava/lang/Class;

    .prologue
    .line 2219
    if-nez p0, :cond_0

    .line 2232
    :goto_0
    return-void

    .line 2223
    :cond_0
    const-class v3, Landroid/os/StrictMode;

    monitor-enter v3

    .line 2224
    :try_start_0
    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    .line 2225
    monitor-exit v3

    goto :goto_0

    .line 2231
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2228
    :cond_1
    :try_start_1
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2229
    .local v0, "expected":Ljava/lang/Integer;
    if-nez v0, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2230
    .local v1, "newExpected":Ljava/lang/Integer;
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2231
    monitor-exit v3

    goto :goto_0

    .line 2229
    .end local v1    # "newExpected":Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static noteDiskRead()V
    .locals 2

    .prologue
    .line 2182
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2183
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2188
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :goto_0
    return-void

    .line 2187
    .restart local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onReadFromDisk()V

    goto :goto_0
.end method

.method public static noteDiskWrite()V
    .locals 2

    .prologue
    .line 2194
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2195
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2200
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :goto_0
    return-void

    .line 2199
    .restart local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onWriteToDisk()V

    goto :goto_0
.end method

.method public static noteResourceMismatch(Ljava/lang/Object;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/Object;

    .prologue
    .line 2170
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2171
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2176
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :goto_0
    return-void

    .line 2175
    .restart local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onResourceMismatch(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static noteSlowCall(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2150
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    .line 2151
    .local v0, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_0

    .line 2156
    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :goto_0
    return-void

    .line 2155
    .restart local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    :cond_0
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v0    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static onBinderStrictModePolicyChange(I)V
    .locals 0
    .param p0, "newPolicy"    # I

    .prologue
    .line 1979
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 1980
    return-void
.end method

.method public static onCleartextNetworkDetected([B)V
    .locals 8
    .param p0, "firstPacket"    # [B

    .prologue
    const/4 v7, 0x4

    const/16 v6, 0x10

    const/4 v0, 0x0

    .line 1781
    const/4 v2, 0x0

    .line 1782
    .local v2, "rawAddr":[B
    if-eqz p0, :cond_0

    .line 1783
    array-length v4, p0

    const/16 v5, 0x14

    if-lt v4, v5, :cond_3

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0x40

    if-ne v4, v5, :cond_3

    .line 1785
    new-array v2, v7, [B

    .line 1786
    invoke-static {p0, v6, v2, v0, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1794
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1795
    .local v3, "uid":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected cleartext network traffic from UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1796
    .local v1, "msg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1798
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detected cleartext network traffic from UID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1804
    :cond_1
    :goto_1
    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    .line 1805
    .local v0, "forceDeath":Z
    :cond_2
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 1807
    return-void

    .line 1787
    .end local v0    # "forceDeath":Z
    .end local v1    # "msg":Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_3
    array-length v4, p0

    const/16 v5, 0x28

    if-lt v4, v5, :cond_0

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xf0

    const/16 v5, 0x60

    if-ne v4, v5, :cond_0

    .line 1789
    new-array v2, v6, [B

    .line 1790
    const/16 v4, 0x18

    invoke-static {p0, v4, v2, v0, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    .line 1800
    .restart local v1    # "msg":Ljava/lang/String;
    .restart local v3    # "uid":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public static onFileUriExposed(Ljava/lang/String;)V
    .locals 3
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 1773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:// Uri exposed through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1774
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1775
    return-void
.end method

.method public static onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1759
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1760
    return-void
.end method

.method public static onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1766
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1767
    return-void
.end method

.method public static onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1745
    invoke-static {p0, p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1746
    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1816
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    .line 1817
    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 22
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "originStack"    # Ljava/lang/Throwable;
    .param p2, "forceDeath"    # Z

    .prologue
    .line 1824
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v19, 0x200000

    and-int v18, v18, v19

    if-eqz v18, :cond_5

    const/4 v12, 0x1

    .line 1825
    .local v12, "penaltyDropbox":Z
    :goto_0
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v19, 0x40000

    and-int v18, v18, v19

    if-nez v18, :cond_0

    if-eqz p2, :cond_6

    :cond_0
    const/4 v7, 0x1

    .line 1826
    .local v7, "penaltyDeath":Z
    :goto_1
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v19, 0x10000

    and-int v18, v18, v19

    if-eqz v18, :cond_7

    const/4 v13, 0x1

    .line 1827
    .local v13, "penaltyLog":Z
    :goto_2
    new-instance v6, Landroid/os/StrictMode$ViolationInfo;

    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 1830
    .local v6, "info":Landroid/os/StrictMode$ViolationInfo;
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    .line 1831
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    .line 1832
    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    .line 1834
    invoke-virtual {v6}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1835
    .local v5, "fingerprint":Ljava/lang/Integer;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1836
    .local v10, "now":J
    const-wide/16 v8, 0x0

    .line 1837
    .local v8, "lastViolationTime":J
    const-wide v16, 0x7fffffffffffffffL

    .line 1838
    .local v16, "timeSinceLastViolationMillis":J
    sget-object v19, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    monitor-enter v19

    .line 1839
    :try_start_0
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1840
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1841
    sub-long v16, v10, v8

    .line 1843
    :cond_1
    const-wide/16 v20, 0x3e8

    cmp-long v18, v16, v20

    if-lez v18, :cond_2

    .line 1844
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    :cond_2
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1848
    if-eqz v13, :cond_3

    const-wide/16 v18, 0x3e8

    cmp-long v18, v16, v18

    if-lez v18, :cond_3

    .line 1849
    const-string v18, "StrictMode"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1852
    :cond_3
    const/high16 v18, 0x200000

    sget v19, Landroid/os/StrictMode;->sVmPolicyMask:I

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0x7f00

    move/from16 v19, v0

    or-int v15, v18, v19

    .line 1854
    .local v15, "violationMaskSubset":I
    if-eqz v12, :cond_8

    if-nez v7, :cond_8

    .line 1858
    invoke-static {v15, v6}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1892
    :cond_4
    :goto_3
    return-void

    .line 1824
    .end local v5    # "fingerprint":Ljava/lang/Integer;
    .end local v6    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v7    # "penaltyDeath":Z
    .end local v8    # "lastViolationTime":J
    .end local v10    # "now":J
    .end local v12    # "penaltyDropbox":Z
    .end local v13    # "penaltyLog":Z
    .end local v15    # "violationMaskSubset":I
    .end local v16    # "timeSinceLastViolationMillis":J
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1825
    .restart local v12    # "penaltyDropbox":Z
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 1826
    .restart local v7    # "penaltyDeath":Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1846
    .restart local v5    # "fingerprint":Ljava/lang/Integer;
    .restart local v6    # "info":Landroid/os/StrictMode$ViolationInfo;
    .restart local v8    # "lastViolationTime":J
    .restart local v10    # "now":J
    .restart local v13    # "penaltyLog":Z
    .restart local v16    # "timeSinceLastViolationMillis":J
    :catchall_0
    move-exception v18

    :try_start_1
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 1862
    .restart local v15    # "violationMaskSubset":I
    :cond_8
    if-eqz v12, :cond_9

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-nez v18, :cond_9

    .line 1867
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v14

    .line 1873
    .local v14, "savedPolicyMask":I
    const/16 v18, 0x0

    :try_start_2
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1875
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v18

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v15, v6}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1883
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 1887
    .end local v14    # "savedPolicyMask":I
    :cond_9
    :goto_4
    if-eqz v7, :cond_4

    .line 1888
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v19, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1889
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V

    .line 1890
    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    goto :goto_3

    .line 1879
    .restart local v14    # "savedPolicyMask":I
    :catch_0
    move-exception v4

    .line 1880
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v18, "StrictMode"

    const-string v19, "RemoteException trying to handle StrictMode violation"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1883
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    goto :goto_4

    .end local v4    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v18

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v18
.end method

.method public static onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "originStack"    # Ljava/lang/Throwable;

    .prologue
    .line 1752
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1753
    return-void
.end method

.method private static parsePolicyFromMessage(Ljava/lang/String;)I
    .locals 5
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1139
    if-eqz p0, :cond_0

    const-string/jumbo v4, "policy="

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return v3

    .line 1142
    :cond_1
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1143
    .local v2, "spaceIndex":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 1146
    const/4 v4, 0x7

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "policyString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private static parseViolationFromMessage(Ljava/lang/String;)I
    .locals 8
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1158
    if-nez p0, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return v5

    .line 1161
    :cond_1
    const-string/jumbo v6, "violation="

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1162
    .local v3, "violationIndex":I
    if-eq v3, v7, :cond_0

    .line 1165
    const-string/jumbo v6, "violation="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v3, v6

    .line 1166
    .local v2, "numberStartIndex":I
    const/16 v6, 0x20

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 1167
    .local v1, "numberEndIndex":I
    if-ne v1, v7, :cond_2

    .line 1168
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1170
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1172
    .local v4, "violationString":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method static readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .locals 13
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    .line 1926
    new-instance v9, Ljava/io/StringWriter;

    invoke-direct {v9}, Ljava/io/StringWriter;-><init>()V

    .line 1927
    .local v9, "sw":Ljava/io/StringWriter;
    new-instance v8, Lcom/android/internal/util/FastPrintWriter;

    const/4 v10, 0x0

    const/16 v11, 0x100

    invoke-direct {v8, v9, v10, v11}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 1928
    .local v8, "pw":Ljava/io/PrintWriter;
    new-instance v10, Landroid/os/StrictMode$LogStackTrace;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/os/StrictMode$LogStackTrace;-><init>(Landroid/os/StrictMode$1;)V

    invoke-virtual {v10, v8}, Landroid/os/StrictMode$LogStackTrace;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1929
    invoke-virtual {v8}, Ljava/io/PrintWriter;->flush()V

    .line 1930
    invoke-virtual {v9}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1932
    .local v5, "ourStack":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v7

    .line 1933
    .local v7, "policyMask":I
    const/high16 v10, 0x400000

    and-int/2addr v10, v7

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    .line 1935
    .local v0, "currentlyGathering":Z
    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1936
    .local v4, "numViolations":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 1937
    sget-boolean v10, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v10, :cond_0

    const-string v10, "StrictMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "strict mode violation stacks read from binder call.  i="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_0
    new-instance v3, Landroid/os/StrictMode$ViolationInfo;

    if-nez v0, :cond_2

    const/4 v10, 0x1

    :goto_2
    invoke-direct {v3, p0, v10}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 1939
    .local v3, "info":Landroid/os/StrictMode$ViolationInfo;
    iget-object v10, v3, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, v3, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0x7530

    if-le v10, v11, :cond_6

    .line 1940
    iget-object v10, v3, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v10, v10, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    const/16 v11, 0x100

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1949
    .local v1, "front":Ljava/lang/String;
    :goto_3
    add-int/lit8 v10, v4, -0x1

    if-ge v2, v10, :cond_4

    .line 1951
    new-instance v3, Landroid/os/StrictMode$ViolationInfo;

    .end local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    if-nez v0, :cond_3

    const/4 v10, 0x1

    :goto_4
    invoke-direct {v3, p0, v10}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    .line 1952
    .restart local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1933
    .end local v0    # "currentlyGathering":Z
    .end local v1    # "front":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v4    # "numViolations":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1938
    .restart local v0    # "currentlyGathering":Z
    .restart local v2    # "i":I
    .restart local v4    # "numViolations":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    .line 1951
    .restart local v1    # "front":Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    .line 1955
    .restart local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    :cond_4
    invoke-static {}, Landroid/os/StrictMode;->clearGatheredViolations()V

    .line 1957
    const-string v10, "StrictMode"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Stack is too large: numViolations="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " policy=#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " front="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    .end local v1    # "front":Ljava/lang/String;
    .end local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    :cond_5
    return-void

    .line 1962
    .restart local v3    # "info":Landroid/os/StrictMode$ViolationInfo;
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v3, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v12, v11, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "# via Binder call with stack:\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v11, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 1963
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v6

    .line 1964
    .local v6, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v10, v6, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v10, :cond_7

    .line 1965
    check-cast v6, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .end local v6    # "policy":Ldalvik/system/BlockGuard$Policy;
    invoke-virtual {v6, v3}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    .line 1936
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method private static setBlockGuardPolicy(I)V
    .locals 3
    .param p0, "policyMask"    # I

    .prologue
    .line 897
    if-nez p0, :cond_0

    .line 898
    sget-object v2, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v2}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    .line 910
    :goto_0
    return-void

    .line 901
    :cond_0
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    .line 903
    .local v1, "policy":Ldalvik/system/BlockGuard$Policy;
    instance-of v2, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 904
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 909
    .local v0, "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    :goto_1
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setPolicyMask(I)V

    goto :goto_0

    .line 906
    .end local v0    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    :cond_1
    sget-object v2, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    .line 907
    .restart local v0    # "androidPolicy":Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    invoke-static {v0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    goto :goto_1
.end method

.method private static setCloseGuardEnabled(Z)V
    .locals 2
    .param p0, "enabled"    # Z

    .prologue
    .line 914
    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    move-result-object v0

    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    if-nez v0, :cond_0

    .line 915
    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode$1;)V

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    .line 917
    :cond_0
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    .line 918
    return-void
.end method

.method public static setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .locals 1
    .param p0, "policy"    # Landroid/os/StrictMode$ThreadPolicy;

    .prologue
    .line 880
    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    .line 881
    return-void
.end method

.method private static setThreadPolicyMask(I)V
    .locals 0
    .param p0, "policyMask"    # I

    .prologue
    .line 889
    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    .line 892
    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    .line 893
    return-void
.end method

.method public static setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .locals 7
    .param p0, "policy"    # Landroid/os/StrictMode$VmPolicy;

    .prologue
    .line 1637
    const-class v5, Landroid/os/StrictMode;

    monitor-enter v5

    .line 1638
    :try_start_0
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    .line 1639
    iget v4, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    sput v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    .line 1640
    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v4

    invoke-static {v4}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    .line 1642
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1643
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 1644
    iget-object v1, v0, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    .line 1645
    .local v1, "mq":Landroid/os/MessageQueue;
    iget-object v4, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v6, 0xa50000

    and-int/2addr v4, v6

    if-nez v4, :cond_5

    .line 1647
    :cond_0
    sget-object v4, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v4}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1648
    const/4 v4, 0x0

    sput-boolean v4, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    .line 1655
    .end local v1    # "mq":Landroid/os/MessageQueue;
    :cond_1
    :goto_0
    const/4 v3, 0x0

    .line 1656
    .local v3, "networkPolicy":I
    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_3

    .line 1657
    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v6, 0x40000

    and-int/2addr v4, v6

    if-nez v4, :cond_2

    sget v4, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v6, 0x800000

    and-int/2addr v4, v6

    if-eqz v4, :cond_6

    .line 1659
    :cond_2
    const/4 v3, 0x2

    .line 1665
    :cond_3
    :goto_1
    const-string/jumbo v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1667
    .local v2, "netd":Landroid/os/INetworkManagementService;
    if-eqz v2, :cond_7

    .line 1669
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-interface {v2, v4, v3}, Landroid/os/INetworkManagementService;->setUidCleartextNetworkPolicy(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1675
    :cond_4
    :goto_2
    :try_start_2
    monitor-exit v5

    .line 1676
    return-void

    .line 1649
    .end local v2    # "netd":Landroid/os/INetworkManagementService;
    .end local v3    # "networkPolicy":I
    .restart local v1    # "mq":Landroid/os/MessageQueue;
    :cond_5
    sget-boolean v4, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    if-nez v4, :cond_1

    .line 1650
    sget-object v4, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v1, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1651
    const/4 v4, 0x1

    sput-boolean v4, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    goto :goto_0

    .line 1675
    .end local v0    # "looper":Landroid/os/Looper;
    .end local v1    # "mq":Landroid/os/MessageQueue;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1661
    .restart local v0    # "looper":Landroid/os/Looper;
    .restart local v3    # "networkPolicy":I
    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    .line 1672
    .restart local v2    # "netd":Landroid/os/INetworkManagementService;
    :cond_7
    if-eqz v3, :cond_4

    .line 1673
    :try_start_3
    const-string v4, "StrictMode"

    const-string v6, "Dropping requested network policy due to missing service!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 1670
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method private static tooManyViolationsThisLoop()Z
    .locals 2

    .prologue
    .line 1201
    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static trackActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "instance"    # Ljava/lang/Object;

    .prologue
    .line 2212
    new-instance v0, Landroid/os/StrictMode$InstanceTracker;

    invoke-direct {v0, p0}, Landroid/os/StrictMode$InstanceTracker;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static vmCleartextNetworkEnabled()Z
    .locals 1

    .prologue
    .line 1738
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vmClosableObjectLeaksEnabled()Z
    .locals 1

    .prologue
    .line 1717
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vmFileUriExposureEnabled()Z
    .locals 1

    .prologue
    .line 1731
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vmRegistrationLeaksEnabled()Z
    .locals 1

    .prologue
    .line 1724
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static vmSqliteObjectLeaksEnabled()Z
    .locals 1

    .prologue
    .line 1710
    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .locals 8
    .param p0, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v7, 0x0

    .line 1898
    sget-object v4, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1899
    .local v3, "violations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/StrictMode$ViolationInfo;>;"
    if-nez v3, :cond_0

    .line 1900
    invoke-virtual {p0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1915
    :goto_0
    sget-object v4, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1916
    return-void

    .line 1902
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1903
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 1904
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1905
    .local v2, "start":I
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v4, p0, v7}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1906
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    sub-int v1, v4, v2

    .line 1907
    .local v1, "size":I
    const/16 v4, 0x2800

    if-le v1, v4, :cond_1

    .line 1908
    const-string v4, "StrictMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrote violation #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1912
    .end local v1    # "size":I
    .end local v2    # "start":I
    :cond_2
    sget-boolean v4, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v4, :cond_3

    const-string v4, "StrictMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wrote violations to response parcel; num="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method