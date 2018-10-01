.class Lcom/android/server/am/HwBroadcastQueue$1;
.super Ljava/util/HashMap;
.source "HwBroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/HwBroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/HwBroadcastQueue;


# direct methods
.method constructor <init>(Lcom/android/server/am/HwBroadcastQueue;)V
    .locals 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/am/HwBroadcastQueue$1;->this$0:Lcom/android/server/am/HwBroadcastQueue;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 122
    const-string v0, "android.intent.action.SCREEN_ON"

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/HwBroadcastQueue$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method
