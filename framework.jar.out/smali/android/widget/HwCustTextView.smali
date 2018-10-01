.class public Landroid/widget/HwCustTextView;
.super Ljava/lang/Object;
.source "HwCustTextView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public changeEndAlignment(Landroid/text/Layout$Alignment;)Landroid/text/Layout$Alignment;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 46
    return-object p1
.end method

.method public changeStartAlignment(Landroid/text/Layout$Alignment;)Landroid/text/Layout$Alignment;
    .locals 0
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 37
    return-object p1
.end method

.method public checkAlignmentChange()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
