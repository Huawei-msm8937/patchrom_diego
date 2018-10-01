.class public Lcom/android/server/usage/UnixCalendar;
.super Ljava/lang/Object;
.source "UnixCalendar.java"


# static fields
.field private static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final MONTH_IN_MILLIS:J = 0x9a7ec800L

.field private static final WEEK_IN_MILLIS:J = 0x240c8400L

.field private static final YEAR_IN_MILLIS:J = 0x757b12c00L


# instance fields
.field private mTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 36
    return-void
.end method

.method public static truncateTo(Lcom/android/server/usage/UnixCalendar;I)V
    .locals 3
    .param p0, "calendar"    # Lcom/android/server/usage/UnixCalendar;
    .param p1, "intervalType"    # I

    .prologue
    .line 83
    packed-switch p1, :pswitch_data_0

    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t truncate date to interval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->truncateToYear()V

    .line 104
    :goto_0
    return-void

    .line 89
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->truncateToMonth()V

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->truncateToWeek()V

    goto :goto_0

    .line 97
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->truncateToDay()V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addDays(I)V
    .locals 6
    .param p1, "val"    # I

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    int-to-long v2, p1

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 60
    return-void
.end method

.method public addMonths(I)V
    .locals 6
    .param p1, "val"    # I

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    int-to-long v2, p1

    const-wide v4, 0x9a7ec800L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 68
    return-void
.end method

.method public addWeeks(I)V
    .locals 6
    .param p1, "val"    # I

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    int-to-long v2, p1

    const-wide/32 v4, 0x240c8400

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 64
    return-void
.end method

.method public addYears(I)V
    .locals 6
    .param p1, "val"    # I

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    int-to-long v2, p1

    const-wide v4, 0x757b12c00L

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 72
    return-void
.end method

.method public getTimeInMillis()J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    return-wide v0
.end method

.method public setTimeInMillis(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 76
    return-void
.end method

.method public truncateToDay()V
    .locals 6

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 41
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    iget-wide v2, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    const-wide/32 v4, 0x5265c00

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 42
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 44
    return-void
.end method

.method public truncateToMonth()V
    .locals 6

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    iget-wide v2, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    const-wide v4, 0x9a7ec800L

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 52
    return-void
.end method

.method public truncateToWeek()V
    .locals 6

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    iget-wide v2, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    const-wide/32 v4, 0x240c8400

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 48
    return-void
.end method

.method public truncateToYear()V
    .locals 6

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    iget-wide v2, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    const-wide v4, 0x757b12c00L

    rem-long/2addr v2, v4

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/UnixCalendar;->mTime:J

    .line 56
    return-void
.end method
