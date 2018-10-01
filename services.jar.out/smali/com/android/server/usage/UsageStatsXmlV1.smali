.class final Lcom/android/server/usage/UsageStatsXmlV1;
.super Ljava/lang/Object;
.source "UsageStatsXmlV1.java"


# static fields
.field private static final ACTIVE_ATTR:Ljava/lang/String; = "active"

.field private static final BEGIN_IDLE_TIME_ATTR:Ljava/lang/String; = "beginIdleTime"

.field private static final CLASS_ATTR:Ljava/lang/String; = "class"

.field private static final CONFIGURATIONS_TAG:Ljava/lang/String; = "configurations"

.field private static final CONFIG_TAG:Ljava/lang/String; = "config"

.field private static final COUNT_ATTR:Ljava/lang/String; = "count"

.field private static final END_TIME_ATTR:Ljava/lang/String; = "endTime"

.field private static final EVENT_LOG_TAG:Ljava/lang/String; = "event-log"

.field private static final EVENT_TAG:Ljava/lang/String; = "event"

.field private static final LAND_TIME_ACTIVE_ATTR:Ljava/lang/String; = "landTimeActive"

.field private static final LAST_EVENT_ATTR:Ljava/lang/String; = "lastEvent"

.field private static final LAST_LAND_TIME_ACTIVE_ATTR:Ljava/lang/String; = "lastLandTimeActive"

.field private static final LAST_TIME_ACTIVE_ATTR:Ljava/lang/String; = "lastTimeActive"

.field private static final LAST_TIME_ACTIVE_SYSTEM_ATTR:Ljava/lang/String; = "lastTimeActiveSystem"

.field private static final LAUNCH_COUNT_ATTR:Ljava/lang/String; = "launchCount"

.field private static final PACKAGES_TAG:Ljava/lang/String; = "packages"

.field private static final PACKAGE_ATTR:Ljava/lang/String; = "package"

.field private static final PACKAGE_TAG:Ljava/lang/String; = "package"

.field private static final TIME_ATTR:Ljava/lang/String; = "time"

.field private static final TOTAL_TIME_ACTIVE_ATTR:Ljava/lang/String; = "timeActive"

.field private static final TYPE_ATTR:Ljava/lang/String; = "type"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    return-void
.end method

.method private static loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 6
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 112
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {p0, v0}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 114
    invoke-virtual {p1, v0}, Lcom/android/server/usage/IntervalStats;->getOrCreateConfigurationStats(Landroid/content/res/Configuration;)Landroid/app/usage/ConfigurationStats;

    move-result-object v1

    .line 117
    .local v1, "configStats":Landroid/app/usage/ConfigurationStats;
    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v4, "lastTimeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    .line 120
    const-string v2, "timeActive"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    .line 121
    const-string v2, "count"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    .line 122
    const-string v2, "active"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    iget-object v2, v1, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v2, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 125
    :cond_0
    return-void
.end method

.method private static loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 8
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    const-string v3, "package"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "packageName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 131
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "no package attribute present"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :cond_0
    const-string v3, "class"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "className":Ljava/lang/String;
    invoke-virtual {p1, v2, v0}, Lcom/android/server/usage/IntervalStats;->buildEvent(Ljava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    .line 139
    .local v1, "event":Landroid/app/usage/UsageEvents$Event;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v3, "time"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 141
    const-string v3, "type"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    .line 142
    iget v3, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 143
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 144
    iget-object v3, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v3}, Landroid/content/res/Configuration;->readXmlAttrs(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Configuration;)V

    .line 147
    :cond_1
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-nez v3, :cond_2

    .line 148
    new-instance v3, Landroid/app/usage/TimeSparseArray;

    invoke-direct {v3}, Landroid/app/usage/TimeSparseArray;-><init>()V

    iput-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    .line 150
    :cond_2
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    iget-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v3, v4, v5, v1}, Landroid/app/usage/TimeSparseArray;->put(JLjava/lang/Object;)V

    .line 151
    return-void
.end method

.method private static loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 73
    const-string v4, "package"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 75
    new-instance v4, Ljava/net/ProtocolException;

    const-string v5, "no package attribute present"

    invoke-direct {v4, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 78
    :cond_0
    invoke-virtual {p1, v2}, Lcom/android/server/usage/IntervalStats;->getOrCreateUsageStats(Ljava/lang/String;)Landroid/app/usage/UsageStats;

    move-result-object v3

    .line 81
    .local v3, "stats":Landroid/app/usage/UsageStats;
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v6, "lastTimeActive"

    invoke-static {p0, v6}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    .line 84
    const-string v4, "lastTimeActiveSystem"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, "lastTimeUsedSystem":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    iget-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    .line 93
    :goto_0
    const-string v4, "beginIdleTime"

    invoke-interface {p0, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "beginIdleTime":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    .line 97
    :cond_1
    const-string v4, "timeActive"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 98
    const-string v4, "lastEvent"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/app/usage/UsageStats;->mLastEvent:I

    .line 100
    const-string v4, "launchCount"

    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/app/usage/UsageStats;->mLaunchCount:I

    .line 103
    const-string v4, "landTimeActive"

    invoke-static {p0, v4, v10, v11}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLandTimeInForeground:J

    .line 104
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v6, "lastLandTimeActive"

    invoke-static {p0, v6, v10, v11}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastLandTimeUsed:J

    .line 107
    return-void

    .line 90
    .end local v0    # "beginIdleTime":Ljava/lang/String;
    :cond_2
    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    goto :goto_0
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V
    .locals 10
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "statsOut"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 229
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 230
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 231
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 233
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-eqz v3, :cond_0

    .line 234
    iget-object v3, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v3}, Landroid/app/usage/TimeSparseArray;->clear()V

    .line 237
    :cond_0
    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-string v3, "endTime"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 240
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 242
    .local v1, "outerDepth":I
    :cond_1
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, "eventCode":I
    if-eq v0, v4, :cond_4

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 243
    :cond_2
    if-ne v0, v5, :cond_1

    .line 247
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "tag":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 250
    :pswitch_0
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadUsageStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_0

    .line 248
    :sswitch_0
    const-string v6, "package"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "config"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    goto :goto_1

    :sswitch_2
    const-string v6, "event"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    goto :goto_1

    .line 254
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadConfigStats(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_0

    .line 258
    :pswitch_2
    invoke-static {p0, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->loadEvent(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    goto :goto_0

    .line 262
    .end local v2    # "tag":Ljava/lang/String;
    :cond_4
    return-void

    .line 248
    nop

    :sswitch_data_0
    .sparse-switch
        -0x50c07cbe -> :sswitch_1
        -0x301acbba -> :sswitch_0
        0x5c6729a -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static write(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;)V
    .locals 11
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 273
    const-string v5, "endTime"

    iget-wide v6, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iget-wide v8, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v6, v8

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 275
    const-string v5, "packages"

    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 277
    .local v4, "statsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 278
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    invoke-static {p0, p1, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_0
    const-string v5, "packages"

    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    const-string v5, "configurations"

    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 285
    .local v1, "configCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    .line 286
    iget-object v6, p1, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/Configuration;

    invoke-virtual {v6, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 287
    .local v0, "active":Z
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/ConfigurationStats;

    invoke-static {p0, p1, v5, v0}, Lcom/android/server/usage/UsageStatsXmlV1;->writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 289
    .end local v0    # "active":Z
    :cond_1
    const-string v5, "configurations"

    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    const-string v5, "event-log"

    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    if-eqz v5, :cond_2

    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v5}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v2

    .line 293
    .local v2, "eventCount":I
    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    .line 294
    iget-object v5, p1, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/TimeSparseArray;

    invoke-virtual {v5, v3}, Landroid/app/usage/TimeSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageEvents$Event;

    invoke-static {p0, p1, v5}, Lcom/android/server/usage/UsageStatsXmlV1;->writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V

    .line 293
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 292
    .end local v2    # "eventCount":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 296
    .restart local v2    # "eventCount":I
    :cond_3
    const-string v5, "event-log"

    invoke-interface {p0, v10, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    return-void
.end method

.method private static writeConfigStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/ConfigurationStats;Z)V
    .locals 7
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "configStats"    # Landroid/app/usage/ConfigurationStats;
    .param p3, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 181
    const-string v0, "config"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const-string v0, "lastTimeActive"

    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 187
    const-string v0, "timeActive"

    iget-wide v2, p2, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 188
    const-string v0, "count"

    iget v1, p2, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 189
    if-eqz p3, :cond_0

    .line 190
    const-string v0, "active"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 194
    :cond_0
    iget-object v0, p2, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    .line 196
    const-string v0, "config"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    return-void
.end method

.method private static writeEvent(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageEvents$Event;)V
    .locals 7
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "event"    # Landroid/app/usage/UsageEvents$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 201
    const-string v0, "event"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 204
    const-string v0, "time"

    iget-wide v2, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 206
    const-string v0, "package"

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "class"

    iget-object v1, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    const-string v0, "type"

    iget v1, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 212
    iget v0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {p0, v0}, Landroid/content/res/Configuration;->writeXmlAttrs(Lorg/xmlpull/v1/XmlSerializer;Landroid/content/res/Configuration;)V

    .line 217
    :cond_1
    const-string v0, "event"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    return-void
.end method

.method private static writeUsageStats(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/usage/IntervalStats;Landroid/app/usage/UsageStats;)V
    .locals 7
    .param p0, "xml"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p2, "usageStats"    # Landroid/app/usage/UsageStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 155
    const-string v0, "package"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const-string v0, "lastTimeActive"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 160
    const-string v0, "lastTimeActiveSystem"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastTimeSystemUsed:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 163
    const-string v0, "package"

    iget-object v1, p2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "timeActive"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 165
    const-string v0, "lastEvent"

    iget v1, p2, Landroid/app/usage/UsageStats;->mLastEvent:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 167
    const-string v0, "launchCount"

    iget v1, p2, Landroid/app/usage/UsageStats;->mLaunchCount:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 169
    const-string v0, "beginIdleTime"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mBeginIdleTime:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 171
    const-string v0, "landTimeActive"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLandTimeInForeground:J

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 172
    const-string v0, "lastLandTimeActive"

    iget-wide v2, p2, Landroid/app/usage/UsageStats;->mLastLandTimeUsed:J

    iget-wide v4, p1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sub-long/2addr v2, v4

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 176
    const-string v0, "package"

    invoke-interface {p0, v6, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    return-void
.end method
