.class public Lcom/android/internal/telephony/dataconnection/HwCustDcTracker;
.super Ljava/lang/Object;
.source "HwCustDcTracker.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public handleCustMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 33
    return-void
.end method

.method public isPSAllowedByFdn()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public registerForFdn()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public unregisterForFdn()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method
