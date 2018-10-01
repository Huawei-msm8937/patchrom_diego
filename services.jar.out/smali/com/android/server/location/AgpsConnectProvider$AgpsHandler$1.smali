.class Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$1;
.super Ljava/lang/Object;
.source "AgpsConnectProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$1;->this$1:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler$1;->this$1:Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;

    # invokes: Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->handleInit()V
    invoke-static {v0}, Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;->access$200(Lcom/android/server/location/AgpsConnectProvider$AgpsHandler;)V

    .line 227
    return-void
.end method
