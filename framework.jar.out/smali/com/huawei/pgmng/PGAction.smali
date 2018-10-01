.class public Lcom/huawei/pgmng/PGAction;
.super Ljava/lang/Object;
.source "PGAction.java"


# static fields
.field public static final FLAG_PARENT_SCENE:I = 0x3

.field public static final FLAG_SUBSCENE_END:I = 0x2

.field public static final FLAG_SUBSCENE_START:I = 0x1

.field private static final PG_ACTION_STATE_BASE:I = 0x2710

.field private static final PG_ACTION_STATE_TAIL:I = 0x2723

.field private static final PG_EVENT_STATE_BASE:I = 0x9c40

.field private static final PG_EVENT_STATE_TAIL:I = 0x9c40

.field public static final PG_ID_2DGAME_FRONT:I = 0x271b

.field public static final PG_ID_3DGAME_FRONT:I = 0x2712

.field public static final PG_ID_ALARM_START:I = 0x4e20

.field public static final PG_ID_BATTERY_CHANGED:I = 0x4e23

.field public static final PG_ID_BROWSER_FRONT:I = 0x2711

.field public static final PG_ID_CAMERA_END:I = 0x2721

.field public static final PG_ID_CAMERA_FRONT:I = 0x2717

.field public static final PG_ID_DEFAULT_FRONT:I = 0x2710

.field public static final PG_ID_EBOOK_FRONT:I = 0x2713

.field public static final PG_ID_GALLERY_FRONT:I = 0x2714

.field public static final PG_ID_INPUT_END:I = 0x2716

.field public static final PG_ID_INPUT_START:I = 0x2715

.field public static final PG_ID_LAUNCHER_FRONT:I = 0x271a

.field public static final PG_ID_LITTLE_CAMERA_END:I = 0x2723

.field public static final PG_ID_LITTLE_CAMERA_START:I = 0x2722

.field public static final PG_ID_LOG_EVENT:I = 0x9c40

.field public static final PG_ID_MMS_FRONT:I = 0x271d

.field public static final PG_ID_OFFICE_FRONT:I = 0x2718

.field public static final PG_ID_POWER_MODE:I = 0x4e21

.field public static final PG_ID_THERMAL_BACKLIGHT:I = 0x4e22

.field public static final PG_ID_USER_DRIVING:I = 0x7532

.field public static final PG_ID_USER_RUNNING:I = 0x7533

.field public static final PG_ID_USER_SLEEPING:I = 0x7530

.field public static final PG_ID_USER_STATIONARY:I = 0x7534

.field public static final PG_ID_USER_WALKING:I = 0x7531

.field public static final PG_ID_VIDEO_END:I = 0x2720

.field public static final PG_ID_VIDEO_FRONT:I = 0x2719

.field public static final PG_ID_VIDEO_START:I = 0x271f

.field private static final PG_SYSTEM_STATE_BASE:I = 0x4e20

.field private static final PG_SYSTEM_STATE_TAIL:I = 0x4e23

.field private static final PG_USER_STATE_BASE:I = 0x7530

.field private static final PG_USER_STATE_TAIL:I = 0x7534

.field public static final TYPE_APP_SCENE:I = 0x1

.field public static final TYPE_PG_EVENT:I = 0x4

.field public static final TYPE_SYSTEM_STATE:I = 0x2

.field public static final TYPE_USER_SCENE:I = 0x3


# instance fields
.field private actionId:I

.field private extend1:Ljava/lang/String;

.field private extend2:Ljava/lang/String;

.field private flag:I

.field private mCurAppScene:I

.field private pkgName:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "actionid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "e1"    # Ljava/lang/String;
    .param p4, "e2"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x3

    iput v0, p0, Lcom/huawei/pgmng/PGAction;->flag:I

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/pgmng/PGAction;->type:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/pgmng/PGAction;->mCurAppScene:I

    .line 75
    iput p1, p0, Lcom/huawei/pgmng/PGAction;->actionId:I

    .line 76
    iput-object p2, p0, Lcom/huawei/pgmng/PGAction;->pkgName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/huawei/pgmng/PGAction;->extend1:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/huawei/pgmng/PGAction;->extend2:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static checkActionFlag(I)I
    .locals 4
    .param p0, "actionId"    # I

    .prologue
    const/16 v3, 0x2720

    const/16 v2, 0x271f

    .line 89
    const/4 v0, 0x3

    .line 90
    .local v0, "subActionFlag":I
    const/16 v1, 0x2717

    if-eq p0, v1, :cond_0

    if-eq p0, v2, :cond_0

    const/16 v1, 0x2715

    if-eq p0, v1, :cond_0

    if-eq p0, v2, :cond_0

    const/16 v1, 0x2722

    if-ne p0, v1, :cond_2

    .line 95
    :cond_0
    const/4 v0, 0x1

    .line 103
    :cond_1
    :goto_0
    return v0

    .line 96
    :cond_2
    const/16 v1, 0x2721

    if-eq p0, v1, :cond_3

    if-eq p0, v3, :cond_3

    const/16 v1, 0x2716

    if-eq p0, v1, :cond_3

    if-eq p0, v3, :cond_3

    const/16 v1, 0x2723

    if-ne p0, v1, :cond_1

    .line 101
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static checkActionType(I)I
    .locals 4
    .param p0, "actionId"    # I

    .prologue
    const v3, 0x9c40

    const/16 v2, 0x7530

    const/16 v1, 0x4e20

    .line 107
    const/4 v0, 0x1

    .line 108
    .local v0, "type":I
    if-ge p0, v1, :cond_1

    .line 109
    const/4 v0, 0x1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 110
    :cond_1
    if-lt p0, v1, :cond_2

    if-ge p0, v2, :cond_2

    .line 112
    const/4 v0, 0x2

    goto :goto_0

    .line 113
    :cond_2
    if-lt p0, v2, :cond_3

    if-ge p0, v3, :cond_3

    .line 115
    const/4 v0, 0x3

    goto :goto_0

    .line 116
    :cond_3
    if-lt p0, v3, :cond_0

    .line 117
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static isValid(I)Z
    .locals 2
    .param p0, "id"    # I

    .prologue
    const v1, 0x9c40

    .line 82
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2723

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x4e20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x4e23

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x7530

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7534

    if-le p0, v0, :cond_3

    :cond_2
    if-lt p0, v1, :cond_4

    if-gt p0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActionExd1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/huawei/pgmng/PGAction;->extend1:Ljava/lang/String;

    return-object v0
.end method

.method public getActionExd2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/huawei/pgmng/PGAction;->extend2:Ljava/lang/String;

    return-object v0
.end method

.method public getActionFlag()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/huawei/pgmng/PGAction;->flag:I

    return v0
.end method

.method public getActionId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/huawei/pgmng/PGAction;->actionId:I

    return v0
.end method

.method public getActionPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/huawei/pgmng/PGAction;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getActionType()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/huawei/pgmng/PGAction;->type:I

    return v0
.end method

.method public getCurAppScene()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/huawei/pgmng/PGAction;->mCurAppScene:I

    return v0
.end method

.method public setActionFlag(I)V
    .locals 0
    .param p1, "tempFlag"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/huawei/pgmng/PGAction;->flag:I

    .line 144
    return-void
.end method

.method public setActionType(I)V
    .locals 0
    .param p1, "tempType"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/huawei/pgmng/PGAction;->type:I

    .line 136
    return-void
.end method

.method public setCurAppScene(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/huawei/pgmng/PGAction;->mCurAppScene:I

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, " actionId ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/pgmng/PGAction;->actionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    const-string v1, " pkg ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/pgmng/PGAction;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, " extend1 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/pgmng/PGAction;->extend1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v1, " extend2 ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/pgmng/PGAction;->extend2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, " flag ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/pgmng/PGAction;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, " type ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/pgmng/PGAction;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
