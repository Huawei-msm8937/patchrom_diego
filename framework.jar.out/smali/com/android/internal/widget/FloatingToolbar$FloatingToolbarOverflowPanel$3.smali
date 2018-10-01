.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;
.super Landroid/widget/ArrayAdapter;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->createOverflowListView()Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;Landroid/content/Context;ILandroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 1375
    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    iput-object p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method private getIconOnlyView(ILandroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 1413
    if-eqz p2, :cond_0

    .line 1414
    move-object v0, p2

    .line 1419
    .local v0, "menuButton":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 1420
    .local v1, "menuItem":Landroid/view/MenuItem;
    const v2, 0x1020054

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1423
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->access$3100(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1424
    return-object v0

    .line 1416
    .end local v0    # "menuButton":Landroid/view/View;
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->val$context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x109005c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .restart local v0    # "menuButton":Landroid/view/View;
    goto :goto_0
.end method

.method private getStringTitleView(ILandroid/view/View;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;

    .prologue
    .line 1399
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 1400
    check-cast v0, Landroid/widget/TextView;

    .line 1404
    .local v0, "menuButton":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 1405
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1407
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->this$0:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;

    # getter for: Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->mOverflowWidth:I
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;->access$3100(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 1408
    return-object v0

    .line 1402
    .end local v0    # "menuButton":Landroid/widget/TextView;
    .end local v1    # "menuItem":Landroid/view/MenuItem;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->createOverflowMenuItemButton(Landroid/content/Context;)Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar;->access$2900(Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    .restart local v0    # "menuButton":Landroid/widget/TextView;
    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1383
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    # invokes: Lcom/android/internal/widget/FloatingToolbar;->isIconOnlyMenuItem(Landroid/view/MenuItem;)Z
    invoke-static {v0}, Lcom/android/internal/widget/FloatingToolbar;->access$2500(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1384
    const/4 v0, 0x1

    .line 1386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1391
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1392
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getIconOnlyView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 1394
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarOverflowPanel$3;->getStringTitleView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1378
    const/4 v0, 0x2

    return v0
.end method
