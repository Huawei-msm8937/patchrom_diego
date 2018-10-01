.class public Landroid/media/session/MediaSession$CallbackStub;
.super Landroid/media/session/ISessionCallback$Stub;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackStub"
.end annotation


# instance fields
.field private mMediaSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSession;)V
    .locals 1
    .param p1, "session"    # Landroid/media/session/MediaSession;

    .prologue
    .line 917
    invoke-direct {p0}, Landroid/media/session/ISessionCallback$Stub;-><init>()V

    .line 918
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    .line 919
    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 1058
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1059
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1060
    # invokes: Landroid/media/session/MediaSession;->dispatchAdjustVolume(I)V
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->access$1900(Landroid/media/session/MediaSession;I)V

    .line 1062
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 923
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 924
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 925
    # invokes: Landroid/media/session/MediaSession;->postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    invoke-static {v0, p1, p2, p3}, Landroid/media/session/MediaSession;->access$300(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 927
    :cond_0
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1050
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1051
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1052
    # invokes: Landroid/media/session/MediaSession;->dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$1800(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1054
    :cond_0
    return-void
.end method

.method public onFastForward()V
    .locals 2

    .prologue
    .line 1018
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1019
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1020
    # invokes: Landroid/media/session/MediaSession;->dispatchFastForward()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1400(Landroid/media/session/MediaSession;)V

    .line 1022
    :cond_0
    return-void
.end method

.method public onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p2, "sequenceNumber"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    .line 932
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 934
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 935
    :try_start_0
    # invokes: Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->access$400(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    :cond_0
    if-eqz p3, :cond_1

    .line 939
    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 942
    :cond_1
    return-void

    .line 938
    :catchall_0
    move-exception v1

    if-eqz p3, :cond_2

    .line 939
    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    throw v1
.end method

.method public onNext()V
    .locals 2

    .prologue
    .line 1002
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1003
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1004
    # invokes: Landroid/media/session/MediaSession;->dispatchNext()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1200(Landroid/media/session/MediaSession;)V

    .line 1006
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 986
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 987
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 988
    # invokes: Landroid/media/session/MediaSession;->dispatchPause()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1000(Landroid/media/session/MediaSession;)V

    .line 990
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 946
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 947
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 948
    # invokes: Landroid/media/session/MediaSession;->dispatchPlay()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$500(Landroid/media/session/MediaSession;)V

    .line 950
    :cond_0
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 954
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 955
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 956
    # invokes: Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$600(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 958
    :cond_0
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 962
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 963
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 964
    # invokes: Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$700(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 966
    :cond_0
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 970
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 971
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 972
    # invokes: Landroid/media/session/MediaSession;->dispatchPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$800(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 974
    :cond_0
    return-void
.end method

.method public onPrevious()V
    .locals 2

    .prologue
    .line 1010
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1011
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1012
    # invokes: Landroid/media/session/MediaSession;->dispatchPrevious()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1300(Landroid/media/session/MediaSession;)V

    .line 1014
    :cond_0
    return-void
.end method

.method public onRate(Landroid/media/Rating;)V
    .locals 2
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 1042
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1043
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1044
    # invokes: Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/Rating;)V
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->access$1700(Landroid/media/session/MediaSession;Landroid/media/Rating;)V

    .line 1046
    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 2

    .prologue
    .line 1026
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1027
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1028
    # invokes: Landroid/media/session/MediaSession;->dispatchRewind()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1500(Landroid/media/session/MediaSession;)V

    .line 1030
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 1034
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1035
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1036
    # invokes: Landroid/media/session/MediaSession;->dispatchSeekTo(J)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$1600(Landroid/media/session/MediaSession;J)V

    .line 1038
    :cond_0
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1066
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1067
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1068
    # invokes: Landroid/media/session/MediaSession;->dispatchSetVolumeTo(I)V
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->access$2000(Landroid/media/session/MediaSession;I)V

    .line 1070
    :cond_0
    return-void
.end method

.method public onSkipToTrack(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 978
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 979
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 980
    # invokes: Landroid/media/session/MediaSession;->dispatchSkipToItem(J)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$900(Landroid/media/session/MediaSession;J)V

    .line 982
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 994
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 995
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 996
    # invokes: Landroid/media/session/MediaSession;->dispatchStop()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1100(Landroid/media/session/MediaSession;)V

    .line 998
    :cond_0
    return-void
.end method
