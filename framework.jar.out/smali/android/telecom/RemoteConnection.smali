.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$CallbackRecord;,
        Landroid/telecom/RemoteConnection$VideoProvider;,
        Landroid/telecom/RemoteConnection$Callback;
    }
.end annotation


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private final mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/RemoteConference;

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectionCapabilities:I

.field private final mConnectionId:Ljava/lang/String;

.field private mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private mIsVoipAudioMode:Z

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableconferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

.field private mVideoState:I


# direct methods
.method constructor <init>(Landroid/telecom/DisconnectCause;)V
    .locals 4
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v3, 0x1

    .line 647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 584
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 587
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 648
    const-string v0, "NULL"

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 650
    const/4 v0, 0x6

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 651
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 652
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    const/4 v3, 0x1

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 584
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 587
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 610
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 611
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 612
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 613
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 614
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    const/4 v3, 0x1

    .line 620
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    .line 583
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    .line 584
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 587
    iput v3, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 621
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    .line 622
    iput-object p2, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 623
    iput-boolean v3, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 624
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 625
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 626
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 627
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    .line 628
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 629
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 630
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 631
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 632
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 633
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 634
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 635
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v0

    iput v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 636
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 637
    return-void
.end method

.method static synthetic access$100(Landroid/telecom/RemoteConnection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public static failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1333
    new-instance v0, Landroid/telecom/RemoteConnection;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 822
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 825
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public answer()V
    .locals 2

    .prologue
    .line 834
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .prologue
    .line 848
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :cond_0
    :goto_0
    return-void

    .line 851
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 896
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 899
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getAddressPresentation()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getConference()Landroid/telecom/RemoteConference;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method public getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1002
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    return v0
.end method

.method getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Landroid/telecom/RemoteConnection;->mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    return v0
.end method

.method public hold()V
    .locals 2

    .prologue
    .line 872
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isRingbackRequested()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    return v0
.end method

.method public isVoipAudioMode()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    return v0
.end method

.method onPostDialChar(C)V
    .locals 6
    .param p1, "nextChar"    # C

    .prologue
    .line 1158
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1159
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1160
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1161
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$7;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$7;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;C)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1168
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method public playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .prologue
    .line 914
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 917
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    .prologue
    .line 960
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :cond_0
    :goto_0
    return-void

    .line 963
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 660
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    .line 661
    return-void
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Landroid/telecom/RemoteConnection;->unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 671
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 672
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    new-instance v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/RemoteConnection$CallbackRecord;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_0
    return-void
.end method

.method public reject()V
    .locals 2

    .prologue
    .line 860
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 863
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setAddress(Landroid/net/Uri;I)V
    .locals 9
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 1236
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mAddress:Landroid/net/Uri;

    .line 1237
    iput p2, p0, Landroid/telecom/RemoteConnection;->mAddressPresentation:I

    .line 1238
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1239
    .local v7, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v3, p0

    .line 1240
    .local v3, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    .line 1241
    .local v2, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Landroid/telecom/RemoteConnection$12;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$12;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1248
    .end local v2    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v3    # "connection":Landroid/telecom/RemoteConnection;
    .end local v7    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 977
    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, Landroid/telecom/RemoteConnection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 978
    return-void
.end method

.method public setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 2
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 987
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 990
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setCallerDisplayName(Ljava/lang/String;I)V
    .locals 9
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 1252
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayName:Ljava/lang/String;

    .line 1253
    iput p2, p0, Landroid/telecom/RemoteConnection;->mCallerDisplayNamePresentation:I

    .line 1254
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1255
    .local v7, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v3, p0

    .line 1256
    .local v3, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    .line 1257
    .local v2, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Landroid/telecom/RemoteConnection$13;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$13;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1265
    .end local v2    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v3    # "connection":Landroid/telecom/RemoteConnection;
    .end local v7    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setConference(Landroid/telecom/RemoteConference;)V
    .locals 6
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1286
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    if-eq v4, p1, :cond_0

    .line 1287
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mConference:Landroid/telecom/RemoteConference;

    .line 1288
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1289
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1290
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1291
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$15;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$15;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1299
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setConferenceableConnections(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1269
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1270
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1271
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1272
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1273
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1274
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$14;

    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConnection$14;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1282
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setConnectionCapabilities(I)V
    .locals 6
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 1098
    iput p1, p0, Landroid/telecom/RemoteConnection;->mConnectionCapabilities:I

    .line 1099
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1100
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1101
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1102
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$4;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$4;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1109
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setDestroyed()V
    .locals 7

    .prologue
    .line 1115
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1117
    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_0

    .line 1118
    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x1

    const-string v6, "Connection destroyed."

    invoke-direct {v4, v5, v6}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 1122
    :cond_0
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1123
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1124
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1125
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$5;

    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConnection$5;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1132
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_1
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1134
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    .line 1136
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 6
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v5, 0x6

    .line 1048
    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v4, v5, :cond_0

    .line 1049
    iput v5, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 1050
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1052
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1053
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1054
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1055
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$2;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$2;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1063
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method public setDisconnectedWithSsNotification(ILjava/lang/String;II)V
    .locals 7
    .param p1, "disconnectCause"    # I
    .param p2, "disconnectMessage"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "code"    # I

    .prologue
    .line 1068
    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection$CallbackRecord;

    .local v0, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 1069
    invoke-virtual/range {v0 .. v5}, Landroid/telecom/RemoteConnection$CallbackRecord;->setDisconnectedWithSsNotification(Landroid/telecom/RemoteConnection;ILjava/lang/String;II)V

    goto :goto_0

    .line 1072
    .end local v0    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setExtras(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1303
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mExtras:Landroid/os/Bundle;

    .line 1304
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1305
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1306
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1307
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$16;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$16;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1314
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setIsVoipAudioMode(Z)V
    .locals 6
    .param p1, "isVoip"    # Z

    .prologue
    .line 1206
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mIsVoipAudioMode:Z

    .line 1207
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1208
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1209
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1210
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$10;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$10;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1217
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3
    .param p1, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 1318
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1319
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/RemoteConnection$CallbackRecord;->setPhoneAccountHandle(Landroid/telecom/RemoteConnection;Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    .line 1321
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setPostDialWait(Ljava/lang/String;)V
    .locals 6
    .param p1, "remainingDigits"    # Ljava/lang/String;

    .prologue
    .line 1142
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1143
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1144
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1145
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$6;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$6;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1152
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setRingbackRequested(Z)V
    .locals 6
    .param p1, "ringback"    # Z

    .prologue
    .line 1079
    iget-boolean v4, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    if-eq v4, p1, :cond_0

    .line 1080
    iput-boolean p1, p0, Landroid/telecom/RemoteConnection;->mRingbackRequested:Z

    .line 1081
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1082
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1083
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1084
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$3;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$3;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1092
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 1029
    iget v4, p0, Landroid/telecom/RemoteConnection;->mState:I

    if-eq v4, p1, :cond_0

    .line 1030
    iput p1, p0, Landroid/telecom/RemoteConnection;->mState:I

    .line 1031
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1032
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1033
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1034
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$1;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$1;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1042
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 6
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 1221
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1222
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1223
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1224
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1225
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$11;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$11;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1232
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 6
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 1191
    iput-object p1, p0, Landroid/telecom/RemoteConnection;->mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 1192
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1193
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1194
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1195
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$9;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$9;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1202
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method setVideoState(I)V
    .locals 6
    .param p1, "videoState"    # I

    .prologue
    .line 1174
    iput p1, p0, Landroid/telecom/RemoteConnection;->mVideoState:I

    .line 1175
    iget-object v4, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1176
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1177
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1178
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$8;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$8;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1185
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_0
    return-void
.end method

.method public stopDtmfTone()V
    .locals 2

    .prologue
    .line 930
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 933
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unhold()V
    .locals 2

    .prologue
    .line 884
    :try_start_0
    iget-boolean v0, p0, Landroid/telecom/RemoteConnection;->mConnected:Z

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Landroid/telecom/RemoteConnection;->mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, Landroid/telecom/RemoteConnection;->mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 887
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 682
    if-eqz p1, :cond_1

    .line 683
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 684
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 685
    iget-object v2, p0, Landroid/telecom/RemoteConnection;->mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 690
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_1
    return-void
.end method
