.class public Lcom/android/server/connectivity/HwCustTethering;
.super Ljava/lang/Object;
.source "HwCustTethering.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/HwCustTethering;->mContext:Landroid/content/Context;

    .line 12
    iput-object p1, p0, Lcom/android/server/connectivity/HwCustTethering;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public registerBroadcast(Ljava/lang/Object;Lcom/android/server/connectivity/Tethering;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "publicSync"    # Ljava/lang/Object;
    .param p2, "tethering"    # Lcom/android/server/connectivity/Tethering;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/server/connectivity/Tethering;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "ifaces":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;>;"
    return-void
.end method
