.class public Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;
.super Ljava/lang/Object;
.source "HwCustMccSidLtmOff.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HwCustMccSidLtmOff"

.field public static final LTM_OFF_INVALID:I = 0x64


# instance fields
.field public LtmOffMax:I

.field public LtmOffMin:I

.field public Mcc:I

.field public Sid:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x64

    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Mcc:I

    .line 35
    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Sid:I

    .line 36
    iput v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMin:I

    .line 37
    iput v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMax:I

    .line 38
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "sid"    # I
    .param p3, "ltmOffMin"    # I
    .param p4, "ltmOffMax"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Mcc:I

    .line 42
    iput p2, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Sid:I

    .line 43
    iput p3, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMin:I

    .line 44
    iput p4, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMax:I

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;)V
    .locals 0
    .param p1, "t"    # Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->copyFrom(Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;)V
    .locals 1
    .param p1, "t"    # Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;

    .prologue
    .line 62
    iget v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Mcc:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Mcc:I

    .line 63
    iget v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Sid:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Sid:I

    .line 64
    iget v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMin:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMin:I

    .line 65
    iget v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMax:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMax:I

    .line 66
    return-void
.end method

.method public getLtmOffMax()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMax:I

    return v0
.end method

.method public getLtmOffMin()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMin:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Mcc:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Sid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mcc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Sid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->Sid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LtmOffMin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", LtmOffMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccSidLtmOff;->LtmOffMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
