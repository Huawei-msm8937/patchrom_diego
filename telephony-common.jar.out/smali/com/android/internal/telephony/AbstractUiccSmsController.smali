.class public abstract Lcom/android/internal/telephony/AbstractUiccSmsController;
.super Lcom/android/internal/telephony/ISms$Stub;
.source "AbstractUiccSmsController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/android/internal/telephony/ISms$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSmscAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmscAddrForSubscriber(J)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public setEnabledSingleShiftTables([I)V
    .locals 0
    .param p1, "tables"    # [I

    .prologue
    .line 24
    return-void
.end method

.method public setSmsCodingNationalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public setSmscAddr(Ljava/lang/String;)Z
    .locals 1
    .param p1, "smscAddr"    # Ljava/lang/String;

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public setSmscAddrForSubscriber(JLjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # J
    .param p3, "smscAddr"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method
