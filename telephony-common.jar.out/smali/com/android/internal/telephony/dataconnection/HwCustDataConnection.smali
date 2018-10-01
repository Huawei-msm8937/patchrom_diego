.class public Lcom/android/internal/telephony/dataconnection/HwCustDataConnection;
.super Ljava/lang/Object;
.source "HwCustDataConnection.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public setMtuIfNeeded(Landroid/net/LinkProperties;Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 1
    .param p1, "lp"    # Landroid/net/LinkProperties;
    .param p2, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public whetherSetApnByCust(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method
