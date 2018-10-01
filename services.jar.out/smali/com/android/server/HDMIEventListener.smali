.class final Lcom/android/server/HDMIEventListener;
.super Ljava/lang/Object;
.source "HDMIEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final HDCP_MSG_CONNECTED:Ljava/lang/String; = "hdcp_connected"

.field private static final HDCP_MSG_DISCONNECTED:Ljava/lang/String; = "hdcp_disconnected"

.field private static final HDMI_CMD_CEC:Ljava/lang/String; = "hdmi_cec: "

.field private static final HDMI_CMD_CHANGE_CODE:Ljava/lang/String; = "hdmi_change_code: "

.field private static final HDMI_CMD_DISABLE:Ljava/lang/String; = "hdmi_disable"

.field private static final HDMI_CMD_ENABLE:Ljava/lang/String; = "hdmi_enable"

.field private static final HDMI_CMD_FULLSCREEN_DISABLE:Ljava/lang/String; = "hdmi_fullscreen_disable: "

.field private static final HDMI_CMD_FULLSCREEN_ENABLE:Ljava/lang/String; = "hdmi_fullscreen_enable: "

.field private static final HDMI_CMD_HDCP:Ljava/lang/String; = "hdmi_hdcp: "

.field private static final HDMI_CMD_HPD:Ljava/lang/String; = "hdmi_hpd: "

.field private static final HDMI_CMD_SET_REPRODUCTION_HEIGHT:Ljava/lang/String; = "set_reproduction_height: "

.field private static final HDMI_CMD_SET_REPRODUCTION_WIDTH:Ljava/lang/String; = "set_reproduction_width: "

.field private static final HDMI_MSG_CEC_CMD:Ljava/lang/String; = "CECCMD:"

.field private static final HDMI_MSG_CONNECTED:Ljava/lang/String; = "connected_hdmi"

.field private static final HDMI_MSG_DISCONNECTED:Ljava/lang/String; = "disconnected_hdmi"

.field private static final HDMI_MSG_START:Ljava/lang/String; = "hdmi_listner_started"

.field private static final HDMI_SOCKET:Ljava/lang/String; = "hdmi_daemon"

.field private static final TAG:Ljava/lang/String; = "HDMIListener"


# instance fields
.field private mHDMIConnected:Z

.field private mHDMIEDIDs:[I

.field private mOutputStream:Ljava/io/DataOutputStream;

.field private mService:Lcom/android/server/HDMIConnectService;


# direct methods
.method constructor <init>(Lcom/android/server/HDMIConnectService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/HDMIConnectService;

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/android/server/HDMIEventListener;->mHDMIConnected:Z

    .line 62
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/HDMIEventListener;->mHDMIEDIDs:[I

    .line 65
    iput-object p1, p0, Lcom/android/server/HDMIEventListener;->mService:Lcom/android/server/HDMIConnectService;

    .line 66
    return-void
.end method

.method private handleHDMIEvent(Ljava/lang/String;)V
    .locals 8
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    const-string v3, "HDMIListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v3, "connected_hdmi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    const-string v3, "connected_hdmi"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "ids":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/HDMIEventListener;->mHDMIEDIDs:[I

    .line 74
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/HDMIEventListener;->mHDMIEDIDs:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 76
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HDMIEventListener;->mHDMIEDIDs:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "ex":Ljava/lang/NumberFormatException;
    const-string v3, "HDMIListener"

    const-string v4, "NumberFormatException in handleEvent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 81
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    :cond_0
    iput-boolean v7, p0, Lcom/android/server/HDMIEventListener;->mHDMIConnected:Z

    .line 82
    const-string v3, "HDMIListener"

    const-string v4, "mService.sendHDMIConnected(mHDMIEDIDs)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v3, p0, Lcom/android/server/HDMIEventListener;->mService:Lcom/android/server/HDMIConnectService;

    iget-object v4, p0, Lcom/android/server/HDMIEventListener;->mHDMIEDIDs:[I

    invoke-virtual {v3, v4}, Lcom/android/server/HDMIConnectService;->sendHDMIConnected([I)V

    .line 94
    .end local v1    # "i":I
    .end local v2    # "ids":[Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 84
    :cond_2
    const-string v3, "disconnected_hdmi"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 85
    iput-boolean v6, p0, Lcom/android/server/HDMIEventListener;->mHDMIConnected:Z

    .line 86
    iget-object v3, p0, Lcom/android/server/HDMIEventListener;->mService:Lcom/android/server/HDMIConnectService;

    invoke-virtual {v3}, Lcom/android/server/HDMIConnectService;->sendHDMIDisconnected()V

    goto :goto_2

    .line 87
    :cond_3
    const-string v3, "hdcp_connected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    iget-object v3, p0, Lcom/android/server/HDMIEventListener;->mService:Lcom/android/server/HDMIConnectService;

    invoke-virtual {v3, v7}, Lcom/android/server/HDMIConnectService;->sendHDCPconnected(Z)V

    goto :goto_2

    .line 89
    :cond_4
    const-string v3, "hdcp_disconnected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 90
    iget-object v3, p0, Lcom/android/server/HDMIEventListener;->mService:Lcom/android/server/HDMIConnectService;

    invoke-virtual {v3, v6}, Lcom/android/server/HDMIConnectService;->sendHDCPconnected(Z)V

    goto :goto_2

    .line 91
    :cond_5
    const-string v3, "CECCMD:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/server/HDMIEventListener;->mService:Lcom/android/server/HDMIConnectService;

    invoke-virtual {v3, p1}, Lcom/android/server/HDMIConnectService;->sendCecCmd(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private listenToHDMISocket()V
    .locals 14

    .prologue
    .line 121
    const/4 v8, 0x0

    .line 124
    .local v8, "socket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .local v9, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v11, "hdmi_daemon"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 128
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 130
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 131
    .local v7, "inputStream":Ljava/io/InputStream;
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v11, p0, Lcom/android/server/HDMIEventListener;->mOutputStream:Ljava/io/DataOutputStream;

    .line 140
    const/16 v11, 0x200

    new-array v1, v11, [B

    .line 142
    .local v1, "buffer":[B
    const-string v11, "hdmi_listner_started"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/HDMIEventListener;->writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v11, p0, Lcom/android/server/HDMIEventListener;->mService:Lcom/android/server/HDMIConnectService;

    invoke-virtual {v11}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v11

    if-nez v11, :cond_0

    .line 147
    iget-object v11, p0, Lcom/android/server/HDMIEventListener;->mService:Lcom/android/server/HDMIConnectService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/HDMIConnectService;->setHDMIEnable(Z)V

    .line 152
    :cond_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 153
    .local v2, "count":I
    if-gez v2, :cond_3

    move-object v8, v9

    .line 170
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "socket":Landroid/net/LocalSocket;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :goto_0
    monitor-enter p0

    .line 171
    :try_start_2
    iget-object v11, p0, Lcom/android/server/HDMIEventListener;->mOutputStream:Ljava/io/DataOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    .line 173
    :try_start_3
    iget-object v11, p0, Lcom/android/server/HDMIEventListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :goto_1
    const/4 v11, 0x0

    :try_start_4
    iput-object v11, p0, Lcom/android/server/HDMIEventListener;->mOutputStream:Ljava/io/DataOutputStream;

    .line 180
    :cond_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 183
    if-eqz v8, :cond_2

    .line 184
    :try_start_5
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 190
    :cond_2
    :goto_2
    const-string v11, "HDMIListener"

    const-string v12, "Failed to connect to hdmi daemon"

    new-instance v13, Ljava/lang/IllegalStateException;

    invoke-direct {v13}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 191
    return-void

    .line 157
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "inputStream":Ljava/io/InputStream;
    .restart local v9    # "socket":Landroid/net/LocalSocket;
    :cond_3
    const/4 v10, 0x0

    .line 158
    .local v10, "start":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    if-ge v6, v2, :cond_0

    .line 159
    :try_start_6
    aget-byte v11, v1, v6

    if-nez v11, :cond_4

    .line 160
    new-instance v4, Ljava/lang/String;

    sub-int v11, v6, v10

    invoke-direct {v4, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 161
    .local v4, "event":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/HDMIEventListener;->handleHDMIEvent(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 162
    add-int/lit8 v10, v6, 0x1

    .line 158
    .end local v4    # "event":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 166
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v6    # "i":I
    .end local v7    # "inputStream":Ljava/io/InputStream;
    .end local v9    # "socket":Landroid/net/LocalSocket;
    .end local v10    # "start":I
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v5

    .line 167
    .local v5, "ex":Ljava/io/IOException;
    :goto_4
    const-string v11, "HDMIListener"

    const-string v12, "Could not open listner socket"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 175
    .local v3, "e":Ljava/io/IOException;
    :try_start_7
    const-string v11, "HDMIListener"

    const-string v12, "IOException closing output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 180
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v11

    .line 186
    :catch_2
    move-exception v5

    .line 187
    .restart local v5    # "ex":Ljava/io/IOException;
    const-string v11, "HDMIListener"

    const-string v12, "IOException closing socket"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 166
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v9    # "socket":Landroid/net/LocalSocket;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9    # "socket":Landroid/net/LocalSocket;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    goto :goto_4
.end method

.method private writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "argument"    # Ljava/lang/String;

    .prologue
    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HDMIEventListener;->mOutputStream:Ljava/io/DataOutputStream;

    if-nez v2, :cond_0

    .line 99
    const-string v2, "HDMIListener"

    const-string v3, "No connection to hdmi daemon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 118
    return-void

    .line 101
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "builder":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    iget-object v2, p0, Lcom/android/server/HDMIEventListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 109
    iget-object v2, p0, Lcom/android/server/HDMIEventListener;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 110
    const-string v2, "HDMIListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeHDMICommand: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    .local v1, "ex":Ljava/io/IOException;
    :try_start_3
    const-string v2, "HDMIListener"

    const-string v3, "IOException in writeHDMICommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public changeDisplayCode(I)V
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 216
    const-string v0, "hdmi_change_code: "

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIEventListener;->writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public enableFullScreen(Z)V
    .locals 4
    .param p1, "fullenable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 236
    const-string v0, "HDMIListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableFullScreen fullenable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz p1, :cond_0

    .line 238
    const-string v0, "HDMIListener"

    const-string v1, "writeHDMICommand(HDMI_CMD_FULLSCREEN_ENABLE, null);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v0, "hdmi_fullscreen_enable: "

    invoke-direct {p0, v0, v3}, Lcom/android/server/HDMIEventListener;->writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v0, "HDMIListener"

    const-string v1, "writeHDMICommand(HDMI_CMD_FULLSCREEN_DISABLE, null);"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v0, "hdmi_fullscreen_disable: "

    invoke-direct {p0, v0, v3}, Lcom/android/server/HDMIEventListener;->writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isHDMIConnected()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/server/HDMIEventListener;->mHDMIConnected:Z

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 198
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HDMIEventListener;->listenToHDMISocket()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/HDMIEventListener;->enableFullScreen(Z)V

    .line 204
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "HDMIListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in HDMIListener thread!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCecCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "cecCmd"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v0, "hdmi_cec: "

    invoke-direct {p0, v0, p1}, Lcom/android/server/HDMIEventListener;->writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setHDCPEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 212
    const-string v1, "hdmi_hdcp: "

    new-instance v2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/HDMIEventListener;->writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHPDOption(Z)V
    .locals 3
    .param p1, "hpdOption"    # Z

    .prologue
    .line 228
    const-string v1, "hdmi_hpd: "

    new-instance v2, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/server/HDMIEventListener;->writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReproductionHeightRatio(F)V
    .locals 2
    .param p1, "asHeightRatio"    # F

    .prologue
    .line 224
    const-string v0, "set_reproduction_height: "

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIEventListener;->writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setReproductionWidthRatio(F)V
    .locals 2
    .param p1, "asWidthRatio"    # F

    .prologue
    .line 220
    const-string v0, "set_reproduction_width: "

    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/HDMIEventListener;->writeHDMICommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method
