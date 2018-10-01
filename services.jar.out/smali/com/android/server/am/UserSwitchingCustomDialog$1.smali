.class Lcom/android/server/am/UserSwitchingCustomDialog$1;
.super Landroid/os/Handler;
.source "UserSwitchingCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UserSwitchingCustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserSwitchingCustomDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserSwitchingCustomDialog;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingCustomDialog$1;->this$0:Lcom/android/server/am/UserSwitchingCustomDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingCustomDialog$1;->this$0:Lcom/android/server/am/UserSwitchingCustomDialog;

    invoke-virtual {v0}, Lcom/android/server/am/UserSwitchingCustomDialog;->startUser()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
