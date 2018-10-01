.class public final Lcom/huawei/pgmng/log/LogPower;
.super Ljava/lang/Object;
.source "LogPower.java"


# static fields
.field public static final ACTIVITY_PAUSED:I = 0x65

.field public static final ACTIVITY_RESUMED:I = 0x64

.field public static final ADD_PROCESS_DEPENDENCY:I = 0xa6

.field public static final ADD_VIEW:I = 0x97

.field public static final ALARM_BLOCKED:I = 0x73

.field public static final ALARM_START:I = 0x79

.field public static final ALL_DOWNLOAD_FINISH:I = 0x6e

.field public static final APPWIDGET_ENABLED:I = 0xa8

.field public static final APP_EXIT:I = 0x6c

.field public static final APP_LAUNCHER:I = 0x6d

.field public static final APP_PROCESS_EXIT:I = 0x70

.field public static final APP_PROCESS_START:I = 0x6f

.field public static final APP_RUN_BG:I = 0x72

.field public static final APP_RUN_FRONT:I = 0x71

.field public static final APP_START_SPEEDUP:I = 0x8b

.field public static final AUDIO_SESSION_ID_NEW:I = 0xa2

.field public static final AUDIO_SESSION_ID_RELEASE:I = 0xa3

.field public static final AUDIO_SESSION_START:I = 0xa4

.field public static final AUDIO_SESSION_STOP:I = 0xa5

.field public static final AUDIO_START:I = 0x93

.field public static final BLE_SOCKECT_CLOSED:I = 0xad

.field public static final BLE_SOCKECT_CONNECTED:I = 0xac

.field public static final BT_ACTIVE_APP:I = 0xb5

.field public static final BT_INACTIVE_APP:I = 0xb6

.field public static final COM_THERMAL_EVENT:I = 0x92

.field public static final DISABLE_SENSOR:I = 0x90

.field public static final ENABLE_SENSOR:I = 0x8f

.field public static final END_CAMERA:I = 0x86

.field public static final END_CHG_ROTATION:I = 0x82

.field public static final END_WEBKIT_CANVAS:I = 0x84

.field public static final FLING_FINISH:I = 0x9b

.field public static final FLING_START:I = 0x9a

.field public static final FREEZER_EXCEPTION:I = 0x94

.field public static final FULL_SCREEN:I = 0x78

.field public static final FULL_SCREEN_END:I = 0x87

.field public static final GAMEOF3D_PAUSED:I = 0x6b

.field public static final GAMEOF3D_RESUMED:I = 0x6a

.field public static final GPS_END:I = 0x9d

.field public static final GPS_START:I = 0x9c

.field public static final GPU_DRAW:I = 0x99

.field public static final HARD_KEY_EVENT:I = 0xae

.field public static final HW_PUSH_FINISH:I = 0x77

.field public static final KEYBOARD_HIDE:I = 0x76

.field public static final KEYBOARD_SHOW:I = 0x75

.field public static final LOW_POWER_AUDIO_RESET:I = 0xab

.field public static final LOW_POWER_AUDIO_START:I = 0xa9

.field public static final LOW_POWER_AUDIO_STOP:I = 0xaa

.field public static final MEDIA_DECODE_TYPE:I = 0x8a

.field public static final MEDIA_RECORDER_END:I = 0xb2

.field public static final MEDIA_RECORDER_START:I = 0xb1

.field public static final MIME_TYPE:I = 0x7f

.field public static final MUSIC_AUDIO_PLAY:I = 0x8c

.field public static final NOTIFICATION_CANCEL:I = 0x7b

.field public static final NOTIFICATION_CANCEL_ALL:I = 0x7c

.field public static final NOTIFICATION_ENQUEUE:I = 0x7a

.field public static final PC_WEBVIEW_END:I = 0x96

.field public static final PC_WEBVIEW_START:I = 0x95

.field public static final REMOVE_PROCESS_DEPENDENCY:I = 0xa7

.field public static final REMOVE_VIEW:I = 0x98

.field public static final SCREEN_OFF:I = 0x74

.field public static final SCREEN_SHOT_END:I = 0xb0

.field public static final SCREEN_SHOT_START:I = 0xaf

.field public static final SPEED_UP_END:I = 0xb4

.field public static final SPEED_UP_START:I = 0xb3

.field public static final START_CAMERA:I = 0x81

.field public static final START_CHG_ROTATION:I = 0x80

.field public static final START_WEBKIT_CANVAS:I = 0x83

.field public static final SURFACEVIEW_CREATED:I = 0x8d

.field public static final SURFACEVIEW_DESTROYED:I = 0x8e

.field public static final TEST_FOR_CHANNEL:I = 0x186a0

.field public static final TEXTUREVIEW_CREATED:I = 0xb7

.field public static final TEXTUREVIEW_DESTROYED:I = 0xb8

.field public static final THERMAL_LAUNCH:I = 0x91

.field public static final TOUCH_DOWN:I = 0x7d

.field public static final TOUCH_UP:I = 0x7e

.field public static final TRASH_WAKELOCK:I = 0x85

.field public static final VIDEO_END:I = 0x89

.field public static final VIDEO_START:I = 0x88

.field public static final WAKELOCK_ACQUIRED:I = 0xa0

.field public static final WAKELOCK_RELEASED:I = 0xa1

.field public static final WEBPAGE_FINISHED:I = 0x69

.field public static final WEBPAGE_STARTED:I = 0x68

.field public static final WEBVIEW_PAUSED:I = 0x67

.field public static final WEBVIEW_RESUMED:I = 0x66

.field public static final WIFI_SCAN_END:I = 0x9f

.field public static final WIFI_SCAN_START:I = 0x9e

.field private static mMsgBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sput-object v0, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method private static printlnPower(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p0, "tag"    # I
    .param p1, "PackageName"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/String;
    .param p3, "ClassName"    # Ljava/lang/String;
    .param p4, "Extend"    # [Ljava/lang/String;

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "msg":Ljava/lang/String;
    sget-object v3, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    monitor-enter v3

    .line 145
    if-eqz p1, :cond_0

    .line 146
    :try_start_0
    sget-object v2, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_0
    if-eqz p2, :cond_1

    .line 149
    sget-object v2, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_1
    if-eqz p3, :cond_3

    .line 152
    if-nez p2, :cond_2

    .line 153
    sget-object v2, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    :cond_2
    sget-object v2, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_3
    if-eqz p4, :cond_4

    .line 158
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_4

    .line 159
    sget-object v2, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p4, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "i":I
    :cond_4
    sget-object v2, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    sget-object v2, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    sget-object v5, Lcom/huawei/pgmng/log/LogPower;->mMsgBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 164
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    const/4 v2, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->print_powerlog_native(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 164
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static push(I)I
    .locals 2
    .param p0, "tag"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    const-string v0, ""

    invoke-static {p0, v0, v1, v1, v1}, Lcom/huawei/pgmng/log/LogPower;->printlnPower(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static push(ILjava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "PackageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-static {p0, p1, v0, v0, v0}, Lcom/huawei/pgmng/log/LogPower;->printlnPower(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static push(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "PackageName"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-static {p0, p1, p2, v0, v0}, Lcom/huawei/pgmng/log/LogPower;->printlnPower(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "PackageName"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/String;
    .param p3, "ClassName"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/huawei/pgmng/log/LogPower;->printlnPower(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static push(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p0, "tag"    # I
    .param p1, "PackageName"    # Ljava/lang/String;
    .param p2, "Value"    # Ljava/lang/String;
    .param p3, "ClassName"    # Ljava/lang/String;
    .param p4, "Extend"    # [Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0, p1, p2, p3, p4}, Lcom/huawei/pgmng/log/LogPower;->printlnPower(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
