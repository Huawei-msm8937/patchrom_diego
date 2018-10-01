.class Lcom/android/server/am/ServiceRecord$3;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;

.field final synthetic val$localUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    iput p4, p0, Lcom/android/server/am/ServiceRecord$3;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 579
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 581
    .local v0, "nmi":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v0, :cond_0

    .line 582
    const/16 v1, 0x66

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stripForegroundServiceFlagFromNotification no nmi for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Flog;->w(ILjava/lang/String;)I

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    iget v3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localUserId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerInternal;->removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V

    goto :goto_0
.end method
