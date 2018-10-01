.class public Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;
.super Ljava/lang/Object;
.source "HwCustSidMccMnc.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "HwCustSidMccMnc"


# instance fields
.field public mccMnc:I

.field public sid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->sid:I

    .line 32
    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->mccMnc:I

    .line 33
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "mSid"    # I
    .param p2, "mMccMnc"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->sid:I

    .line 37
    iput p2, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->mccMnc:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;)V
    .locals 0
    .param p1, "t"    # Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->copyFrom(Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;)V
    .locals 1
    .param p1, "t"    # Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;

    .prologue
    .line 55
    iget v0, p1, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->sid:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->sid:I

    .line 56
    iget v0, p1, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->mccMnc:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->mccMnc:I

    .line 57
    return-void
.end method

.method public getMccMnc()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->mccMnc:I

    return v0
.end method

.method public getSid()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->sid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sid ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->sid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mccMnc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HwCustSidMccMnc;->mccMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
