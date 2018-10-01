.class public Lcom/android/internal/telephony/HwCustPhoneManager;
.super Ljava/lang/Object;
.source "HwCustPhoneManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSpecialAPN(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 62
    return-void
.end method

.method public changeMMItoUSSD(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "poundString"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getVirtualNetEccNoCard(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVirtualNetEccWihCard(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public initParamByPlmn(Lcom/android/internal/telephony/uicc/SIMRecords;Landroid/content/Context;)V
    .locals 0
    .param p1, "mSIMRecords"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "mContext"    # Landroid/content/Context;

    .prologue
    .line 32
    return-void
.end method

.method public isStringHuaweiIgnoreCode(Lcom/android/internal/telephony/gsm/GSMPhone;Ljava/lang/String;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportEccFormVirtualNet()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportOrangeApn(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method
