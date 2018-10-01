.class Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;
.super Ljava/lang/Object;
.source "HwBroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HwBroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BroadcastRadarRecord"
.end annotation


# instance fields
.field actionName:Ljava/lang/String;

.field count:I

.field packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->actionName:Ljava/lang/String;

    .line 1093
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->packageName:Ljava/lang/String;

    .line 1094
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->count:I

    .line 1095
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1099
    iput-object p1, p0, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->actionName:Ljava/lang/String;

    .line 1100
    iput-object p2, p0, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->packageName:Ljava/lang/String;

    .line 1101
    iput p3, p0, Lcom/android/server/am/HwBroadcastQueue$BroadcastRadarRecord;->count:I

    .line 1102
    return-void
.end method
