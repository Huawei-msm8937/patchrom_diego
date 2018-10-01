.class public abstract Lcom/android/internal/telephony/AbstractWspTypeDecoder;
.super Ljava/lang/Object;
.source "AbstractWspTypeDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected decodeForConnectwb(II)Z
    .locals 1
    .param p1, "startIndex"    # I
    .param p2, "mediaPrefixLength"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getMacByte()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    return-object v0
.end method

.method public getSec()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method
