.class public Lcom/android/internal/telephony/HwCustHotplugController;
.super Ljava/lang/Object;
.source "HwCustHotplugController.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/internal/telephony/HwCustHotplugController;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public change4GString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 18
    return-object p1
.end method
