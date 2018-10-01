.class public Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;
.super Ljava/lang/Object;
.source "HwCustGsmCellBroadcastHandler.java"


# static fields
.field private static final FILLED_STRING_WHEN_BLOCK_IS_NULL_MSG:Ljava/lang/String; = "2B"

.field private static final IS_CBSPDU_HANDLER_NULL_MSG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const-string v0, "ro.config.cbs_del_2B"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;->IS_CBSPDU_HANDLER_NULL_MSG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public cbsPduAfterDiscardNullBlock([B)[B
    .locals 6
    .param p1, "receivedPdu"    # [B

    .prologue
    .line 16
    sget-boolean v4, Lcom/huawei/internal/telephony/gsm/HwCustGsmCellBroadcastHandler;->IS_CBSPDU_HANDLER_NULL_MSG:Z

    if-eqz v4, :cond_2

    .line 17
    array-length v1, p1

    .line 18
    .local v1, "cbsPduLength":I
    if-lez v1, :cond_2

    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .local v3, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v2, v1, -0x1

    .local v2, "j":I
    :goto_0
    if-lez v2, :cond_1

    .line 21
    aget-byte v4, p1, v2

    and-int/lit16 v0, v4, 0xff

    .line 22
    .local v0, "b":I
    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    .line 23
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2B"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    add-int/lit8 v1, v1, -0x1

    .line 28
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 20
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 33
    .end local v0    # "b":I
    :cond_1
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 36
    .end local v1    # "cbsPduLength":I
    .end local v2    # "j":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local p1    # "receivedPdu":[B
    :cond_2
    return-object p1
.end method
