.class public Lcom/android/internal/os/KernelUidCpuTimeReader;
.super Ljava/lang/Object;
.source "KernelUidCpuTimeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KernelUidCpuTimeReader"

.field private static final sProcFile:Ljava/lang/String; = "/proc/uid_cputime/show_uid_stat"

.field private static final sRemoveUidProcFile:Ljava/lang/String; = "/proc/uid_cputime/remove_uid_range"


# instance fields
.field private mLastPowerMaUs:Landroid/util/SparseLongArray;

.field private mLastSystemTimeUs:Landroid/util/SparseLongArray;

.field private mLastTimeReadUs:J

.field private mLastUserTimeUs:Landroid/util/SparseLongArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    .line 59
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    .line 60
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    return-void
.end method


# virtual methods
.method public readDelta(Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;)V
    .locals 37
    .param p1, "callback"    # Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;

    .prologue
    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    mul-long v16, v32, v34

    .line 72
    .local v16, "nowUs":J
    const/4 v14, 0x0

    .line 74
    .local v14, "line":Ljava/lang/String;
    :try_start_0
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v31, "/proc/uid_cputime/show_uid_stat"

    move-object/from16 v0, v31

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v15, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .local v15, "reader":Ljava/io/BufferedReader;
    const/16 v31, 0x0

    .line 75
    :try_start_1
    new-instance v21, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x20

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 76
    .local v21, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :goto_0
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_9

    .line 77
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v27

    .line 79
    .local v27, "uidStr":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    .line 80
    .local v5, "uid":I
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v28

    .line 83
    .local v28, "userTimeUs":J
    const-wide/16 v22, 0x0

    .line 84
    .local v22, "systemTimeUs":J
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 85
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v22

    .line 95
    :cond_0
    :goto_1
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 96
    invoke-virtual/range {v21 .. v21}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    const/16 v32, 0xa

    move/from16 v0, v32

    invoke-static {v4, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v18, v32, v34

    .line 101
    .local v18, "powerMaUs":J
    :goto_2
    if-eqz p1, :cond_4

    .line 102
    move-wide/from16 v6, v28

    .line 103
    .local v6, "userTimeDeltaUs":J
    move-wide/from16 v8, v22

    .line 104
    .local v8, "systemTimeDeltaUs":J
    move-wide/from16 v10, v18

    .line 105
    .local v10, "powerDeltaMaUs":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v13

    .line 106
    .local v13, "index":I
    if-ltz v13, :cond_2

    .line 107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    sub-long v6, v6, v32

    .line 108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    sub-long v8, v8, v32

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    sub-long v10, v10, v32

    .line 111
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    move-wide/from16 v32, v0

    sub-long v24, v16, v32

    .line 112
    .local v24, "timeDiffUs":J
    const-wide/16 v32, 0x0

    cmp-long v4, v6, v32

    if-ltz v4, :cond_1

    const-wide/16 v32, 0x0

    cmp-long v4, v8, v32

    if-ltz v4, :cond_1

    const-wide/16 v32, 0x0

    cmp-long v4, v10, v32

    if-gez v4, :cond_2

    .line 113
    :cond_1
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v4, "Malformed cpu data for UID="

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .local v20, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v32, "!\n"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v4, "Time between reads: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-wide/16 v32, 0x3e8

    div-long v32, v24, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 117
    const-string v4, "\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v4, "Previous times: u="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 120
    const-string v4, " s="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 122
    const-string v4, " p="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    const-string v4, "mAms\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v4, "Current times: u="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-wide/16 v32, 0x3e8

    div-long v32, v28, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 127
    const-string v4, " s="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-wide/16 v32, 0x3e8

    div-long v32, v22, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 129
    const-string v4, " p="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v32, 0x3e8

    div-long v32, v18, v32

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    const-string v4, "mAms\n"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v4, "Delta: u="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-wide/16 v32, 0x3e8

    div-long v32, v6, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 133
    const-string v4, " s="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-wide/16 v32, 0x3e8

    div-long v32, v8, v32

    move-wide/from16 v0, v32

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 135
    const-string v4, " p="

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v32, 0x3e8

    div-long v32, v10, v32

    move-wide/from16 v0, v32

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v32, "mAms"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v4, "KernelUidCpuTimeReader"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-wide/16 v6, 0x0

    .line 139
    const-wide/16 v8, 0x0

    .line 140
    const-wide/16 v10, 0x0

    .line 144
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v24    # "timeDiffUs":J
    :cond_2
    const-wide/16 v32, 0x0

    cmp-long v4, v6, v32

    if-nez v4, :cond_3

    const-wide/16 v32, 0x0

    cmp-long v4, v8, v32

    if-nez v4, :cond_3

    const-wide/16 v32, 0x0

    cmp-long v4, v10, v32

    if-eqz v4, :cond_4

    :cond_3
    move-object/from16 v4, p1

    .line 145
    invoke-interface/range {v4 .. v11}, Lcom/android/internal/os/KernelUidCpuTimeReader$Callback;->onUidCpuTime(IJJJ)V

    .line 149
    .end local v6    # "userTimeDeltaUs":J
    .end local v8    # "systemTimeDeltaUs":J
    .end local v10    # "powerDeltaMaUs":J
    .end local v13    # "index":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v28

    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v22

    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v5, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 74
    .end local v5    # "uid":I
    .end local v18    # "powerMaUs":J
    .end local v21    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v22    # "systemTimeUs":J
    .end local v27    # "uidStr":Ljava/lang/String;
    .end local v28    # "userTimeUs":J
    :catch_0
    move-exception v4

    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :catchall_0
    move-exception v31

    move-object/from16 v36, v31

    move-object/from16 v31, v4

    move-object/from16 v4, v36

    :goto_3
    if-eqz v15, :cond_5

    if-eqz v31, :cond_b

    :try_start_3
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_5
    :goto_4
    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_4

    .end local v15    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v12

    .line 154
    .local v12, "e":Ljava/io/IOException;
    const-string v4, "KernelUidCpuTimeReader"

    const-string v31, "Failed to read uid_cputime"

    move-object/from16 v0, v31

    invoke-static {v4, v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v12    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastTimeReadUs:J

    .line 169
    return-void

    .line 87
    .restart local v5    # "uid":I
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v21    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .restart local v22    # "systemTimeUs":J
    .restart local v27    # "uidStr":Ljava/lang/String;
    .restart local v28    # "userTimeUs":J
    :cond_7
    :try_start_5
    const-string v4, "KernelUidCpuTimeReader"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Read uid_cputime has system time format exception when split line:"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v5}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v26

    .line 89
    .local v26, "uIdIndex":I
    if-ltz v26, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/util/SparseLongArray;->valueAt(I)J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-wide v22

    goto/16 :goto_1

    .line 98
    .end local v26    # "uIdIndex":I
    :cond_8
    const-wide/16 v18, 0x0

    .restart local v18    # "powerMaUs":J
    goto/16 :goto_2

    .line 153
    .end local v5    # "uid":I
    .end local v18    # "powerMaUs":J
    .end local v22    # "systemTimeUs":J
    .end local v27    # "uidStr":Ljava/lang/String;
    .end local v28    # "userTimeUs":J
    :cond_9
    if-eqz v15, :cond_6

    if-eqz v31, :cond_a

    :try_start_6
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_5

    :catch_2
    move-exception v30

    .local v30, "x2":Ljava/lang/Throwable;
    :try_start_7
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    .line 156
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v21    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v30    # "x2":Ljava/lang/Throwable;
    :catch_3
    move-exception v12

    .line 158
    .local v12, "e":Ljava/lang/NumberFormatException;
    const-string v4, "KernelUidCpuTimeReader"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "read uid_cputime has NumberFormatException, line:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v4, "KernelUidCpuTimeReader"

    const-string v31, "Failed to read uid_cputime"

    move-object/from16 v0, v31

    invoke-static {v4, v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 153
    .end local v12    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    .restart local v21    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_a
    :try_start_8
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_5

    .line 163
    .end local v15    # "reader":Ljava/io/BufferedReader;
    .end local v21    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    :catch_4
    move-exception v12

    .line 164
    .local v12, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const-string v4, "KernelUidCpuTimeReader"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "read uid_cputime has StringIndexOutOfBoundsException, line:"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v4, "KernelUidCpuTimeReader"

    const-string v31, "Failed to read uid_cputime"

    move-object/from16 v0, v31

    invoke-static {v4, v0, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 153
    .end local v12    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v30

    .restart local v30    # "x2":Ljava/lang/Throwable;
    :try_start_9
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .end local v30    # "x2":Ljava/lang/Throwable;
    :cond_b
    invoke-virtual {v15}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_4

    :catchall_1
    move-exception v4

    goto/16 :goto_3
.end method

.method public removeUid(I)V
    .locals 8
    .param p1, "uid"    # I

    .prologue
    .line 176
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v1

    .line 177
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 178
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastUserTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 179
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastSystemTimeUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 180
    iget-object v4, p0, Lcom/android/internal/os/KernelUidCpuTimeReader;->mLastPowerMaUs:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 183
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/proc/uid_cputime/remove_uid_range"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .local v2, "writer":Ljava/io/FileWriter;
    const/4 v5, 0x0

    .line 184
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    if-eqz v2, :cond_1

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 189
    .end local v2    # "writer":Ljava/io/FileWriter;
    :cond_1
    :goto_0
    return-void

    .line 186
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v3

    .local v3, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v2    # "writer":Ljava/io/FileWriter;
    .end local v3    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "KernelUidCpuTimeReader"

    const-string v5, "failed to remove uid from uid_cputime module"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 186
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "writer":Ljava/io/FileWriter;
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 183
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 186
    :catchall_0
    move-exception v5

    move-object v7, v5

    move-object v5, v4

    move-object v4, v7

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v5, :cond_4

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v4

    :catch_3
    move-exception v3

    .restart local v3    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .end local v3    # "x2":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v4

    goto :goto_1
.end method
