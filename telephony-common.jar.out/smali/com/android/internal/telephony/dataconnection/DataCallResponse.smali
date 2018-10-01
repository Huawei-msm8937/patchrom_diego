.class public Lcom/android/internal/telephony/dataconnection/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final LOG_TAG:Ljava/lang/String;

.field public active:I

.field public addresses:[Ljava/lang/String;

.field public backupDns:[Ljava/lang/String;

.field public cid:I

.field public dnses:[Ljava/lang/String;

.field public gateways:[Ljava/lang/String;

.field public ifname:Ljava/lang/String;

.field public mtu:I

.field public pcscf:[Ljava/lang/String;

.field public status:I

.field public suggestedRetryTime:I

.field public type:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->DBG:Z

    .line 39
    const-string v0, "DataCallResponse"

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->LOG_TAG:Ljava/lang/String;

    .line 41
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    .line 42
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    .line 43
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    .line 44
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    .line 47
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .line 48
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    .line 49
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    .line 51
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    .line 52
    iput v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    .line 54
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->backupDns:[Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public setLinkProperties(Landroid/net/LinkProperties;Z)Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .locals 20
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;
    .param p2, "okToUseSystemPropertyDns"    # Z

    .prologue
    .line 125
    if-nez p1, :cond_1

    .line 126
    new-instance p1, Landroid/net/LinkProperties;

    .end local p1    # "linkProperties":Landroid/net/LinkProperties;
    invoke-direct/range {p1 .. p1}, Landroid/net/LinkProperties;-><init>()V

    .line 130
    .restart local p1    # "linkProperties":Landroid/net/LinkProperties;
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    move/from16 v17, v0

    sget-object v18, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    .line 131
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "net."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, "propertyPrefix":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_7

    .line 139
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_1
    if-ge v10, v13, :cond_8

    aget-object v2, v5, v10

    .line 140
    .local v2, "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_2

    .line 139
    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 128
    .end local v2    # "addr":Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "propertyPrefix":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    goto :goto_0

    .line 145
    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "propertyPrefix":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "ap":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 147
    const/16 v17, 0x0

    aget-object v2, v4, v17

    .line 148
    const/16 v17, 0x1

    aget-object v17, v4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 154
    .local v3, "addrPrefixLen":I
    :goto_3
    :try_start_2
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v11

    .line 158
    .local v11, "ia":Ljava/net/InetAddress;
    :try_start_3
    invoke-virtual {v11}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_0

    .line 159
    if-nez v3, :cond_3

    .line 161
    instance-of v0, v11, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    const/16 v3, 0x20

    .line 163
    :cond_3
    :goto_4
    const-string v17, "DataCallResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "addr/pl="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v12, Landroid/net/LinkAddress;

    invoke-direct {v12, v11, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 165
    .local v12, "la":Landroid/net/LinkAddress;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 268
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "ia":Ljava/net/InetAddress;
    .end local v12    # "la":Landroid/net/LinkAddress;
    .end local v13    # "len$":I
    :catch_0
    move-exception v9

    .line 269
    .local v9, "e":Ljava/net/UnknownHostException;
    const-string v17, "DataCallResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setLinkProperties: UnknownHostException "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v9}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 271
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_UnacceptableParameter:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .line 282
    .end local v9    # "e":Ljava/net/UnknownHostException;
    .end local v14    # "propertyPrefix":Ljava/lang/String;
    .local v15, "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :goto_5
    sget-object v17, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    move-object/from16 v0, v17

    if-eq v15, v0, :cond_4

    .line 284
    const-string v17, "DataCallResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setLinkProperties: error clearing LinkProperties status="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " result="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->clear()V

    .line 290
    :cond_4
    return-object v15

    .line 150
    .end local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    .restart local v2    # "addr":Ljava/lang/String;
    .restart local v4    # "ap":[Ljava/lang/String;
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "propertyPrefix":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "addrPrefixLen":I
    goto/16 :goto_3

    .line 155
    :catch_1
    move-exception v9

    .line 156
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-numeric ip addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 161
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v11    # "ia":Ljava/net/InetAddress;
    :cond_6
    const/16 v3, 0x80

    goto/16 :goto_4

    .line 169
    .end local v2    # "addr":Ljava/lang/String;
    .end local v3    # "addrPrefixLen":I
    .end local v4    # "ap":[Ljava/lang/String;
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "ia":Ljava/net/InetAddress;
    .end local v13    # "len$":I
    :cond_7
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "no address for ifname="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 173
    .restart local v5    # "arr$":[Ljava/lang/String;
    .restart local v10    # "i$":I
    .restart local v13    # "len$":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_b

    .line 174
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v13, v5

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v13, :cond_13

    aget-object v2, v5, v10

    .line 175
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v17

    if-eqz v17, :cond_a

    .line 174
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 179
    :cond_a
    :try_start_5
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v11

    .line 183
    .restart local v11    # "ia":Ljava/net/InetAddress;
    :try_start_6
    invoke-virtual {v11}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_9

    .line 184
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 186
    if-eqz p2, :cond_9

    instance-of v0, v11, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    .line 187
    const-string v17, "DataCallResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setLinkProperties: set system property dns "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v17, "persist.radio.cdma.dns"

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/16 p2, 0x0

    goto :goto_7

    .line 180
    .end local v11    # "ia":Ljava/net/InetAddress;
    :catch_2
    move-exception v9

    .line 181
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-numeric dns addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 194
    .end local v2    # "addr":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    if-eqz p2, :cond_e

    .line 195
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    .line 197
    .local v8, "dnsServers":[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "persist.radio.cdma.dns"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v8, v17

    .line 198
    const/16 v17, 0x1

    const-string v18, "8.8.8.8"

    aput-object v18, v8, v17

    .line 199
    const-string v17, "DataCallResponse"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setLinkProperties: use system property dns "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v8, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    move-object v5, v8

    array-length v13, v5

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v13, :cond_13

    aget-object v7, v5, v10

    .line 203
    .local v7, "dnsAddr":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0

    move-result v17

    if-eqz v17, :cond_d

    .line 202
    :cond_c
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 207
    :cond_d
    :try_start_7
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v11

    .line 211
    .restart local v11    # "ia":Ljava/net/InetAddress;
    :try_start_8
    invoke-virtual {v11}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_c

    .line 212
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_9

    .line 208
    .end local v11    # "ia":Ljava/net/InetAddress;
    :catch_3
    move-exception v9

    .line 209
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-numeric dns addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 217
    .end local v7    # "dnsAddr":Ljava/lang/String;
    .end local v8    # "dnsServers":[Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->backupDns:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->backupDns:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_12

    .line 218
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->backupDns:[Ljava/lang/String;

    array-length v13, v5

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v13, :cond_11

    aget-object v6, v5, v10

    .line 219
    .local v6, "backupDnsAddr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0

    move-result v17

    if-eqz v17, :cond_10

    .line 218
    :cond_f
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 223
    :cond_10
    :try_start_9
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v11

    .line 227
    .restart local v11    # "ia":Ljava/net/InetAddress;
    :try_start_a
    invoke-virtual {v11}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v17

    if-nez v17, :cond_f

    .line 228
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    .line 229
    const-string v17, "DataCallResponse"

    const-string v18, "setLinkProperties: use system backupDnsAddr"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 224
    .end local v11    # "ia":Ljava/net/InetAddress;
    :catch_4
    move-exception v9

    .line 225
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-numeric dns addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 232
    .end local v6    # "backupDnsAddr":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_11
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->backupDns:[Ljava/lang/String;

    .line 236
    :cond_12
    const-string v17, "DataCallResponse"

    const-string v18, "Empty dns response and no system default dns"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_15

    .line 243
    :cond_14
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "gw"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 244
    .local v16, "sysGateways":Ljava/lang/String;
    if-eqz v16, :cond_16

    .line 245
    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    .line 250
    .end local v16    # "sysGateways":Ljava/lang/String;
    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v13, v5

    const/4 v10, 0x0

    :goto_d
    if-ge v10, v13, :cond_18

    aget-object v2, v5, v10

    .line 251
    .restart local v2    # "addr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 250
    :goto_e
    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    .line 247
    .end local v2    # "addr":Ljava/lang/String;
    .restart local v16    # "sysGateways":Ljava/lang/String;
    :cond_16
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_c

    .line 255
    .end local v16    # "sysGateways":Ljava/lang/String;
    .restart local v2    # "addr":Ljava/lang/String;
    :cond_17
    :try_start_b
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_0

    move-result-object v11

    .line 260
    .restart local v11    # "ia":Ljava/net/InetAddress;
    :try_start_c
    new-instance v17, Landroid/net/RouteInfo;

    move-object/from16 v0, v17

    invoke-direct {v0, v11}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_e

    .line 256
    .end local v11    # "ia":Ljava/net/InetAddress;
    :catch_5
    move-exception v9

    .line 257
    .restart local v9    # "e":Ljava/lang/IllegalArgumentException;
    new-instance v17, Ljava/net/UnknownHostException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Non-numeric gateway addr="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 265
    .end local v2    # "addr":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 267
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->SUCCESS:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :try_end_c
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_0

    .restart local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    .line 274
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "propertyPrefix":Ljava/lang/String;
    .end local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    move/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1a

    .line 275
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_GetLastErrorFromRil:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5

    .line 277
    .end local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    :cond_1a
    sget-object v15, Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;->ERR_RilError:Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;

    .restart local v15    # "result":Lcom/android/internal/telephony/dataconnection/DataCallResponse$SetupResult;
    goto/16 :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 81
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 82
    .local v4, "sb":Ljava/lang/StringBuffer;
    const-string v5, "DataCallResponse: {"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->version:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->status:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " retry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->suggestedRetryTime:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " active="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->active:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " ifname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->ifname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " mtu="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->mtu:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, " addresses=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 93
    .local v0, "addr":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "addr":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->addresses:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 97
    :cond_1
    const-string v5, "] dnses=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 99
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "addr":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->dnses:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 103
    :cond_3
    const-string v5, "] gateways=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v0, v1, v2

    .line 105
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 108
    .end local v0    # "addr":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->gateways:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 109
    :cond_5
    const-string v5, "] pcscf=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    array-length v3, v1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_6

    aget-object v0, v1, v2

    .line 111
    .restart local v0    # "addr":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 114
    .end local v0    # "addr":Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DataCallResponse;->pcscf:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 115
    :cond_7
    const-string v5, "]}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
