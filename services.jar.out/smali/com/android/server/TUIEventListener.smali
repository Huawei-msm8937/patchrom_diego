.class final Lcom/android/server/TUIEventListener;
.super Ljava/lang/Object;
.source "TrustedUIService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustedUIListener"

.field private static final TUI_MSG_CONNECTED:Ljava/lang/String; = "connected_tui"

.field private static final TUI_MSG_DISCONNECTED:Ljava/lang/String; = "disconnected_tui"

.field private static final TUI_SOCKET:Ljava/lang/String; = "tui_daemon"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTrustedUIService:Lcom/android/server/TrustedUIService;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Lcom/android/server/TrustedUIService;Landroid/content/Context;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/TrustedUIService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/server/TUIEventListener;->mTrustedUIService:Lcom/android/server/TrustedUIService;

    .line 152
    iput-object p2, p0, Lcom/android/server/TUIEventListener;->mContext:Landroid/content/Context;

    .line 153
    iget-object v1, p0, Lcom/android/server/TUIEventListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TUIEventListener;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 154
    .local v0, "pm":Landroid/os/PowerManager;
    const v1, 0x2000001a

    const-string v2, "*tui*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/TUIEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 155
    return-void
.end method

.method private handleTUIEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "TrustedUIListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "connected_tui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 161
    const-string v0, "TrustedUIListener"

    const-string v1, "WakeLock acquire"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/server/TUIEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 163
    iget-object v0, p0, Lcom/android/server/TUIEventListener;->mTrustedUIService:Lcom/android/server/TrustedUIService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/TrustedUIService;->setTrustedUIStatus(Z)V

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v0, "disconnected_tui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 165
    const-string v0, "TrustedUIListener"

    const-string v1, "WakeLock release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/server/TUIEventListener;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 167
    iget-object v0, p0, Lcom/android/server/TUIEventListener;->mTrustedUIService:Lcom/android/server/TrustedUIService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/TrustedUIService;->setTrustedUIStatus(Z)V

    goto :goto_0

    .line 169
    :cond_1
    const-string v0, "TrustedUIListener"

    const-string v1, " do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private listenToTUISocket()V
    .locals 13

    .prologue
    .line 174
    const/4 v7, 0x0

    .line 176
    .local v7, "socket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v7    # "socket":Landroid/net/LocalSocket;
    .local v8, "socket":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v10, "tui_daemon"

    sget-object v11, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v10, v11}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 179
    .local v0, "address":Landroid/net/LocalSocketAddress;
    invoke-virtual {v8, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 181
    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 182
    .local v6, "inputStream":Ljava/io/InputStream;
    const/16 v10, 0x200

    new-array v1, v10, [B

    .line 184
    .local v1, "buffer":[B
    :cond_0
    invoke-virtual {v6, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 185
    .local v2, "count":I
    if-gez v2, :cond_2

    move-object v7, v8

    .line 202
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v7    # "socket":Landroid/net/LocalSocket;
    :goto_0
    if-eqz v7, :cond_1

    .line 203
    :try_start_2
    invoke-virtual {v7}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 209
    :cond_1
    :goto_1
    const-string v10, "TrustedUIListener"

    const-string v11, "Failed to connect to TUI daemon"

    new-instance v12, Ljava/lang/IllegalStateException;

    invoke-direct {v12}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    return-void

    .line 188
    .end local v7    # "socket":Landroid/net/LocalSocket;
    .restart local v0    # "address":Landroid/net/LocalSocketAddress;
    .restart local v1    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :cond_2
    const/4 v9, 0x0

    .line 189
    .local v9, "start":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v2, :cond_0

    .line 190
    :try_start_3
    aget-byte v10, v1, v5

    if-nez v10, :cond_3

    .line 191
    new-instance v3, Ljava/lang/String;

    sub-int v10, v5, v9

    invoke-direct {v3, v1, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 192
    .local v3, "event":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/TUIEventListener;->handleTUIEvent(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 193
    add-int/lit8 v9, v5, 0x1

    .line 189
    .end local v3    # "event":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 197
    .end local v0    # "address":Landroid/net/LocalSocketAddress;
    .end local v1    # "buffer":[B
    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v8    # "socket":Landroid/net/LocalSocket;
    .end local v9    # "start":I
    .restart local v7    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v4

    .line 198
    .local v4, "ex":Ljava/io/IOException;
    :goto_3
    const-string v10, "TrustedUIListener"

    const-string v11, "Could not open listener socket"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v4    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 206
    .restart local v4    # "ex":Ljava/io/IOException;
    const-string v10, "TrustedUIListener"

    const-string v11, "IOException closing socket"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 197
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v7    # "socket":Landroid/net/LocalSocket;
    .restart local v8    # "socket":Landroid/net/LocalSocket;
    :catch_2
    move-exception v4

    move-object v7, v8

    .end local v8    # "socket":Landroid/net/LocalSocket;
    .restart local v7    # "socket":Landroid/net/LocalSocket;
    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TUIEventListener;->mTrustedUIService:Lcom/android/server/TrustedUIService;

    invoke-virtual {v1}, Lcom/android/server/TrustedUIService;->TUIServiceLibraryInit()Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    const-string v1, "TrustedUIListener"

    const-string v2, " TUIServiceLibraryInit failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TUIEventListener;->listenToTUISocket()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 223
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "TrustedUIListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in TUIListener thread!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
