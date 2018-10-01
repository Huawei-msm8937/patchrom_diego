.class public Lcom/android/server/am/HwBroadcastRadarUtil;
.super Ljava/lang/Object;
.source "HwBroadcastRadarUtil.java"


# static fields
.field private static final BUG_TYPE_BROADCAST:I = 0x68

.field private static final CATEGORY:Ljava/lang/String; = "framework"

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_ACTION_COUNT:Ljava/lang/String; = "actionCount"

.field public static final KEY_BROADCAST_INTENT:Ljava/lang/String; = "intent"

.field public static final KEY_MMS_BROADCAST_FLAG:Ljava/lang/String; = "mmsFlag"

.field public static final KEY_PACKAGE:Ljava/lang/String; = "package"

.field public static final KEY_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final KEY_RECEIVE_TIME:Ljava/lang/String; = "receiveTime"

.field public static final KEY_VERSION_CODE:Ljava/lang/String; = "versionCode"

.field public static final KEY_VERSION_NAME:Ljava/lang/String; = "versionName"

.field private static final LEVEL_A:I = 0x41

.field private static final LEVEL_B:I = 0x42

.field private static final LEVEL_C:I = 0x43

.field private static final LEVEL_D:I = 0x44

.field private static final MAX_BODY_SIZE:I = 0x200

.field public static final MAX_BROADCASTQUEUE_LENGTH:I = 0x96

.field private static final MAX_HEAD_SIZE:I = 0x100

.field public static final SCENE_DEF_BROADCAST_OVERLENGTH:I = 0xaf1

.field public static final SCENE_DEF_RECEIVER_TIMEOUT:I = 0xaf3

.field public static final SYSTEM_BOOT_COMPLETED_TIME:J = 0x1b7740L

.field private static final TAG:Ljava/lang/String; = "BroadcastRadar"

.field private static mLogException:Landroid/util/LogException;


# instance fields
.field private mUploadedPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getLogException()Landroid/util/LogException;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/HwBroadcastRadarUtil;->mLogException:Landroid/util/LogException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/HwBroadcastRadarUtil;->mUploadedPackages:Ljava/util/HashMap;

    .line 77
    return-void
.end method

.method private isPackageUploaded(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "sceneDef"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "isUploaded":Z
    iget-object v3, p0, Lcom/android/server/am/HwBroadcastRadarUtil;->mUploadedPackages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 131
    .local v2, "uploadedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 133
    .local v1, "pkgActions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 137
    .end local v1    # "pkgActions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    return v0
.end method

.method private uploadExceptionLog(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "bugType"    # I
    .param p2, "sceneDef"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "apkVersion"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    const/16 v8, 0x68

    .line 143
    :try_start_0
    const-string v4, "action"

    const/4 v5, 0x0

    invoke-virtual {p6, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p2, p3, v4}, Lcom/android/server/am/HwBroadcastRadarUtil;->isPackageUploaded(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    .local v1, "header":Ljava/lang/StringBuilder;
    const-string v4, "Package:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v4, "APK version:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v4, "Bug type:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v4, "Scene def:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    packed-switch p2, :pswitch_data_0

    .line 160
    :pswitch_0
    const/16 v4, 0x68

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trigger broadcast radar upload for scene "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 163
    :goto_1
    sget-object v4, Lcom/android/server/am/HwBroadcastRadarUtil;->mLogException:Landroid/util/LogException;

    const-string v5, "framework"

    const/16 v6, 0x41

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7, p5}, Landroid/util/LogException;->msg(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v4, 0x68

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Radar upload for Package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", BugType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Scene: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    .line 166
    iget-object v4, p0, Lcom/android/server/am/HwBroadcastRadarUtil;->mUploadedPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 167
    .local v3, "uploadedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    if-nez v3, :cond_1

    .line 168
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "uploadedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 169
    .restart local v3    # "uploadedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    iget-object v4, p0, Lcom/android/server/am/HwBroadcastRadarUtil;->mUploadedPackages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_1
    invoke-virtual {v3, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 172
    .local v2, "pkgActions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    .line 173
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "pkgActions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 174
    .restart local v2    # "pkgActions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_2
    const-string v4, "action"

    invoke-virtual {p6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 177
    .end local v1    # "header":Ljava/lang/StringBuilder;
    .end local v2    # "pkgActions":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "uploadedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v4, "radar upload failed."

    invoke-static {v8, v4, v0}, Landroid/util/Flog;->e(ILjava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 153
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "header":Ljava/lang/StringBuilder;
    :pswitch_1
    const/16 v4, 0x68

    :try_start_1
    const-string v5, "Trigger order broadcast queue overlength radar upload."

    invoke-static {v4, v5}, Landroid/util/Flog;->i(ILjava/lang/String;)I

    goto/16 :goto_1

    .line 156
    :pswitch_2
    const/16 v4, 0x68

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trigger receiver timeout radar upload. Receiver["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "receiver"

    const-string v7, "unknown"

    invoke-virtual {p6, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " receiving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "intent"

    invoke-virtual {p6, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tooks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "receiveTime"

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {p6, v6, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Flog;->i(ILjava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 151
    nop

    :pswitch_data_0
    .packed-switch 0xaf1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleBroadcastQueueOverlength(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 81
    if-eqz p1, :cond_0

    .line 83
    const-string v0, "package"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "action"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "actionName":Ljava/lang/String;
    const-string v0, "actionCount"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 86
    .local v7, "actionCount":I
    const-string v0, "mmsFlag"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 87
    .local v10, "isContainsMms":Z
    const-string v0, "receiver"

    const-string v1, "unknown"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 88
    .local v11, "receiverName":Ljava/lang/String;
    const-string v0, "versionName"

    const-string v1, "unknown"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 90
    .local v4, "versionName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 91
    .local v9, "body":Ljava/lang/StringBuilder;
    const-string v0, "Package:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v0, " send Broadcast["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " times, current queue "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    if-eqz v10, :cond_1

    const-string v0, "contains"

    :goto_0
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mms broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v0, " and curReceiver is "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const/16 v1, 0x68

    const/16 v2, 0xaf1

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/HwBroadcastRadarUtil;->uploadExceptionLog(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 100
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "versionName":Ljava/lang/String;
    .end local v7    # "actionCount":I
    .end local v8    # "actionName":Ljava/lang/String;
    .end local v9    # "body":Ljava/lang/StringBuilder;
    .end local v10    # "isContainsMms":Z
    .end local v11    # "receiverName":Ljava/lang/String;
    :cond_0
    return-void

    .line 94
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "versionName":Ljava/lang/String;
    .restart local v7    # "actionCount":I
    .restart local v8    # "actionName":Ljava/lang/String;
    .restart local v9    # "body":Ljava/lang/StringBuilder;
    .restart local v10    # "isContainsMms":Z
    .restart local v11    # "receiverName":Ljava/lang/String;
    :cond_1
    const-string v0, "contains not"

    goto :goto_0
.end method

.method public handleReceiverTimeOut(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 109
    const-string v0, "package"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "packageName":Ljava/lang/String;
    const-string v0, "receiver"

    const-string v1, "unknown"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 111
    .local v10, "receiverName":Ljava/lang/String;
    const-string v0, "versionName"

    const-string v1, "unknown"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    .local v4, "versionName":Ljava/lang/String;
    const-string v0, "receiveTime"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v11

    .line 113
    .local v11, "receiverTime":F
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    .line 114
    .local v9, "objIntent":Landroid/os/Parcelable;
    if-eqz v9, :cond_1

    check-cast v9, Landroid/content/Intent;

    .end local v9    # "objIntent":Landroid/os/Parcelable;
    move-object v8, v9

    .line 116
    .local v8, "intent":Landroid/content/Intent;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x200

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v7, "body":Ljava/lang/StringBuilder;
    const-string v0, "Receiver["

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "] from "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v0, " receiving "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, " tooks "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const/16 v1, 0x68

    const/16 v2, 0xaf3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/HwBroadcastRadarUtil;->uploadExceptionLog(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 125
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "versionName":Ljava/lang/String;
    .end local v7    # "body":Ljava/lang/StringBuilder;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "receiverName":Ljava/lang/String;
    .end local v11    # "receiverTime":F
    :cond_0
    return-void

    .line 114
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "versionName":Ljava/lang/String;
    .restart local v9    # "objIntent":Landroid/os/Parcelable;
    .restart local v10    # "receiverName":Ljava/lang/String;
    .restart local v11    # "receiverTime":F
    :cond_1
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    goto :goto_0
.end method
