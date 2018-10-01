.class public Landroid/hwcontrol/HwWidgetFactory$PermissionInformation;
.super Ljava/lang/Object;
.source "HwWidgetFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hwcontrol/HwWidgetFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionInformation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHwPermItemView(ZLandroid/view/LayoutInflater;)Landroid/widget/AppSecurityPermissions$PermissionItemView;
    .locals 3
    .param p0, "showMoneyItemLayout"    # Z
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 568
    if-eqz p0, :cond_0

    const v1, 0x207000b

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .line 571
    .local v0, "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    return-object v0

    .line 568
    .end local v0    # "permView":Landroid/widget/AppSecurityPermissions$PermissionItemView;
    :cond_0
    const v1, 0x207000a

    goto :goto_0
.end method

.method public static getPermissionImageView(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/view/View;
    .locals 2
    .param p0, "itemView"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    .line 583
    const v1, 0x2100049

    invoke-virtual {p0, v1}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 584
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method

.method public static getPermissionItemViewOld(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 592
    const v1, 0x207000c

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 593
    .local v0, "permView":Landroid/view/View;
    return-object v0
.end method

.method public static getPermissionItemViewOldImgView(Landroid/view/View;)Landroid/widget/ImageView;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 604
    const v1, 0x2100049

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 605
    .local v0, "imageView":Landroid/widget/ImageView;
    return-object v0
.end method

.method public static getPermissionItemViewOldPermDescView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 600
    const v1, 0x210004e

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 601
    .local v0, "permDescView":Landroid/widget/TextView;
    return-object v0
.end method

.method public static getPermissionItemViewOldPermGrpView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 596
    const v1, 0x210004d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 597
    .local v0, "permGrpView":Landroid/widget/TextView;
    return-object v0
.end method

.method public static getPermissionTextView(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/view/View;
    .locals 2
    .param p0, "mItemView"    # Landroid/widget/AppSecurityPermissions$PermissionItemView;

    .prologue
    .line 587
    const v1, 0x210004a

    invoke-virtual {p0, v1}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 588
    .local v0, "mView":Landroid/view/View;
    return-object v0
.end method

.method public static setPositiveButton(Landroid/app/AlertDialog$Builder;Landroid/app/AlertDialog;)V
    .locals 2
    .param p0, "builder"    # Landroid/app/AlertDialog$Builder;
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 574
    const v0, 0x20200d5

    new-instance v1, Landroid/hwcontrol/HwWidgetFactory$PermissionInformation$1;

    invoke-direct {v1, p1}, Landroid/hwcontrol/HwWidgetFactory$PermissionInformation$1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 581
    return-void
.end method
