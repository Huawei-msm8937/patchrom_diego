.class public Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;
.super Ljava/lang/Object;
.source "ScreenAclLowerPowerImpl.java"

# interfaces
.implements Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mSceneAclInterestAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEBUG:Z

.field private mAclActive:Z

.field private mAclApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentApk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    .line 25
    const-string v0, "ScreenAclLowerPowerImpl"

    sput-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mCurrentApk:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclActive:Z

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    .line 24
    iput-boolean v1, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->DEBUG:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclActive:Z

    .line 29
    const-string v0, "com.huawei.android.launcher"

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mCurrentApk:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->setACL()Z

    .line 31
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.huawei.android.launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.huawei.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.android.mediacenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.mybook66"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.huawei.hidisk"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.qzone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.jingdong.app.mall"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "com.huawei.android.webcustomize"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "10001"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "10008"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "10013"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    const-string v1, "10003"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method private configACLParam()Z
    .locals 3

    .prologue
    .line 164
    const-string v2, "0,90,45,60,77"

    .line 166
    .local v2, "writeValue":Ljava/lang/String;
    const-string v0, "/sys/class/graphics/fb0/amoled_acl"

    .line 167
    .local v0, "deviceNode":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->writeDeviceNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 169
    .local v1, "retValue":Z
    return v1
.end method

.method public static getInterestAction()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2717

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2718

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2719

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x271a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x271b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x271d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x271f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2720

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2721

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSceneAclInterestAction.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mSceneAclInterestAction:Ljava/util/ArrayList;

    return-object v0
.end method

.method private setACL()Z
    .locals 2

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 110
    .local v0, "retVal":Z
    invoke-direct {p0}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->configACLParam()Z

    move-result v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->setACLPowerSavingEnableState(Z)Z

    move-result v0

    .line 115
    :cond_0
    return v0
.end method

.method private setACLPowerSavingEnableState(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    .line 175
    const-string v2, "1,1"

    .line 176
    .local v2, "enableValue":Ljava/lang/String;
    const-string v1, "1,0"

    .line 177
    .local v1, "disableValue":Ljava/lang/String;
    const-string v0, "/sys/class/graphics/fb0/amoled_acl"

    .line 178
    .local v0, "deviceNode":Ljava/lang/String;
    if-eqz p1, :cond_1

    move-object v4, v2

    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->writeDeviceNode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 180
    .local v3, "retValue":Z
    if-eqz v3, :cond_0

    .line 181
    sget-object v4, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setACL with: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_2

    .end local v2    # "enableValue":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", 1,0 means disable, 1,1 means 35%, 1,2 means 45%, 1,3 means 55%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    return v3

    .end local v3    # "retValue":Z
    .restart local v2    # "enableValue":Ljava/lang/String;
    :cond_1
    move-object v4, v1

    .line 178
    goto :goto_0

    .restart local v3    # "retValue":Z
    :cond_2
    move-object v2, v1

    .line 181
    goto :goto_1
.end method

.method private unsetACL()Z
    .locals 2

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "retVal":Z
    invoke-direct {p0}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->configACLParam()Z

    move-result v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->setACLPowerSavingEnableState(Z)Z

    move-result v0

    .line 126
    :cond_0
    return v0
.end method

.method private writeDeviceNode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "deviceNode"    # Ljava/lang/String;
    .param p2, "writeValue"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 130
    const/4 v5, 0x1

    .line 131
    .local v5, "retVal":Z
    const/4 v3, 0x0

    .line 133
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    if-nez v4, :cond_2

    .line 140
    sget-object v7, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to writeDeviceNode for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 160
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return v6

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 136
    sget-object v7, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to construct FileOutputStream for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    if-nez v3, :cond_0

    .line 140
    sget-object v7, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to writeDeviceNode for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v7

    if-nez v3, :cond_1

    .line 140
    sget-object v7, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to writeDeviceNode for : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_1
    throw v7

    .line 146
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 147
    .local v0, "byteValue":[B
    const/4 v6, 0x0

    array-length v7, v0

    invoke-virtual {v4, v0, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 148
    iget-boolean v6, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "write node : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", with value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 154
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v0    # "byteValue":[B
    :goto_1
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    move v6, v5

    .line 160
    goto/16 :goto_0

    .line 155
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "byteValue":[B
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 156
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    const-string v7, "failed to close fos"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 149
    .end local v0    # "byteValue":[B
    .end local v2    # "ex":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 150
    .local v2, "ex":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 151
    const/4 v5, 0x0

    .line 154
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 155
    :catch_3
    move-exception v2

    .line 156
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v6, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    const-string v7, "failed to close fos"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 153
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_1
    move-exception v6

    .line 154
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 157
    :goto_2
    throw v6

    .line 155
    :catch_4
    move-exception v2

    .line 156
    .restart local v2    # "ex":Ljava/lang/Exception;
    sget-object v7, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    const-string v8, "failed to close fos"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public onPGScene(Lcom/huawei/pgmng/PGAction;)V
    .locals 4
    .param p1, "action"    # Lcom/huawei/pgmng/PGAction;

    .prologue
    const/4 v3, 0x0

    .line 77
    iget-boolean v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionPkg()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 105
    :cond_1
    :goto_0
    return-void

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mCurrentApk:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    iput-boolean v3, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclActive:Z

    .line 84
    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    const-string v1, "screen state changed, reset mAclActive state to false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclApps:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    :cond_3
    iget-boolean v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclActive:Z

    if-nez v0, :cond_5

    .line 90
    invoke-direct {p0}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->setACL()Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclActive:Z

    .line 92
    iget-boolean v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set ACL for mActionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 86
    :cond_4
    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionPkg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mCurrentApk:Ljava/lang/String;

    goto :goto_1

    .line 94
    :cond_5
    iget-boolean v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    const-string v1, "no need to setACL for already set"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 97
    :cond_6
    iget-boolean v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclActive:Z

    if-eqz v0, :cond_7

    .line 98
    invoke-direct {p0}, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->unsetACL()Z

    .line 99
    iput-boolean v3, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->mAclActive:Z

    .line 100
    iget-boolean v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unset ACL for mActionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", apk = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 102
    :cond_7
    iget-boolean v0, p0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/huawei/pgmng/middleware/ScreenAclLowerPowerImpl;->TAG:Ljava/lang/String;

    const-string v1, "no need to unset ACL for unset already"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
