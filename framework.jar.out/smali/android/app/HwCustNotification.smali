.class public Landroid/app/HwCustNotification;
.super Ljava/lang/Object;
.source "HwCustNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInvertColorRequired(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setCustomizedInvertColorText(Ljava/lang/CharSequence;Landroid/content/Context;ILandroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # I
    .param p4, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 45
    return-void
.end method

.method public setNotiActionButtonTextSize(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "button"    # Landroid/widget/RemoteViews;
    .param p3, "id"    # I

    .prologue
    .line 31
    return-void
.end method
