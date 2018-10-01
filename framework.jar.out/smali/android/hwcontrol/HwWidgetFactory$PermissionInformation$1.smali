.class final Landroid/hwcontrol/HwWidgetFactory$PermissionInformation$1;
.super Ljava/lang/Object;
.source "HwWidgetFactory.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hwcontrol/HwWidgetFactory$PermissionInformation;->setPositiveButton(Landroid/app/AlertDialog$Builder;Landroid/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 574
    iput-object p1, p0, Landroid/hwcontrol/HwWidgetFactory$PermissionInformation$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 576
    iget-object v0, p0, Landroid/hwcontrol/HwWidgetFactory$PermissionInformation$1;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Landroid/hwcontrol/HwWidgetFactory$PermissionInformation$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 579
    :cond_0
    return-void
.end method
