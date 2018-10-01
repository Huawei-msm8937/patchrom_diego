.class Lcom/android/server/wifi/WifiApConfigStore$ActiveState;
.super Lcom/android/internal/util/State;
.source "WifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiApConfigStore;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiApConfigStore$ActiveState$1;-><init>(Lcom/android/server/wifi/WifiApConfigStore$ActiveState;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 152
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 155
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 176
    :goto_0
    return v0

    .line 159
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # invokes: Lcom/android/server/wifi/WifiApConfigStore;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/wifi/WifiApConfigStore;->access$500(Lcom/android/server/wifi/WifiApConfigStore;Landroid/os/Message;)V

    :goto_1
    move v0, v1

    .line 176
    goto :goto_0

    .line 163
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mMarketingName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$600(Lcom/android/server/wifi/WifiApConfigStore;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mMarketingName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$600(Lcom/android/server/wifi/WifiApConfigStore;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v3}, Lcom/android/server/wifi/WifiApConfigStore;->access$000(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$700(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "softap_name_changed"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 171
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    iget-object v2, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mInactiveState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$800(Lcom/android/server/wifi/WifiApConfigStore;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiApConfigStore;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiApConfigStore;->access$900(Lcom/android/server/wifi/WifiApConfigStore;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiApConfigStore$ActiveState;->this$0:Lcom/android/server/wifi/WifiApConfigStore;

    # getter for: Lcom/android/server/wifi/WifiApConfigStore;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/wifi/WifiApConfigStore;->access$700(Lcom/android/server/wifi/WifiApConfigStore;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "softap_name_changed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 155
    :pswitch_data_0
    .packed-switch 0x20019
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
