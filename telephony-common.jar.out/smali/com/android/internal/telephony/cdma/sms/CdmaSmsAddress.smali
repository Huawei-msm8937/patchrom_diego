.class public Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "CdmaSmsAddress.java"


# static fields
.field public static final DIGIT_MODE_4BIT_DTMF:I = 0x0

.field public static final DIGIT_MODE_8BIT_CHAR:I = 0x1

.field public static final NUMBERING_PLAN_ISDN_TELEPHONY:I = 0x1

.field public static final NUMBERING_PLAN_UNKNOWN:I = 0x0

.field public static final NUMBER_MODE_DATA_NETWORK:I = 0x1

.field public static final NUMBER_MODE_NOT_DATA_NETWORK:I = 0x0

.field private static PLUS_TRANFER_IN_AP:Z = false

.field public static final SMS_ADDRESS_MAX:I = 0x24

.field public static final SMS_SUBADDRESS_MAX:I = 0x24

.field public static final TON_ABBREVIATED:I = 0x6

.field public static final TON_ALPHANUMERIC:I = 0x5

.field public static final TON_INTERNATIONAL_OR_IP:I = 0x1

.field public static final TON_NATIONAL_OR_EMAIL:I = 0x2

.field public static final TON_NETWORK:I = 0x3

.field public static final TON_RESERVED:I = 0x7

.field public static final TON_SUBSCRIBER:I = 0x4

.field public static final TON_UNKNOWN:I

.field private static final numericCharDialableMap:Landroid/util/SparseBooleanArray;

.field private static final numericCharsDialable:[C

.field private static final numericCharsSugar:[C


# instance fields
.field public digitMode:I

.field public numberMode:I

.field public numberOfDigits:I

.field public numberPlan:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 91
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/internal/telephony/HwModemCapability;->isCapabilitySupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->PLUS_TRANFER_IN_AP:Z

    .line 144
    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    .line 148
    const/16 v1, 0x8

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    .line 152
    new-instance v1, Landroid/util/SparseBooleanArray;

    sget-object v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    array-length v4, v4

    sget-object v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    array-length v5, v5

    add-int/2addr v4, v5

    invoke-direct {v1, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 156
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    sget-object v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsDialable:[C

    aget-char v4, v4, v0

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    move v1, v3

    .line 91
    goto :goto_0

    .line 158
    .restart local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 159
    sget-object v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    sget-object v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharsSugar:[C

    aget-char v2, v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 161
    :cond_2
    return-void

    .line 144
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2as
        0x23s
    .end array-data

    .line 148
    :array_1
    .array-data 2
        0x28s
        0x29s
        0x20s
        0x2ds
        0x2bs
        0x2es
        0x2fs
        0x5cs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 105
    return-void
.end method

.method private static filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 172
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 173
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 174
    .local v1, "c":C
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    .line 175
    .local v4, "mapIndex":I
    if-gez v4, :cond_0

    const/4 v5, 0x0

    .line 179
    .end local v1    # "c":C
    .end local v4    # "mapIndex":I
    :goto_1
    return-object v5

    .line 176
    .restart local v1    # "c":C
    .restart local v4    # "mapIndex":I
    :cond_0
    sget-object v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numericCharDialableMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 172
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 179
    .end local v1    # "c":C
    .end local v4    # "mapIndex":I
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private static filterWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 189
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 190
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 191
    .local v1, "c":C
    const/16 v4, 0x20

    if-eq v1, v4, :cond_0

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    const/16 v4, 0xa

    if-eq v1, v4, :cond_0

    const/16 v4, 0x9

    if-ne v1, v4, :cond_1

    .line 189
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 194
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 7
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    sget-boolean v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->PLUS_TRANFER_IN_AP:Z

    if-nez v3, :cond_0

    .line 214
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseForQucalcom(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 217
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 218
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput-object p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 219
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 220
    const/4 v2, 0x0

    .line 221
    .local v2, "origBytes":[B
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, "filteredAddr":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 223
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseToDtmf(Ljava/lang/String;)[B

    move-result-object v2

    .line 225
    :cond_1
    if-eqz v2, :cond_3

    .line 226
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 227
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 228
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 229
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 243
    :cond_2
    :goto_1
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 244
    array-length v3, v2

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    goto :goto_0

    .line 232
    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;->stringToAscii(Ljava/lang/String;)[B

    move-result-object v2

    .line 234
    if-nez v2, :cond_4

    .line 235
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    :cond_4
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 238
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 239
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 240
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    goto :goto_1
.end method

.method private static parseForQucalcom(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .locals 7
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 249
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 250
    .local v0, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    iput-object p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    .line 251
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 252
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 253
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 254
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 255
    const/4 v2, 0x0

    .line 257
    .local v2, "origBytes":[B
    const/16 v3, 0x2b

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 259
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 260
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 261
    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 262
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 264
    :cond_0
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v6, :cond_1

    .line 266
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 267
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 268
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 272
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterNumericSugar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "filteredAddr":Ljava/lang/String;
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v3, :cond_3

    .line 274
    if-eqz v1, :cond_2

    .line 275
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parseToDtmf(Ljava/lang/String;)[B

    move-result-object v2

    .line 277
    :cond_2
    if-nez v2, :cond_3

    .line 279
    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 283
    :cond_3
    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v3, v4, :cond_5

    .line 284
    if-nez v1, :cond_4

    .line 285
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->filterWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_4
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;->stringToAscii(Ljava/lang/String;)[B

    move-result-object v2

    .line 288
    if-nez v2, :cond_5

    .line 289
    const/4 v0, 0x0

    .line 294
    .end local v0    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :goto_0
    return-object v0

    .line 292
    .restart local v0    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_5
    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 293
    array-length v3, v2

    iput v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    goto :goto_0
.end method

.method private static parseToDtmf(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 130
    .local v1, "digits":I
    new-array v3, v1, [B

    .line 131
    .local v3, "result":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 132
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 133
    .local v0, "c":C
    const/4 v4, 0x0

    .line 134
    .local v4, "val":I
    const/16 v5, 0x31

    if-lt v0, v5, :cond_0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_0

    add-int/lit8 v4, v0, -0x30

    .line 139
    :goto_1
    int-to-byte v5, v4

    aput-byte v5, v3, v2

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_0
    const/16 v5, 0x30

    if-ne v0, v5, :cond_1

    const/16 v4, 0xa

    goto :goto_1

    .line 136
    :cond_1
    const/16 v5, 0x2a

    if-ne v0, v5, :cond_2

    const/16 v4, 0xb

    goto :goto_1

    .line 137
    :cond_2
    const/16 v5, 0x23

    if-ne v0, v5, :cond_3

    const/16 v4, 0xc

    goto :goto_1

    .line 138
    :cond_3
    const/4 v3, 0x0

    .line 141
    .end local v0    # "c":C
    .end local v3    # "result":[B
    .end local v4    # "val":I
    :cond_4
    return-object v3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "CdmaSmsAddress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{ digitMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberPlan="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", numberOfDigits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", ton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", address=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", origBytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
