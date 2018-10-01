.class Lcom/android/internal/widget/FloatingToolbar$2;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 109
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    # getter for: Lcom/android/internal/widget/FloatingToolbar;->mOrientation:I
    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar;->access$000(Lcom/android/internal/widget/FloatingToolbar;)I

    move-result v3

    if-eq v2, v3, :cond_1

    move v0, v1

    .line 110
    .local v0, "oriChanged":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 111
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    # setter for: Lcom/android/internal/widget/FloatingToolbar;->mOrientation:I
    invoke-static {v2, v3}, Lcom/android/internal/widget/FloatingToolbar;->access$002(Lcom/android/internal/widget/FloatingToolbar;I)I

    .line 113
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    # setter for: Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z
    invoke-static {v2, v1}, Lcom/android/internal/widget/FloatingToolbar;->access$102(Lcom/android/internal/widget/FloatingToolbar;Z)Z

    .line 119
    :cond_0
    :goto_1
    return-void

    .line 109
    .end local v0    # "oriChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    .restart local v0    # "oriChanged":Z
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    # getter for: Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar;->access$200(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    # getter for: Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar;->access$200(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    move-result-object v2

    # invokes: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->viewPortHasChanged()Z
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->access$300(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    # setter for: Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z
    invoke-static {v2, v1}, Lcom/android/internal/widget/FloatingToolbar;->access$102(Lcom/android/internal/widget/FloatingToolbar;Z)Z

    .line 117
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar$2;->this$0:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar;->updateLayout()Lcom/android/internal/widget/FloatingToolbar;

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 123
    return-void
.end method
