.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_NEEDS_REBUILD:Ljava/lang/String; = "android.rebuild"

.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.bigView"

.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.contentView"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field private static final EXTRA_REBUILD_CONTEXT_APPLICATION_INFO:Ljava/lang/String; = "android.rebuild.applicationInfo"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW:Ljava/lang/String; = "android.rebuild.hudView"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field public static final EXTRA_REBUILD_LARGE_ICON:Ljava/lang/String; = "android.rebuild.largeIcon"

.field private static final LARGE_TEXT_SCALE:F = 1.3f

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final STRIP_AND_REBUILD:Z


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioStreamType:I

.field private mCategory:Ljava/lang/String;

.field private mColor:I

.field private final mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mCust:Landroid/app/HwCustNotification;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExtras:Landroid/os/Bundle;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mGroupKey:Ljava/lang/String;

.field private mHasThreeLines:Z

.field private mLargeIcon:Landroid/graphics/drawable/Icon;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mOriginatingUserId:I

.field private mPeople:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPriority:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mPublicVersion:Landroid/app/Notification;

.field private mRebuildBundle:Landroid/os/Bundle;

.field private mRebuildNotification:Landroid/app/Notification;

.field private mShowWhen:Z

.field private mSmallIcon:Landroid/graphics/drawable/Icon;

.field private mSmallIconLevel:I

.field private mSortKey:Ljava/lang/String;

.field private mSound:Landroid/net/Uri;

.field private mStyle:Landroid/app/Notification$Style;

.field private mSubText:Ljava/lang/CharSequence;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mUseChronometer:Z

.field private mVibrate:[J

.field private mVisibility:I

.field private mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 2163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2106
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 2109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 2110
    iput v4, p0, Landroid/app/Notification$Builder;->mVisibility:I

    .line 2111
    iput-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 2114
    iput v4, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 2124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    .line 2129
    iput-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    .line 2141
    const-class v0, Landroid/app/HwCustNotification;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/HwCustNotification;

    iput-object v0, p0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    .line 2173
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 2176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 2177
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 2178
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 2179
    iput v4, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 2180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    .line 2182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 2184
    return-void

    :cond_0
    move-object v0, v1

    .line 2182
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "n"    # Landroid/app/Notification;

    .prologue
    .line 2192
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 2193
    iput-object p2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    .line 2194
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->restoreFromNotification(Landroid/app/Notification;)V

    .line 2196
    const/4 v3, 0x0

    .line 2197
    .local v3, "style":Landroid/app/Notification$Style;
    iget-object v2, p2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 2198
    .local v2, "extras":Landroid/os/Bundle;
    const-string v7, "android.template"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2199
    .local v6, "templateClass":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2200
    invoke-static {v6}, Landroid/app/Notification$Builder;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 2201
    .local v4, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v4, :cond_1

    .line 2202
    const-string v7, "Notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown style class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    .end local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_0
    :goto_0
    return-void

    .line 2207
    .restart local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    const/4 v7, 0x0

    :try_start_0
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2208
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 2209
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/Notification$Style;

    move-object v3, v0

    .line 2210
    invoke-virtual {v3, v2}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 2216
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    .end local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_2
    if-eqz v3, :cond_0

    .line 2217
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 2211
    .restart local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :catch_0
    move-exception v5

    .line 2212
    .local v5, "t":Ljava/lang/Throwable;
    const-string v7, "Notification"

    const-string v8, "Could not create Style"

    invoke-static {v7, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    iget-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 2015
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/app/Notification$Builder;)Landroid/graphics/drawable/Icon;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2015
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 2015
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Landroid/widget/RemoteViews;
    .param p2, "x2"    # I

    .prologue
    .line 2015
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Landroid/app/Notification;
    .param p2, "x2"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2015
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/app/Notification$Builder;)Landroid/app/HwCustNotification;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    iget-object v0, p0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2015
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/app/Notification$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Landroid/app/Notification;
    .param p2, "x2"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2015
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/app/Notification$Builder;IZ)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 2015
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Landroid/app/Notification$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Landroid/app/Notification$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    return v0
.end method

.method static synthetic access$302(Landroid/app/Notification$Builder;I)I
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I

    .prologue
    .line 2015
    iput p1, p0, Landroid/app/Notification$Builder;->mFlags:I

    return p1
.end method

.method static synthetic access$800(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .prologue
    .line 2015
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$802(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 2015
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$900(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I

    .prologue
    .line 2015
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private addProfileBadge(Landroid/widget/RemoteViews;I)Z
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "resId"    # I

    .prologue
    const v4, 0x1020376

    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 2910
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2912
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    const v2, 0x1020363

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2913
    const v2, 0x1020373

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2914
    invoke-virtual {p1, v4, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2916
    if-eqz v0, :cond_1

    .line 2917
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 2918
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2922
    if-ne p2, v4, :cond_0

    .line 2923
    const v2, 0x1020374

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2925
    :cond_0
    const/4 v1, 0x1

    .line 2927
    :cond_1
    return v1
.end method

.method private applyStandardTemplate(I)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 2980
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZ)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(IZ)Landroid/widget/RemoteViews;
    .locals 18
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z

    .prologue
    .line 2987
    new-instance v5, Landroid/app/Notification$BuilderRemoteViews;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    move/from16 v0, p1

    invoke-direct {v5, v10, v0}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 2989
    .local v5, "contentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 2991
    const/4 v8, 0x0

    .line 2992
    .local v8, "showLine3":Z
    const/4 v7, 0x0

    .line 2993
    .local v7, "showLine2":Z
    const/4 v4, 0x0

    .line 2995
    .local v4, "contentTextInLine2":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v10, :cond_5

    .line 2996
    const v10, 0x1020006

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 3000
    const v10, 0x1020040

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 3002
    const v10, 0x1020040

    const/16 v11, 0x8

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3004
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Landroid/app/Notification$Builder;->processSmallRightIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 3012
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v10, :cond_0

    .line 3013
    const v10, 0x1020016

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3015
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1

    .line 3017
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/app/HwCustNotification;->isInvertColorRequired(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3018
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v13, 0x1020075

    invoke-virtual {v10, v11, v12, v13, v5}, Landroid/app/HwCustNotification;->setCustomizedInvertColorText(Ljava/lang/CharSequence;Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    .line 3023
    :goto_1
    const/4 v8, 0x1

    .line 3025
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v10, :cond_7

    .line 3026
    const v10, 0x1020375

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3027
    const v10, 0x1020375

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3028
    const/4 v8, 0x1

    .line 3047
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_c

    .line 3048
    const v10, 0x1020075

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3049
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_b

    .line 3051
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Landroid/app/HwCustNotification;->isInvertColorRequired(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3052
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v13, 0x1020015

    invoke-virtual {v10, v11, v12, v13, v5}, Landroid/app/HwCustNotification;->setCustomizedInvertColorText(Ljava/lang/CharSequence;Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    .line 3057
    :goto_3
    const v10, 0x1020015

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3058
    const/4 v7, 0x1

    .line 3059
    const/4 v4, 0x1

    .line 3082
    :goto_4
    if-eqz v7, :cond_2

    .line 3085
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V

    .line 3088
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3089
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    if-eqz v10, :cond_3

    .line 3090
    const v10, 0x1020371

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3091
    const v10, 0x1020371

    const-string/jumbo v11, "setBase"

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v14, v14, v16

    add-long/2addr v12, v14

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 3093
    const v10, 0x1020371

    const-string/jumbo v11, "setStarted"

    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 3109
    :cond_3
    if-eqz v4, :cond_10

    const v10, 0x1020373

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z

    move-result v2

    .line 3112
    .local v2, "addedBadge":Z
    if-eqz v2, :cond_4

    if-nez v4, :cond_4

    .line 3113
    const/4 v8, 0x1

    .line 3117
    :cond_4
    const v11, 0x1020374

    if-eqz v8, :cond_11

    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v5, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3118
    const v11, 0x1020367

    if-eqz v8, :cond_12

    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v5, v11, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3119
    return-object v5

    .line 3006
    .end local v2    # "addedBadge":Z
    :cond_5
    const v10, 0x1020006

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 3007
    const v10, 0x1020006

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_0

    .line 3020
    :cond_6
    const v10, 0x1020075

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 3029
    :cond_7
    move-object/from16 v0, p0

    iget v10, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v10, :cond_9

    .line 3030
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x10e0003

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 3032
    .local v9, "tooBig":I
    move-object/from16 v0, p0

    iget v10, v0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v10, v9, :cond_8

    .line 3033
    const v10, 0x1020375

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1040017

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3040
    :goto_8
    const v10, 0x1020375

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3041
    const/4 v8, 0x1

    .line 3042
    goto/16 :goto_2

    .line 3037
    :cond_8
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v6

    .line 3038
    .local v6, "f":Ljava/text/NumberFormat;
    const v10, 0x1020375

    move-object/from16 v0, p0

    iget v11, v0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v12, v11

    invoke-virtual {v6, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    .line 3043
    .end local v6    # "f":Ljava/text/NumberFormat;
    .end local v9    # "tooBig":I
    :cond_9
    const v10, 0x1020375

    const/16 v11, 0x8

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_2

    .line 3054
    :cond_a
    const v10, 0x1020015

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3061
    :cond_b
    const v10, 0x1020015

    const/16 v11, 0x8

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 3064
    :cond_c
    const v10, 0x1020015

    const/16 v11, 0x8

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3065
    if-eqz p2, :cond_f

    move-object/from16 v0, p0

    iget v10, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v10, :cond_f

    .line 3066
    :cond_d
    const v10, 0x102000d

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3067
    const v10, 0x102000d

    move-object/from16 v0, p0

    iget v11, v0, Landroid/app/Notification$Builder;->mProgressMax:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/app/Notification$Builder;->mProgress:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {v5, v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 3069
    const v10, 0x102000d

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v12, 0x1060053

    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-static {v11}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 3072
    move-object/from16 v0, p0

    iget v10, v0, Landroid/app/Notification$Builder;->mColor:I

    if-eqz v10, :cond_e

    .line 3073
    move-object/from16 v0, p0

    iget v10, v0, Landroid/app/Notification$Builder;->mColor:I

    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 3074
    .local v3, "colorStateList":Landroid/content/res/ColorStateList;
    const v10, 0x102000d

    invoke-virtual {v5, v10, v3}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 3075
    const v10, 0x102000d

    invoke-virtual {v5, v10, v3}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 3077
    .end local v3    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_4

    .line 3079
    :cond_f
    const v10, 0x102000d

    const/16 v11, 0x8

    invoke-virtual {v5, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4

    .line 3109
    :cond_10
    const v10, 0x1020376

    goto/16 :goto_5

    .line 3117
    .restart local v2    # "addedBadge":Z
    :cond_11
    const/16 v10, 0x8

    goto/16 :goto_6

    .line 3118
    :cond_12
    const/16 v10, 0x8

    goto/16 :goto_7
.end method

.method private applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "layoutId"    # I

    .prologue
    const v5, 0x102035b

    .line 3176
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 3178
    .local v1, "big":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 3180
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3181
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 3182
    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3186
    const/4 v4, 0x3

    if-le v0, v4, :cond_0

    const/4 v0, 0x3

    .line 3187
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 3188
    iget-object v4, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification$Action;

    invoke-direct {p0, v4}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 3189
    .local v2, "button":Landroid/widget/RemoteViews;
    invoke-virtual {v1, v5, v2}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 3187
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3192
    .end local v2    # "button":Landroid/widget/RemoteViews;
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public static calculateTopPadding(Landroid/content/Context;ZF)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "hasThreeLines"    # Z
    .param p2, "fontScale"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 3155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_0

    const v3, 0x105005e

    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3158
    .local v2, "padding":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz p1, :cond_1

    const v3, 0x1050060

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3161
    .local v1, "largePadding":I
    const v3, 0x3fa66666    # 1.3f

    invoke-static {p2, v5, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    sub-float/2addr v3, v5

    const v4, 0x3e999998    # 0.29999995f

    div-float v0, v3, v4

    .line 3166
    .local v0, "largeFactor":F
    sub-float v3, v5, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3

    .line 3155
    .end local v0    # "largeFactor":F
    .end local v1    # "largePadding":I
    .end local v2    # "padding":I
    :cond_0
    const v3, 0x105005d

    goto :goto_0

    .line 3158
    .restart local v2    # "padding":I
    :cond_1
    const v3, 0x105005f

    goto :goto_1
.end method

.method private generateActionButton(Landroid/app/Notification$Action;)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    const v5, 0x102035c

    .line 3227
    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 3228
    .local v2, "tombstone":Z
    :goto_0
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v3

    :goto_1
    invoke-direct {v1, v4, v3}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 3231
    .local v1, "button":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 3235
    .local v0, "ai":Landroid/graphics/drawable/Icon;
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 3237
    iget-object v3, p0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    if-eqz v3, :cond_0

    .line 3238
    iget-object v3, p0, Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, v5}, Landroid/app/HwCustNotification;->setNotiActionButtonTextSize(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 3241
    :cond_0
    if-nez v2, :cond_1

    .line 3242
    iget-object v3, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 3244
    :cond_1
    iget-object v3, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 3245
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->processLegacyAction(Landroid/app/Notification$Action;Landroid/widget/RemoteViews;)V

    .line 3246
    return-object v1

    .line 3227
    .end local v0    # "ai":Landroid/graphics/drawable/Icon;
    .end local v1    # "button":Landroid/widget/RemoteViews;
    .end local v2    # "tombstone":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3228
    .restart local v2    # "tombstone":Z
    :cond_3
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v3

    goto :goto_1
.end method

.method private getActionLayoutResource()I
    .locals 1

    .prologue
    .line 3765
    const v0, 0x109007f

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    .prologue
    .line 3769
    const v0, 0x1090081

    return v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    .prologue
    .line 3745
    const v0, 0x1090084

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    .prologue
    .line 3749
    const v0, 0x1090085

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    .prologue
    .line 3753
    const v0, 0x1090088

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    .prologue
    .line 3757
    const v0, 0x1090089

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    .prologue
    .line 3761
    const v0, 0x109008a

    return v0
.end method

.method private static getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .param p0, "templateClass"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Notification$Style;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3592
    const/4 v5, 0x4

    new-array v1, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Notification$BigTextStyle;

    aput-object v6, v1, v5

    const/4 v5, 0x1

    const-class v6, Landroid/app/Notification$BigPictureStyle;

    aput-object v6, v1, v5

    const/4 v5, 0x2

    const-class v6, Landroid/app/Notification$InboxStyle;

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-class v6, Landroid/app/Notification$MediaStyle;

    aput-object v6, v1, v5

    .line 3594
    .local v1, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 3595
    .local v3, "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3599
    .end local v3    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :goto_1
    return-object v3

    .line 3594
    .restart local v3    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3599
    .end local v3    # "innerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2896
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2897
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 2898
    const/4 v1, 0x0

    .line 2906
    :goto_0
    return-object v1

    .line 2900
    :cond_0
    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050062

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2902
    .local v3, "size":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2903
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2904
    .local v2, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, v6, v6, v3, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2905
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 2891
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private hasThreeLines()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 3138
    iget-object v7, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    move v1, v5

    .line 3139
    .local v1, "contentTextInLine2":Z
    :goto_0
    iget-object v7, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v7}, Landroid/app/Notification$Style;->hasProgress()Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_0
    move v4, v5

    .line 3141
    .local v4, "hasProgress":Z
    :goto_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_6

    if-nez v1, :cond_6

    move v0, v5

    .line 3142
    .local v0, "badgeInLine3":Z
    :goto_2
    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-nez v7, :cond_1

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-nez v7, :cond_1

    iget v7, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-gtz v7, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    move v3, v5

    .line 3144
    .local v3, "hasLine3":Z
    :goto_3
    iget-object v7, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-nez v7, :cond_3

    :cond_2
    if-eqz v4, :cond_8

    iget-object v7, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    if-nez v7, :cond_8

    iget v7, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v7, :cond_3

    iget-boolean v7, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v7, :cond_8

    :cond_3
    move v2, v5

    .line 3147
    .local v2, "hasLine2":Z
    :goto_4
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    :goto_5
    return v5

    .end local v0    # "badgeInLine3":Z
    .end local v1    # "contentTextInLine2":Z
    .end local v2    # "hasLine2":Z
    .end local v3    # "hasLine3":Z
    .end local v4    # "hasProgress":Z
    :cond_4
    move v1, v6

    .line 3138
    goto :goto_0

    .restart local v1    # "contentTextInLine2":Z
    :cond_5
    move v4, v6

    .line 3139
    goto :goto_1

    .restart local v4    # "hasProgress":Z
    :cond_6
    move v0, v6

    .line 3141
    goto :goto_2

    .restart local v0    # "badgeInLine3":Z
    :cond_7
    move v3, v6

    .line 3142
    goto :goto_3

    .restart local v3    # "hasLine3":Z
    :cond_8
    move v2, v6

    .line 3144
    goto :goto_4

    .restart local v2    # "hasLine2":Z
    :cond_9
    move v5, v6

    .line 3147
    goto :goto_5
.end method

.method private isLegacy()Z
    .locals 1

    .prologue
    .line 3254
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3214
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3216
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3196
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 3197
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 3202
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplate(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3220
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3222
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 3207
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    .line 3208
    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 3210
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processLegacyAction(Landroid/app/Notification$Action;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "button"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3258
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3259
    :cond_0
    const v0, 0x102035c

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v3, 0x1060050

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawablesRelativeColorFilter(IIILandroid/graphics/PorterDuff$Mode;)V

    .line 3263
    :cond_1
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 3266
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3267
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3269
    .end local p1    # "charSequence":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method

.method private processSmallRightIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const v1, 0x1020040

    const/4 v3, -0x1

    .line 3331
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3332
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p2

    move v4, v3

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3336
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v7, v8

    .line 3339
    .local v7, "gray":Z
    :goto_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v7, :cond_2

    .line 3340
    :cond_1
    const-string/jumbo v0, "setBackgroundResource"

    const v2, 0x10804ec

    invoke-virtual {p2, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3344
    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p2

    move v2, v8

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 3352
    :cond_2
    return-void

    .end local v7    # "gray":Z
    :cond_3
    move v7, v2

    .line 3336
    goto :goto_0
.end method

.method private rebuild()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 3551
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    if-nez v1, :cond_0

    .line 3552
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "rebuild() only valid when in \'rebuild\' mode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3554
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasThreeLines()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3556
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    iget-object v0, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3558
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.rebuild.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3559
    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3561
    :cond_1
    const-string v1, "android.rebuild.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3563
    const-string v1, "android.rebuild.contentView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3564
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3565
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3566
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateContentView(Landroid/app/Notification;)V

    .line 3569
    :cond_2
    const-string v1, "android.rebuild.contentView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3571
    const-string v1, "android.rebuild.bigView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3572
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3573
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_3

    .line 3574
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateBigContentView(Landroid/app/Notification;)V

    .line 3577
    :cond_3
    const-string v1, "android.rebuild.bigView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3579
    const-string v1, "android.rebuild.hudView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3580
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3581
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_4

    .line 3582
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->populateHeadsUpContentView(Landroid/app/Notification;)V

    .line 3585
    :cond_4
    const-string v1, "android.rebuild.hudView"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3587
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3588
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildNotification:Landroid/app/Notification;

    return-object v1
.end method

.method public static rebuild(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3521
    iget-object v4, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3522
    .local v4, "extras":Landroid/os/Bundle;
    const-string v5, "android.rebuild"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3538
    .end local p1    # "n":Landroid/app/Notification;
    :goto_0
    return-object p1

    .line 3523
    .restart local p1    # "n":Landroid/app/Notification;
    :cond_0
    const-string v5, "android.rebuild"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3526
    const-string v5, "android.rebuild.applicationInfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3530
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v5, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 3537
    .local v2, "builderContext":Landroid/content/Context;
    :goto_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, v2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3538
    .local v1, "b":Landroid/app/Notification$Builder;
    invoke-direct {v1}, Landroid/app/Notification$Builder;->rebuild()Landroid/app/Notification;

    move-result-object p1

    goto :goto_0

    .line 3532
    .end local v1    # "b":Landroid/app/Notification$Builder;
    .end local v2    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v3

    .line 3533
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ApplicationInfo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3534
    move-object v2, p0

    .restart local v2    # "builderContext":Landroid/content/Context;
    goto :goto_1
.end method

.method private removeLargeIconBackground(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3324
    const v0, 0x1020006

    const-string/jumbo v1, "setBackgroundResource"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 3325
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v8, 0x0

    const v7, 0x1020040

    const v1, 0x1020006

    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 2957
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->removeLargeIconBackground(Landroid/widget/RemoteViews;)V

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 2958
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 2959
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2960
    const-string/jumbo v0, "setBackgroundResource"

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2961
    invoke-virtual {p1, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2962
    const-string/jumbo v0, "setBackgroundResource"

    invoke-virtual {p1, v7, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 2963
    invoke-virtual {p1, v7, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2964
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2965
    const v0, 0x1020016

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2966
    const v0, 0x1020075

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2967
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->unshrinkLine3Text(Landroid/widget/RemoteViews;)V

    .line 2968
    const v0, 0x1020015

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2969
    const v0, 0x1020015

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2970
    const v0, 0x1020375

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2971
    const v0, 0x102008c

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2972
    const v0, 0x1020374

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2973
    const v0, 0x1020367

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2974
    const v0, 0x102000d

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2975
    const v0, 0x1020371

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2976
    const v0, 0x102008c

    invoke-virtual {p1, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 2977
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "big"    # Landroid/widget/RemoteViews;

    .prologue
    const v2, 0x102035b

    const/16 v1, 0x8

    .line 3170
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3171
    const v0, 0x1020364

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 3172
    invoke-virtual {p1, v2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 3173
    return-void
.end method

.method private resolveColor()I
    .locals 2

    .prologue
    .line 3362
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    if-nez v0, :cond_0

    .line 3363
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    const v1, 0x106004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    .line 3365
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    goto :goto_0
.end method

.method private restoreFromNotification(Landroid/app/Notification;)V
    .locals 4
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3630
    iget-wide v2, p1, Landroid/app/Notification;->when:J

    iput-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 3631
    # getter for: Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;
    invoke-static {p1}, Landroid/app/Notification;->access$400(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 3632
    iget v1, p1, Landroid/app/Notification;->iconLevel:I

    iput v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 3633
    iget v1, p1, Landroid/app/Notification;->number:I

    iput v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 3635
    iget v1, p1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 3637
    iget-object v1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 3638
    iget-object v1, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 3639
    iget-object v1, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 3640
    iget-object v1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 3641
    iget-object v1, p1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 3642
    # getter for: Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;
    invoke-static {p1}, Landroid/app/Notification;->access$500(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3643
    iget-object v1, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 3644
    iget v1, p1, Landroid/app/Notification;->audioStreamType:I

    iput v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 3645
    iget-object v1, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 3647
    iget-object v1, p1, Landroid/app/Notification;->vibrate:[J

    iput-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 3648
    iget v1, p1, Landroid/app/Notification;->ledARGB:I

    iput v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 3649
    iget v1, p1, Landroid/app/Notification;->ledOnMS:I

    iput v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 3650
    iget v1, p1, Landroid/app/Notification;->ledOffMS:I

    iput v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 3651
    iget v1, p1, Landroid/app/Notification;->defaults:I

    iput v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 3652
    iget v1, p1, Landroid/app/Notification;->flags:I

    iput v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 3654
    iget-object v1, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    .line 3655
    # getter for: Landroid/app/Notification;->mGroupKey:Ljava/lang/String;
    invoke-static {p1}, Landroid/app/Notification;->access$600(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    .line 3656
    # getter for: Landroid/app/Notification;->mSortKey:Ljava/lang/String;
    invoke-static {p1}, Landroid/app/Notification;->access$700(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    .line 3657
    iget v1, p1, Landroid/app/Notification;->priority:I

    iput v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 3658
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3659
    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_0

    .line 3660
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3662
    :cond_0
    iget v1, p1, Landroid/app/Notification;->visibility:I

    iput v1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    .line 3664
    iget-object v1, p1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 3667
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 3668
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.originatingUserId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    .line 3669
    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 3670
    const-string v1, "android.text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 3671
    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 3672
    const-string v1, "android.infoText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 3673
    const-string v1, "android.progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 3674
    const-string v1, "android.progressMax"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 3675
    const-string v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 3676
    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    .line 3677
    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 3678
    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3679
    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    iput-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 3681
    :cond_1
    const-string v1, "android.people"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3682
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3683
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    const-string v2, "android.people"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3685
    :cond_2
    return-void
.end method

.method private sanitizeColor()I
    .locals 2

    .prologue
    .line 3355
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    if-eqz v0, :cond_0

    .line 3356
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 3358
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mColor:I

    return v0
.end method

.method private setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "bigContentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3611
    iput-object p2, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3612
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v0, :cond_0

    .line 3613
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    const-string v1, "android.rebuild.bigViewActionCount"

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3616
    :cond_0
    return-void
.end method

.method private setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3603
    iput-object p2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3604
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v0, :cond_0

    .line 3605
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    const-string v1, "android.rebuild.contentViewActionCount"

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3608
    :cond_0
    return-void
.end method

.method private setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "headsUpContentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 3620
    iput-object p2, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3621
    instance-of v0, p2, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v0, :cond_0

    .line 3622
    iget-object v0, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    const-string v1, "android.rebuild.hudViewActionCount"

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3625
    :cond_0
    return-void
.end method

.method private showsTimeOrChronometer()Z
    .locals 4

    .prologue
    .line 3127
    iget-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shrinkLine3Text(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2937
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2939
    .local v0, "subTextSize":F
    const v1, 0x1020075

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v0, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2941
    return-void
.end method

.method public static stripForDelivery(Landroid/app/Notification;)V
    .locals 0
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 3464
    return-void
.end method

.method private unshrinkLine3Text(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2950
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2952
    .local v0, "regularTextSize":F
    const v1, 0x1020075

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v0, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 2954
    return-void
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2793
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2794
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .prologue
    .line 2813
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2814
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2728
    if-eqz p1, :cond_0

    .line 2729
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 2730
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 2735
    :cond_0
    :goto_0
    return-object p0

    .line 2732
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 2671
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2672
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 3700
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    .line 3701
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 3703
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1

    .line 3704
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 3706
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    .line 3707
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasThreeLines()Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3709
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    move-result-object v0

    .line 3711
    .local v0, "n":Landroid/app/Notification;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_2

    .line 3712
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->purgeResources()V

    .line 3713
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v0

    .line 3716
    :cond_2
    iget-object v1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 3717
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3720
    :cond_3
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 3721
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3722
    iget-object v1, p0, Landroid/app/Notification$Builder;->mRebuildBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    .line 3725
    :cond_4
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->populateExtras(Landroid/os/Bundle;)V

    .line 3726
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_5

    .line 3727
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 3730
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Notification$Builder;->mHasThreeLines:Z

    .line 3731
    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 3740
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3741
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3373
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 3374
    .local v0, "n":Landroid/app/Notification;
    iget-wide v2, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 3375
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    # setter for: Landroid/app/Notification;->mSmallIcon:Landroid/graphics/drawable/Icon;
    invoke-static {v0, v1}, Landroid/app/Notification;->access$402(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3376
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3377
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3379
    :cond_0
    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    .line 3380
    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    .line 3382
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 3384
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3385
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3386
    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 3387
    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 3388
    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3389
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    .line 3390
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    # setter for: Landroid/app/Notification;->mLargeIcon:Landroid/graphics/drawable/Icon;
    invoke-static {v0, v1}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3391
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3392
    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 3394
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3395
    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 3396
    iget-object v1, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 3397
    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    .line 3398
    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    .line 3399
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    .line 3400
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    .line 3401
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 3402
    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3403
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3404
    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->setBuilderHeadsUpContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 3405
    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v1, :cond_3

    .line 3406
    :cond_2
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3408
    :cond_3
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    .line 3409
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3411
    :cond_4
    iget-object v1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    iput-object v1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 3412
    iget-object v1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    # setter for: Landroid/app/Notification;->mGroupKey:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/Notification;->access$602(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3413
    iget-object v1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    # setter for: Landroid/app/Notification;->mSortKey:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/app/Notification;->access$702(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3414
    iget v1, p0, Landroid/app/Notification$Builder;->mPriority:I

    iput v1, v0, Landroid/app/Notification;->priority:I

    .line 3415
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 3416
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 3417
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3419
    :cond_5
    iget v1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    iput v1, v0, Landroid/app/Notification;->visibility:I

    .line 3421
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    if-eqz v1, :cond_6

    .line 3422
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 3423
    iget-object v1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    iget-object v2, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v1, v2, v4}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 3426
    :cond_6
    return-object v0
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .prologue
    .line 2861
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 2862
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2766
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2767
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 2769
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3692
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public populateExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 3436
    const-string v0, "android.originatingUserId"

    iget v1, p0, Landroid/app/Notification$Builder;->mOriginatingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3437
    const-string v0, "android.rebuild.applicationInfo"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3439
    const-string v0, "android.title"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3440
    const-string v0, "android.text"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3441
    const-string v0, "android.subText"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3442
    const-string v0, "android.infoText"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3443
    const-string v0, "android.icon"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3444
    const-string v0, "android.progress"

    iget v1, p0, Landroid/app/Notification$Builder;->mProgress:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3445
    const-string v0, "android.progressMax"

    iget v1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3446
    const-string v0, "android.progressIndeterminate"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3447
    const-string v0, "android.showChronometer"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3448
    const-string v0, "android.showWhen"

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3449
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_0

    .line 3450
    const-string v0, "android.largeIcon"

    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3452
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3453
    const-string v1, "android.people"

    iget-object v0, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mPeople:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 3456
    :cond_1
    return-void
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 2599
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2600
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 2644
    iput-object p1, p0, Landroid/app/Notification$Builder;->mCategory:Ljava/lang/String;

    .line 2645
    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "argb"    # I

    .prologue
    .line 2884
    iput p1, p0, Landroid/app/Notification$Builder;->mColor:I

    .line 2885
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 2372
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    .line 2373
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "info"    # Ljava/lang/CharSequence;

    .prologue
    .line 2350
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    .line 2351
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2388
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    .line 2389
    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2319
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    .line 2320
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2311
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    .line 2312
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "defaults"    # I

    .prologue
    .line 2624
    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    .line 2625
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2398
    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 2399
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2751
    iput-object p1, p0, Landroid/app/Notification$Builder;->mExtras:Landroid/os/Bundle;

    .line 2752
    return-object p0
.end method

.method public setFlag(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 2869
    if-eqz p2, :cond_0

    .line 2870
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    .line 2874
    :goto_0
    return-void

    .line 2872
    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .prologue
    .line 2423
    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 2424
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2425
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "groupKey"    # Ljava/lang/String;

    .prologue
    .line 2687
    iput-object p1, p0, Landroid/app/Notification$Builder;->mGroupKey:Ljava/lang/String;

    .line 2688
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    .prologue
    .line 2699
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2700
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2457
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2468
    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;

    .line 2469
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I

    .prologue
    .line 2554
    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    .line 2555
    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    .line 2556
    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    .line 2557
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    .prologue
    .line 2610
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2611
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "number"    # I

    .prologue
    .line 2339
    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    .line 2340
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .prologue
    .line 2577
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2578
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .prologue
    .line 2588
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    .line 2589
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pri"    # I

    .prologue
    .line 2634
    iput p1, p0, Landroid/app/Notification$Builder;->mPriority:I

    .line 2635
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .prologue
    .line 2360
    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    .line 2361
    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    .line 2362
    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    .line 2363
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "n"    # Landroid/app/Notification;

    .prologue
    .line 2852
    iput-object p1, p0, Landroid/app/Notification$Builder;->mPublicVersion:Landroid/app/Notification;

    .line 2853
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 2238
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mShowWhen:Z

    .line 2239
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .prologue
    .line 2273
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .prologue
    .line 2290
    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    .line 2291
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 2303
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:Landroid/graphics/drawable/Icon;

    .line 2304
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sortKey"    # Ljava/lang/String;

    .prologue
    .line 2716
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSortKey:Ljava/lang/String;

    .line 2717
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 2485
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 2486
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v0, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 2487
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2503
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 2504
    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    .line 2505
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 2519
    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    .line 2520
    iput-object p2, p0, Landroid/app/Notification$Builder;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 2521
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "style"    # Landroid/app/Notification$Style;

    .prologue
    .line 2823
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_0

    .line 2824
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 2825
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    .line 2826
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 2829
    :cond_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2329
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;

    .line 2330
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .prologue
    .line 2434
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 2435
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2444
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    .line 2445
    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    .line 2446
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 2254
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mUseChronometer:Z

    .line 2255
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "pattern"    # [J

    .prologue
    .line 2537
    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    .line 2538
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 2841
    iput p1, p0, Landroid/app/Notification$Builder;->mVisibility:I

    .line 2842
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    .prologue
    .line 2229
    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    .line 2230
    return-object p0
.end method