.class public final Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;
.super Ljava/lang/Object;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsolOemHookBuffer"
.end annotation


# instance fields
.field private mData:[B

.field private mRilInstance:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 3
    .param p1, "rilInstance"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 5444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5445
    iput p1, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mRilInstance:I

    .line 5448
    if-eqz p2, :cond_0

    .line 5449
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    .line 5450
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 5455
    :goto_0
    return-void

    .line 5452
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    goto :goto_0
.end method


# virtual methods
.method public getRilInstance()I
    .locals 1

    .prologue
    .line 5458
    iget v0, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mRilInstance:I

    return v0
.end method

.method public getUnsolOemHookBuffer()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5464
    const/4 v0, 0x0

    .line 5465
    .local v0, "Data":[B
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    if-eqz v1, :cond_0

    .line 5466
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 5467
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$UnsolOemHookBuffer;->mData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 5469
    :cond_0
    return-object v0
.end method
