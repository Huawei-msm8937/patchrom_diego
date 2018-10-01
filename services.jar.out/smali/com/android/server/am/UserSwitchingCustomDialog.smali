.class final Lcom/android/server/am/UserSwitchingCustomDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingCustomDialog.java"


# static fields
.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .param p4, "userName"    # Ljava/lang/String;
    .param p5, "aboveSystem"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 56
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "androidhwext:style/Theme.Emui.Dialog"

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, p2, v3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 101
    new-instance v3, Lcom/android/server/am/UserSwitchingCustomDialog$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/UserSwitchingCustomDialog$1;-><init>(Lcom/android/server/am/UserSwitchingCustomDialog;)V

    iput-object v3, p0, Lcom/android/server/am/UserSwitchingCustomDialog;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingCustomDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 59
    iput p3, p0, Lcom/android/server/am/UserSwitchingCustomDialog;->mUserId:I

    .line 61
    invoke-virtual {p0, v6}, Lcom/android/server/am/UserSwitchingCustomDialog;->setCancelable(Z)V

    .line 62
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 64
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900f8

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 65
    .local v2, "view":Landroid/view/View;
    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x10404f3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p4, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingCustomDialog;->setView(Landroid/view/View;)V

    .line 69
    if-eqz p5, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 73
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x110

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 75
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingCustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 76
    return-void
.end method


# virtual methods
.method public declared-synchronized setUserid(I)V
    .locals 1
    .param p1, "userid"    # I

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/am/UserSwitchingCustomDialog;->mUserId:I

    .line 116
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingCustomDialog;->startUser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-void
.end method

.method startUser()V
    .locals 4

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/UserSwitchingCustomDialog;->mStartedUser:Z

    if-nez v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingCustomDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/UserSwitchingCustomDialog;->mUserId:I

    invoke-virtual {v2, v3, p0}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    move-result v0

    .line 88
    .local v0, "isSuccess":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/UserSwitchingCustomDialog;->mStartedUser:Z

    .line 89
    iget-object v2, p0, Lcom/android/server/am/UserSwitchingCustomDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "text":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2020129

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 98
    .end local v0    # "isSuccess":Z
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    .line 99
    return-void

    .line 94
    .restart local v0    # "isSuccess":Z
    .restart local v1    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingCustomDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x202012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 98
    .end local v0    # "isSuccess":Z
    .end local v1    # "text":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
