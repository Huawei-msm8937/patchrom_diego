.class public Lcom/android/server/input/HwCustInputManagerService;
.super Ljava/lang/Object;
.source "HwCustInputManagerService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "HwCustInputManagerService"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public registerContentObserverForSetGloveMode(Landroid/content/Context;)I
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 39
    const-string v0, "HwCustInputManagerService"

    const-string v1, "registerContentObserverForSetGloveMode 0"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    return v0
.end method
