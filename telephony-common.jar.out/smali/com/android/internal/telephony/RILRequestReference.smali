.class public Lcom/android/internal/telephony/RILRequestReference;
.super Ljava/lang/Object;
.source "RILRequestReference.java"


# instance fields
.field mRilRequest:Lcom/android/internal/telephony/RILRequest;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/RILRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/internal/telephony/RILRequestReference;->mRilRequest:Lcom/android/internal/telephony/RILRequest;

    .line 12
    return-void
.end method

.method public static obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequestReference;
    .locals 2
    .param p0, "request"    # I
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 22
    new-instance v0, Lcom/android/internal/telephony/RILRequestReference;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/RILRequest;->obtain(ILandroid/os/Message;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/RILRequestReference;-><init>(Lcom/android/internal/telephony/RILRequest;)V

    return-object v0
.end method


# virtual methods
.method public getParcel()Landroid/os/Parcel;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/internal/telephony/RILRequestReference;->mRilRequest:Lcom/android/internal/telephony/RILRequest;

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public getRequest()I
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/internal/telephony/RILRequestReference;->mRilRequest:Lcom/android/internal/telephony/RILRequest;

    iget v0, v0, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    return v0
.end method

.method public serialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/RILRequestReference;->mRilRequest:Lcom/android/internal/telephony/RILRequest;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->serialString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
