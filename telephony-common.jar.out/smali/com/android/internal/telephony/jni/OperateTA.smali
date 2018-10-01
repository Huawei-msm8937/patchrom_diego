.class public Lcom/android/internal/telephony/jni/OperateTA;
.super Ljava/lang/Object;
.source "OperateTA.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "operta"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearToTA()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "result":I
    const/4 v1, 0x3

    const-string v2, "000"

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/android/internal/telephony/jni/OperateTA;->operTA(IIILjava/lang/String;)I

    move-result v0

    .line 56
    return v0
.end method

.method public native operTA(IIILjava/lang/String;)I
.end method

.method public writeApnToTA(IILjava/lang/String;)I
    .locals 2
    .param p1, "cardType"    # I
    .param p2, "apnType"    # I
    .param p3, "Challenge"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, "result":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/telephony/jni/OperateTA;->operTA(IIILjava/lang/String;)I

    move-result v0

    .line 49
    return v0
.end method

.method public writeToTA(IILjava/lang/String;)I
    .locals 2
    .param p1, "cardType"    # I
    .param p2, "apnType"    # I
    .param p3, "Challenge"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "result":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/telephony/jni/OperateTA;->operTA(IIILjava/lang/String;)I

    .line 41
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/internal/telephony/jni/OperateTA;->operTA(IIILjava/lang/String;)I

    move-result v0

    .line 42
    return v0
.end method
