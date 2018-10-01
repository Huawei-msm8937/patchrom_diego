.class Lcom/android/server/usage/IntervalStats;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# instance fields
.field public activeConfiguration:Landroid/content/res/Configuration;

.field public beginTime:J

.field public final configurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/res/Configuration;",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field public endTime:J

.field public events:Landroid/app/usage/TimeSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/usage/TimeSparseArray",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation
.end field

.field public lastTimeSaved:J

.field private final mStringCache:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private packageInForeground:Ljava/lang/String;

.field public final packageStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    return-void
.end method

.method private getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 197
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 201
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->mStringCache:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object p1, v1

    goto :goto_0
.end method

.method private isLandscape(Landroid/content/res/Configuration;)Z
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStatefulEvent(I)Z
    .locals 1
    .param p1, "eventType"    # I

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 80
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 81
    .local v0, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 82
    if-eqz p2, :cond_0

    .line 83
    invoke-direct {p0, p2}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    .line 85
    :cond_0
    return-object v0
.end method

.method getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 65
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 66
    .local v0, "configStats":Landroid/app/usage/ConfigurationStats;
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/app/usage/ConfigurationStats;

    .end local v0    # "configStats":Landroid/app/usage/ConfigurationStats;
    invoke-direct {v0}, Landroid/app/usage/ConfigurationStats;-><init>()V

    .line 68
    .restart local v0    # "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mBeginTimeStamp:J

    .line 69
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v2, v0, Landroid/app/usage/ConfigurationStats;->mEndTimeStamp:J

    .line 70
    iput-object p1, v0, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    .line 71
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    return-object v0
.end method

.method getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 49
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/app/usage/UsageStats;

    .end local v0    # "usageStats":Landroid/app/usage/UsageStats;
    invoke-direct {v0}, Landroid/app/usage/UsageStats;-><init>()V

    .line 51
    .restart local v0    # "usageStats":Landroid/app/usage/UsageStats;
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->getCachedStringRef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    .line 52
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mBeginTimeStamp:J

    .line 53
    iget-wide v2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 54
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    .line 55
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    iget-object v2, v0, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    return-object v0
.end method

.method update(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J
    .param p4, "eventType"    # I

    .prologue
    const/4 v6, 0x1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .line 104
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    const/4 v1, 0x2

    if-eq p4, v1, :cond_0

    const/4 v1, 0x3

    if-ne p4, v1, :cond_2

    .line 106
    :cond_0
    iget v1, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    if-eq v1, v6, :cond_1

    iget v1, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 108
    :cond_1
    iget-wide v2, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 111
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iget-wide v2, v0, Landroid/app/usage/UsageStats;->mLandTimeInForeground:J

    iget-wide v4, v0, Landroid/app/usage/UsageStats;->mLastLandTimeUsed:J

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroid/app/usage/UsageStats;->mLandTimeInForeground:J

    .line 118
    :cond_2
    invoke-direct {p0, p4}, Lcom/android/server/usage/IntervalStats;->isStatefulEvent(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 119
    iput p4, v0, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 122
    :cond_3
    const/4 v1, 0x6

    if-eq p4, v1, :cond_4

    .line 123
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 126
    iput-object p1, p0, Lcom/android/server/usage/IntervalStats;->packageInForeground:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1}, Lcom/android/server/usage/IntervalStats;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastLandTimeUsed:J

    .line 132
    :cond_4
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    .line 133
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mEndTimeStamp:J

    .line 135
    if-ne p4, v6, :cond_5

    .line 136
    iget v1, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 139
    :cond_5
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 140
    return-void
.end method

.method updateBeginIdleTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeStamp"    # J

    .prologue
    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .line 156
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    .line 157
    return-void
.end method

.method updateConfigurationStats(Landroid/content/res/Configuration;J)V
    .locals 8
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "timeStamp"    # J

    .prologue
    .line 165
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/ConfigurationStats;

    .line 167
    .local v0, "activeStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v4, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    iget-wide v6, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 168
    const-wide/16 v4, 0x1

    sub-long v4, p2, v4

    iput-wide v4, v0, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 172
    .end local v0    # "activeStats":Landroid/app/usage/ConfigurationStats;
    :cond_0
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->packageInForeground:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_3

    .line 174
    iget-object v3, p0, Lcom/android/server/usage/IntervalStats;->packageInForeground:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v2

    .line 175
    .local v2, "usageStats":Landroid/app/usage/UsageStats;
    iget v3, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    iget v3, v2, Landroid/app/usage/UsageStats;->mLastEvent:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 177
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/usage/IntervalStats;->isLandscape(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 178
    iget-wide v4, v2, Landroid/app/usage/UsageStats;->mLandTimeInForeground:J

    iget-wide v6, v2, Landroid/app/usage/UsageStats;->mLastLandTimeUsed:J

    sub-long v6, p2, v6

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroid/app/usage/UsageStats;->mLandTimeInForeground:J

    .line 180
    :cond_2
    iput-wide p2, v2, Landroid/app/usage/UsageStats;->mLastLandTimeUsed:J

    .line 185
    .end local v2    # "usageStats":Landroid/app/usage/UsageStats;
    :cond_3
    if-eqz p1, :cond_4

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .line 187
    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iput-wide p2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 188
    iget v3, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 189
    iget-object v3, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v3, p0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 192
    .end local v1    # "configStats":Landroid/app/usage/ConfigurationStats;
    :cond_4
    iput-wide p2, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 193
    return-void
.end method

.method updateSystemLastUsedTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastUsedTime"    # J

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v0

    .line 161
    .local v0, "usageStats":Landroid/app/usage/UsageStats;
    iput-wide p2, v0, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    .line 162
    return-void
.end method
