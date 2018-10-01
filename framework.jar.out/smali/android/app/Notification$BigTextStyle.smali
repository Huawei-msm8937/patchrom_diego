.class public Landroid/app/Notification$BigTextStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# static fields
.field private static final LINES_CONSUMED_BY_ACTIONS:I = 0x3

.field private static final LINES_CONSUMED_BY_SUMMARY:I = 0x2

.field private static final MAX_LINES:I = 0xd


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4137
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4138
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4140
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4141
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4142
    return-void
.end method

.method private calculateMaxLines()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4220
    const/16 v2, 0xd

    .line 4221
    .local v2, "lineCount":I
    iget-object v5, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;
    invoke-static {v5}, Landroid/app/Notification$Builder;->access$2100(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    move v0, v3

    .line 4222
    .local v0, "hasActions":Z
    :goto_0
    iget-boolean v5, p0, Landroid/app/Notification$BigTextStyle;->mSummaryTextSet:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/app/Notification$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    :goto_1
    if-eqz v5, :cond_5

    move v1, v3

    .line 4223
    .local v1, "hasSummary":Z
    :goto_2
    if-eqz v0, :cond_0

    .line 4224
    add-int/lit8 v2, v2, -0x3

    .line 4226
    :cond_0
    if-eqz v1, :cond_1

    .line 4227
    add-int/lit8 v2, v2, -0x2

    .line 4231
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mHasThreeLines:Z
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$2200(Landroid/app/Notification$Builder;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4232
    add-int/lit8 v2, v2, -0x1

    .line 4234
    :cond_2
    return v2

    .end local v0    # "hasActions":Z
    .end local v1    # "hasSummary":Z
    :cond_3
    move v0, v4

    .line 4221
    goto :goto_0

    .line 4222
    .restart local v0    # "hasActions":Z
    :cond_4
    iget-object v5, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/app/Notification$Builder;->access$1000(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    const v5, 0x1020362

    .line 4192
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1400(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4193
    .local v1, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4195
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->getBigTextLayoutResource()I
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1700(Landroid/app/Notification$Builder;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Notification$BigTextStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4197
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v2, v1}, Landroid/app/Notification$Builder;->access$1402(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4200
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;)Landroid/app/HwCustNotification;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;)Landroid/app/HwCustNotification;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/HwCustNotification;->isInvertColorRequired(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4201
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mCust:Landroid/app/HwCustNotification;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;)Landroid/app/HwCustNotification;

    move-result-object v2

    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/HwCustNotification;->setCustomizedInvertColorText(Ljava/lang/CharSequence;Landroid/content/Context;ILandroid/widget/RemoteViews;)V

    .line 4206
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4207
    const-string/jumbo v2, "setMaxLines"

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->calculateMaxLines()I

    move-result v3

    invoke-virtual {v0, v5, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4208
    const v2, 0x1020015

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4212
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->shrinkLine3Text(Landroid/widget/RemoteViews;)V
    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->access$2000(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    .line 4214
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v3, 0x1020363

    # invokes: Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z
    invoke-static {v2, v0, v3}, Landroid/app/Notification$Builder;->access$1500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    .line 4216
    return-object v0

    .line 4203
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    # invokes: Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->access$1100(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4174
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4176
    const-string v0, "android.bigText"

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4177
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4166
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4167
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4242
    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$1600(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4243
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4184
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4186
    const-string v0, "android.bigText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4187
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4149
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4150
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4157
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4158
    return-object p0
.end method
