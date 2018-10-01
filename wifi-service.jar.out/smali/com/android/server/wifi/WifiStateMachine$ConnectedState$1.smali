.class Lcom/android/server/wifi/WifiStateMachine$ConnectedState$1;
.super Ljava/lang/Object;
.source "WifiStateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/WifiStateMachine$ConnectedState;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine$ConnectedState;)V
    .locals 0

    .prologue
    .line 9842
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 9845
    iget-object v0, p0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState$1;->this$1:Lcom/android/server/wifi/WifiStateMachine$ConnectedState;

    iget-object v0, v0, Lcom/android/server/wifi/WifiStateMachine$ConnectedState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v1, 0x3e8

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->updateDefaultRouteMacAddress(I)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->access$24300(Lcom/android/server/wifi/WifiStateMachine;I)Ljava/lang/String;

    .line 9846
    return-void
.end method
