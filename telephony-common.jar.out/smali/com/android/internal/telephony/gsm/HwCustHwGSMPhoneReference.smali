.class public Lcom/android/internal/telephony/gsm/HwCustHwGSMPhoneReference;
.super Ljava/lang/Object;
.source "HwCustHwGSMPhoneReference.java"


# instance fields
.field mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .param p1, "mGSMPhone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/HwCustHwGSMPhoneReference;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 36
    return-void
.end method


# virtual methods
.method public filterActAndRepeatedItems(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/OperatorInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "searchResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/OperatorInfo;>;"
    return-object p1
.end method

.method public getCustOperatorNameBySpn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "rplmn"    # Ljava/lang/String;
    .param p2, "tempName"    # Ljava/lang/String;

    .prologue
    .line 41
    return-object p2
.end method

.method public launchOrCancelCsgPeriodicSearchTimer()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public modifyTheFormatName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "rplmn"    # Ljava/lang/String;
    .param p2, "tempName"    # Ljava/lang/String;
    .param p3, "radioTechStr"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerForCsgRecordsLoadedEvent()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public selectCsgNetworkManually(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 60
    return-void
.end method

.method public unregisterForCsgRecordsLoadedEvent()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
