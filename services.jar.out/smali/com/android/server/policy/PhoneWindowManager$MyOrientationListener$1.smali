.class Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;)V
    .locals 0

    .prologue
    .line 899
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 903
    return-void
.end method
