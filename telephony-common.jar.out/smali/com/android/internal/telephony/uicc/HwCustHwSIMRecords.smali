.class public Lcom/android/internal/telephony/uicc/HwCustHwSIMRecords;
.super Ljava/lang/Object;
.source "HwCustHwSIMRecords.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mSIMRecords:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Landroid/content/Context;)V
    .locals 0
    .param p1, "obj"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "mConText"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/HwCustHwSIMRecords;->mSIMRecords:Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 31
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/HwCustHwSIMRecords;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public addHwVirtualNetSpecialFiles(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileId"    # Ljava/lang/String;
    .param p3, "bytes"    # [B
    .param p4, "slotId"    # I

    .prologue
    .line 50
    return-void
.end method

.method public custLoadCardSpecialFile(I)V
    .locals 0
    .param p1, "fileid"    # I

    .prologue
    .line 78
    return-void
.end method

.method public getOcsgl()[B
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public refreshDataRoamingSettings()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public refreshMobileDataAlwaysOnSettings()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public setVmPriorityModeInClaro(Lcom/android/internal/telephony/uicc/VoiceMailConstants;)V
    .locals 0
    .param p1, "mVmConfig"    # Lcom/android/internal/telephony/uicc/VoiceMailConstants;

    .prologue
    .line 38
    return-void
.end method
