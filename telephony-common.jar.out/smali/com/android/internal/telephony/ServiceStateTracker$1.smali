.class Lcom/android/internal/telephony/ServiceStateTracker$1;
.super Ljava/lang/Object;
.source "ServiceStateTracker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 295
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 302
    if-nez p1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v0, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultDisplayState:I

    .line 304
    .local v0, "oldState":I
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultDisplayState:I

    .line 305
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultDisplayState:I

    if-eq v1, v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDefaultDisplayState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-boolean v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    if-nez v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessage(Landroid/os/Message;)Z

    .line 311
    .end local v0    # "oldState":I
    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    .line 298
    return-void
.end method
