.class Lcom/android/server/policy/WindowOrientationListener$1;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Lcom/android/server/policy/HWExtMotionRotationProcessor$WindowOrientationListenerProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$1;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyProposedRotation(I)V
    .locals 1
    .param p1, "proposedRotation"    # I

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$1;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 943
    return-void
.end method

.method public setCurrentOrientation(I)V
    .locals 1
    .param p1, "proposedRotation"    # I

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$1;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # setter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v0, p1}, Lcom/android/server/policy/WindowOrientationListener;->access$502(Lcom/android/server/policy/WindowOrientationListener;I)I

    .line 939
    return-void
.end method
