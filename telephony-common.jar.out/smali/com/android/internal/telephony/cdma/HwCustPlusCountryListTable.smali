.class public Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;
.super Ljava/lang/Object;
.source "HwCustPlusCountryListTable.java"


# static fields
.field private static final DBG:Z = true

.field private static FindOutSidMap:Landroid/util/SparseIntArray; = null

.field static final LOG_TAG:Ljava/lang/String; = "CDMA-HwCustPlusCountryListTable"

.field protected static final MccIddNddSidMap:[Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

.field protected static final MccSidLtmOffMap:[Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;

.field static final PARAM_FOR_OFFSET:I = 0x2

.field static final sInstSync:Ljava/lang/Object;

.field private static final sInstance:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->sInstance:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    .line 27
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->FindOutSidMap:Landroid/util/SparseIntArray;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->sInstSync:Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/internal/telephony/cdma/HwCustTelephonyPlusCode;->MccIddNddSidMap_support:[Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    sput-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->MccIddNddSidMap:[Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    .line 36
    sget-object v0, Lcom/android/internal/telephony/cdma/HwCustTelephonyPlusCode;->MccSidLtmOffMap_support:[Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;

    sput-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->MccSidLtmOffMap:[Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->sInstance:Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;

    return-object v0
.end method

.method public static getIntFromString(Ljava/lang/String;)I
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v1, -0x1

    .line 67
    .local v1, "intValue":I
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "CDMA-HwCustPlusCountryListTable"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getItemFromCountryListByMcc(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    .locals 8
    .param p0, "sMcc"    # Ljava/lang/String;

    .prologue
    .line 48
    const-string v5, "CDMA-HwCustPlusCountryListTable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plus: getItemFromCountryListByMcc mcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->getIntFromString(Ljava/lang/String;)I

    move-result v4

    .line 53
    .local v4, "mcc":I
    sget-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->MccIddNddSidMap:[Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    .local v0, "arr$":[Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 54
    .local v2, "item":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    iget v5, v2, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Mcc:I

    if-ne v4, v5, :cond_0

    .line 55
    const-string v5, "CDMA-HwCustPlusCountryListTable"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "plus: Now find mccIddNddSid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v2    # "item":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    :goto_1
    return-object v2

    .line 53
    .restart local v2    # "item":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v2    # "item":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    :cond_1
    const-string v5, "CDMA-HwCustPlusCountryListTable"

    const-string v6, "plus: can\'t find one that match the Mcc"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getItemsFromSidConflictTableBySid(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "sSid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->getIntFromString(Ljava/lang/String;)I

    move-result v5

    .line 81
    .local v5, "sid":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;>;"
    sget-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->MccSidLtmOffMap:[Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;

    .local v0, "arr$":[Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 84
    .local v2, "item":Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;
    iget v6, v2, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Sid:I

    if-ne v5, v6, :cond_0

    .line 85
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v2    # "item":Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;
    :cond_1
    return-object v3
.end method

.method public static getMccFromMainTableBySid(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "sSid"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->getIntFromString(Ljava/lang/String;)I

    move-result v5

    .line 95
    .local v5, "sid":I
    const/4 v4, 0x0

    .line 98
    .local v4, "mcc":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/telephony/cdma/HwCustPlusCountryListTable;->MccIddNddSidMap:[Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    .local v0, "arr$":[Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 99
    .local v2, "item":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    iget v6, v2, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMax:I

    if-gt v5, v6, :cond_1

    iget v6, v2, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMin:I

    if-lt v5, v6, :cond_1

    .line 101
    iget v6, v2, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Mcc:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    .end local v2    # "item":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    :cond_0
    const-string v6, "CDMA-HwCustPlusCountryListTable"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "plus: getMccFromMainTableBySid mcc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-object v4

    .line 98
    .restart local v2    # "item":Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCcFromConflictTableByLTM(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p2, "sLtm_off"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;>;"
    const/4 v7, 0x0

    .line 112
    const-string v8, "CDMA-HwCustPlusCountryListTable"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "plus:  getCcFromConflictTableByLTM sLtm_off = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 114
    :cond_0
    const-string v8, "CDMA-HwCustPlusCountryListTable"

    const-string v9, "plus: [getCcFromConflictTableByLTM] please check the param "

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 142
    :goto_0
    return-object v0

    .line 118
    :cond_1
    const/4 v0, 0x0

    .line 120
    .local v0, "FindMcc":Ljava/lang/String;
    const/4 v4, 0x0

    .line 122
    .local v4, "ltm_off":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 128
    const/4 v5, 0x0

    .line 129
    .local v5, "max":I
    const/4 v6, 0x0

    .line 130
    .local v6, "min":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;

    .line 132
    .local v3, "item":Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;
    iget v7, v3, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMax:I

    mul-int/lit8 v5, v7, 0x2

    .line 133
    iget v7, v3, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMin:I

    mul-int/lit8 v6, v7, 0x2

    .line 135
    if-gt v4, v5, :cond_2

    if-lt v4, v6, :cond_2

    .line 136
    iget v7, v3, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Mcc:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .end local v3    # "item":Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;
    :cond_3
    const-string v7, "CDMA-HwCustPlusCountryListTable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "plus: find one that match the ltm_off mcc = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "max":I
    .end local v6    # "min":I
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v8, "CDMA-HwCustPlusCountryListTable"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .line 125
    goto :goto_0
.end method
