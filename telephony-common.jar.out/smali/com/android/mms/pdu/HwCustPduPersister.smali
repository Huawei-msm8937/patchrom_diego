.class public Lcom/android/mms/pdu/HwCustPduPersister;
.super Ljava/lang/Object;
.source "HwCustPduPersister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public hasShortCode(Z[Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "isMMS"    # Z
    .param p2, "list"    # [Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "toastString"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public hasShortCode([Lcom/google/android/mms/pdu/EncodedStringValue;[Lcom/google/android/mms/pdu/EncodedStringValue;)Z
    .locals 1
    .param p1, "toNumbers"    # [Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p2, "ccNumbers"    # [Lcom/google/android/mms/pdu/EncodedStringValue;

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method

.method public isShortCodeFeatureEnabled()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method
