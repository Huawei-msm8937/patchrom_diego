.class Lcom/android/internal/telephony/PhoneBase$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    .line 118
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    # getter for: Lcom/android/internal/telephony/PhoneBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneBase;->access$000(Lcom/android/internal/telephony/PhoneBase;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImsIntentReceiver: action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v2, "android:phone_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const-string v2, "android:phone_id"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 122
    .local v0, "extraPhoneId":I
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    # getter for: Lcom/android/internal/telephony/PhoneBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneBase;->access$000(Lcom/android/internal/telephony/PhoneBase;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mImsIntentReceiver: extraPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-eq v0, v5, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 145
    .end local v0    # "extraPhoneId":I
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v3

    .line 130
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 133
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    if-eqz v1, :cond_3

    .line 134
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isServiceAvailable()Z

    move-result v4

    # setter for: Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/PhoneBase;->access$102(Lcom/android/internal/telephony/PhoneBase;Z)Z

    .line 139
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->updateImsPhone()V

    .line 144
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_2
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 136
    .restart local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x1

    # setter for: Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/PhoneBase;->access$102(Lcom/android/internal/telephony/PhoneBase;Z)Z

    goto :goto_1

    .line 140
    .end local v1    # "imsManager":Lcom/android/ims/ImsManager;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    const/4 v4, 0x0

    # setter for: Lcom/android/internal/telephony/PhoneBase;->mImsServiceReady:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/PhoneBase;->access$102(Lcom/android/internal/telephony/PhoneBase;Z)Z

    .line 142
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase$1;->this$0:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->updateImsPhone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
