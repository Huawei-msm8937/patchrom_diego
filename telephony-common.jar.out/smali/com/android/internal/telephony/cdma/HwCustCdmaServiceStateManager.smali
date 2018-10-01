.class public Lcom/android/internal/telephony/cdma/HwCustCdmaServiceStateManager;
.super Ljava/lang/Object;
.source "HwCustCdmaServiceStateManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEriBasedPlmn(Lcom/android/internal/telephony/cdma/CDMAPhone;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p2, "actualPlmnValue"    # Ljava/lang/String;

    .prologue
    .line 14
    return-object p2
.end method
