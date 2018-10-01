.class Landroid/os/BlockMonitor$MessageInfo;
.super Ljava/lang/Object;
.source "BlockMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BlockMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageInfo"
.end annotation


# instance fields
.field public mCount:I

.field public mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Landroid/os/BlockMonitor$MessageInfo;->mKey:Ljava/lang/String;

    .line 377
    iput p2, p0, Landroid/os/BlockMonitor$MessageInfo;->mCount:I

    .line 378
    return-void
.end method
