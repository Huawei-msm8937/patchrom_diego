.class public abstract Lcom/android/internal/telephony/AbstractIccSmsInterfaceManager;
.super Ljava/lang/Object;
.source "AbstractIccSmsInterfaceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getNewbyte()[B
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    return-object v0
.end method

.method protected getRecordLength()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, -0x1

    return v0
.end method

.method public getSmscAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isHwMmsUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public setSmscAddr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "smscAddr"    # Ljava/lang/String;

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
