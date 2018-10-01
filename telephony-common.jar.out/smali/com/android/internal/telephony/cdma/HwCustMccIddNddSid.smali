.class public Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;
.super Ljava/lang/Object;
.source "HwCustMccIddNddSid.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HwCustMccIddNddSid"


# instance fields
.field public Cc:Ljava/lang/String;

.field public Idd:Ljava/lang/String;

.field public Mcc:I

.field public Ndd:Ljava/lang/String;

.field public SidMax:I

.field public SidMin:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Mcc:I

    .line 35
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Cc:Ljava/lang/String;

    .line 36
    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMin:I

    .line 37
    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMax:I

    .line 38
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Ndd:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mcc"    # I
    .param p2, "cc"    # Ljava/lang/String;
    .param p3, "sidmin"    # I
    .param p4, "sidmax"    # I
    .param p5, "idd"    # Ljava/lang/String;
    .param p6, "ndd"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Mcc:I

    .line 44
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Cc:Ljava/lang/String;

    .line 45
    iput p3, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMin:I

    .line 46
    iput p4, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMax:I

    .line 47
    iput-object p5, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    .line 48
    iput-object p6, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Ndd:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;)V
    .locals 0
    .param p1, "t"    # Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->copyFrom(Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;)V
    .locals 1
    .param p1, "t"    # Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;

    .prologue
    .line 66
    iget v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Mcc:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Mcc:I

    .line 67
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Cc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Cc:Ljava/lang/String;

    .line 68
    iget v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMin:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMin:I

    .line 69
    iget v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMax:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMax:I

    .line 70
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    .line 71
    iget-object v0, p1, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Ndd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Ndd:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Cc:Ljava/lang/String;

    return-object v0
.end method

.method public getIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    return-object v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Mcc:I

    return v0
.end method

.method public getNdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Ndd:Ljava/lang/String;

    return-object v0
.end method

.method public getSidMax()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMax:I

    return v0
.end method

.method public getSidMin()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMin:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mcc ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Mcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cc = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Cc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SidMin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", SidMax = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->SidMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Idd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Idd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Ndd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/HwCustMccIddNddSid;->Ndd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
