.class public Lcom/android/internal/telephony/cat/CatResponseMessage;
.super Ljava/lang/Object;
.source "CatResponseMessage.java"


# instance fields
.field envelopeCmd:Ljava/lang/String;

.field mAddedInfo:[B

.field mAdditionalInfo:I

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field mEventValue:I

.field mIncludeAdditionalInfo:Z

.field mResCode:Lcom/android/internal/telephony/cat/ResultCode;

.field mUsersConfirm:Z

.field mUsersInput:Ljava/lang/String;

.field mUsersMenuSelection:I

.field mUsersYesNoSelection:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    .line 29
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    .line 32
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    .line 39
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "envCmd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 21
    sget-object v0, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 22
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 23
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 24
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 25
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 26
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 27
    iput v1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    .line 29
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    .line 32
    iput-object v2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->envelopeCmd:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-object v0
.end method

.method public setAdditionalInfo(I)V
    .locals 1
    .param p1, "info"    # I

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 75
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    .line 76
    return-void
.end method

.method public setAdditionalInfo(ZI)V
    .locals 0
    .param p1, "addInfoReq"    # Z
    .param p2, "addInfoCode"    # I

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 70
    iput p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:I

    .line 71
    return-void
.end method

.method public setConfirmation(Z)V
    .locals 0
    .param p1, "confirm"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    .line 65
    return-void
.end method

.method public setEventDownload(I[B)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "addedInfo"    # [B

    .prologue
    .line 55
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mEventValue:I

    .line 56
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAddedInfo:[B

    .line 57
    return-void
.end method

.method public setInput(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setMenuSelection(I)V
    .locals 0
    .param p1, "selection"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    .line 48
    return-void
.end method

.method public setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V
    .locals 0
    .param p1, "resCode"    # Lcom/android/internal/telephony/cat/ResultCode;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 44
    return-void
.end method

.method public setYesNo(Z)V
    .locals 0
    .param p1, "yesNo"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    .line 61
    return-void
.end method
