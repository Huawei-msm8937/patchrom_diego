.class public Lcom/android/server/am/HwActivityManagerServiceUtil;
.super Ljava/lang/Object;
.source "HwActivityManagerServiceUtil.java"


# static fields
.field static final DEBUG_CONSUMPTION:Z = false

.field static final TAG:Ljava/lang/String; = "HwActivityManagerServiceUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPendingIntentCanceled(Landroid/app/PendingIntent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, "result":Z
    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v2

    .line 32
    .local v2, "target":Landroid/content/IIntentSender;
    if-eqz v2, :cond_0

    instance-of v3, v2, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 33
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    .line 34
    .local v0, "record":Lcom/android/server/am/PendingIntentRecord;
    iget-boolean v1, v0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 41
    .end local v0    # "record":Lcom/android/server/am/PendingIntentRecord;
    .end local v2    # "target":Landroid/content/IIntentSender;
    :cond_0
    return v1
.end method
