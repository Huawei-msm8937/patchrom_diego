.class Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroid/widget/ListPopupWindow$ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 334
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$ForwardingListener;-><init>(Landroid/view/View;)V

    .line 335
    return-void
.end method


# virtual methods
.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$000(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mPopupCallback:Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$000(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onForwardingStarted()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 348
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$100(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
    invoke-static {v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$100(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Lcom/android/internal/view/menu/ActionMenuItemView;

    # getter for: Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-static {v3}, Lcom/android/internal/view/menu/ActionMenuItemView;->access$200(Lcom/android/internal/view/menu/ActionMenuItemView;)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 350
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 352
    .end local v0    # "popup":Landroid/widget/ListPopupWindow;
    :cond_0
    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v0

    .line 358
    .local v0, "popup":Landroid/widget/ListPopupWindow;
    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 360
    const/4 v1, 0x1

    .line 362
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method