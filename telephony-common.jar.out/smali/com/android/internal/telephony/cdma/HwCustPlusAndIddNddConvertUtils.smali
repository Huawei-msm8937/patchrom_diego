.class public Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;
.super Ljava/lang/Object;
.source "HwCustPlusAndIddNddConvertUtils.java"


# static fields
.field private static final DBG_NUM:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "HwCustPlusAndIddNddConvertUtils"

.field public static final PLUS_PREFIX:Ljava/lang/String; = "+"

.field private static plusCountryList:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->getInstance()Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->plusCountryList:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurMccBySidLtmoff(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v4, "ril.radio.cdma.nw_mcc"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "sMcc":Ljava/lang/String;
    const-string v4, "ril.radio.cdma.ltmoffset"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "sLtmoff":Ljava/lang/String;
    const-string v4, "HwCustPlusAndIddNddConvertUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plus: getCurMccBySidLtmoff Mcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Sid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",Ltmoff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "findMcc":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->plusCountryList:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->getItemsFromSidConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 61
    .local v1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 66
    :cond_0
    const-string v4, "HwCustPlusAndIddNddConvertUtils"

    const-string v5, "plus: no mcc_array found in ConflictTable, try to get mcc in Main Table"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v4, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->plusCountryList:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->getMccFromMainTableBySid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    if-nez v0, :cond_1

    .line 78
    const-string v4, "HwCustPlusAndIddNddConvertUtils"

    const-string v5, "plus: could not find mcc by sid and ltmoff, use Network Mcc anyway"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    move-object v0, v3

    .line 81
    :cond_1
    const-string v4, "HwCustPlusAndIddNddConvertUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plus: getCurMccBySidLtmoff, mcc = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-object v0

    .line 73
    :cond_2
    const-string v4, "HwCustPlusAndIddNddConvertUtils"

    const-string v5, "plus: more than 2 mcc found in ConflictTable"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v4, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->plusCountryList:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->getCcFromConflictTableByLTM(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getMccIddListForSms()Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    .locals 5

    .prologue
    .line 183
    const-string v2, "ril.radio.cdma.icc_mcc"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "mcc":Ljava/lang/String;
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plus: getMccIddListForSms Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, 0x0

    .line 187
    .local v1, "mccIddNddSid":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    sget-object v2, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->plusCountryList:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    if-eqz v2, :cond_0

    .line 188
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plus: [canFormatPlusCodeForSms] Mcc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    sget-object v2, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->plusCountryList:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->getItemFromCountryListByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    move-result-object v1

    .line 191
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plus: getMccIddListForSms getItemFromCountryListByMcc mccIddNddSid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    return-object v1
.end method

.method private static getNetworkMccIddList()Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    .locals 5

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "mccIddNddSid":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    sget-object v2, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->plusCountryList:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    if-eqz v2, :cond_2

    .line 37
    const-string v2, "ril.currMcc"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "findMcc":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    const-string v3, "plus: getNetworkMccIddList could not find mcc in ril.curMcc"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v1, 0x0

    .line 47
    .end local v0    # "findMcc":Ljava/lang/String;
    .end local v1    # "mccIddNddSid":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    :goto_0
    return-object v1

    .line 43
    .restart local v0    # "findMcc":Ljava/lang/String;
    .restart local v1    # "mccIddNddSid":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->plusCountryList:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->getItemFromCountryListByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    move-result-object v1

    .line 45
    .end local v0    # "findMcc":Ljava/lang/String;
    :cond_2
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plus: getNetworkMccIddList mccIddNddSid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static removePlusAddIdd(Ljava/lang/String;Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "mccIddNddSid"    # Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    .prologue
    const/4 v5, 0x1

    .line 87
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 90
    :cond_0
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    const-string v3, "plus: removePlusAddIdd input param invalid"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    .line 111
    :goto_0
    return-object v0

    .line 94
    :cond_1
    move-object v0, p0

    .line 95
    .local v0, "formatNum":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Cc:Ljava/lang/String;

    .line 96
    .local v1, "sCC":Ljava/lang/String;
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plus: number auto format correctly, mccIddNddSid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replaceIddNddWithPlus(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "toa"    # I

    .prologue
    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 150
    :cond_0
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    const-string v3, "plus: replaceIddNddWithPlus please check the param "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-object p0

    .line 154
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->getNetworkMccIddList()Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    move-result-object v1

    .line 155
    .local v1, "mccIddNddSid":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    if-nez v1, :cond_2

    .line 156
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    const-string v3, "plus: replaceIddNddWithPlus find no operator that match the MCC "

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_2
    const-string v2, "HwCustPlusAndIddNddConvertUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plus: replaceIddNddWithPlus mccIddNddSid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "ccIndex":I
    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    const/4 v0, 0x1

    .line 166
    :cond_3
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 169
    const/16 p1, 0x91

    .line 173
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 176
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 179
    goto :goto_0
.end method

.method public static replaceIddNddWithPlusForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 219
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 220
    :cond_0
    const-string v5, "HwCustPlusAndIddNddConvertUtils"

    const-string v6, "plus: [replaceIddNddWithPlusForSms] please check the param "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p0

    .line 245
    :cond_1
    :goto_0
    return-object v2

    .line 224
    :cond_2
    move-object v2, p0

    .line 225
    .local v2, "formatNumber":Ljava/lang/String;
    const/4 v4, 0x0

    .line 226
    .local v4, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 228
    .local v0, "Find":Z
    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 229
    invoke-static {}, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->getMccIddListForSms()Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    move-result-object v3

    .line 230
    .local v3, "mccIddNddSid":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    if-nez v3, :cond_3

    .line 231
    const-string v5, "HwCustPlusAndIddNddConvertUtils"

    const-string v6, "plus: [replaceIddNddWithPlusForSms] find no operator that match the MCC "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_3
    iget-object v1, v3, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    .line 236
    .local v1, "Idd":Ljava/lang/String;
    const-string v5, "HwCustPlusAndIddNddConvertUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plus: [replaceIddNddWithPlusForSms] find match the cc, Idd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 238
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static replacePlusCodeWithIddNdd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    :cond_0
    const-string v1, "HwCustPlusAndIddNddConvertUtils"

    const-string v2, "plus: replacePlusCodeWithIddNdd invalid number, no need to replacePlusCode"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-object p0

    .line 128
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->getNetworkMccIddList()Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    move-result-object v0

    .line 129
    .local v0, "mccIddNddSid":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    if-nez v0, :cond_2

    .line 130
    const-string v1, "HwCustPlusAndIddNddConvertUtils"

    const-string v2, "plus: replacePlusCodeWithIddNdd find no operator that match the MCC"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_2
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->removePlusAddIdd(Ljava/lang/String;Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;)Ljava/lang/String;

    move-result-object p0

    .line 138
    goto :goto_0
.end method

.method public static replacePlusCodeWithIddNddForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 200
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    :cond_0
    const-string v1, "HwCustPlusAndIddNddConvertUtils"

    const-string v2, "plus: replacePlusCodeWithIddNddForSms faild ,invalid param"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-object p0

    .line 205
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->getMccIddListForSms()Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    move-result-object v0

    .line 206
    .local v0, "mccIddNddSid":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    if-nez v0, :cond_2

    .line 207
    const-string v1, "HwCustPlusAndIddNddConvertUtils"

    const-string v2, "plus: replacePlusCodeWithIddNddForSms faild ,mccIddNddSid is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 212
    :cond_2
    invoke-static {p0, v0}, Lcom/android/internal/telephony/cdma/HwCustPlusAndIddNddConvertUtils;->removePlusAddIdd(Ljava/lang/String;Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;)Ljava/lang/String;

    move-result-object p0

    .line 214
    goto :goto_0
.end method
