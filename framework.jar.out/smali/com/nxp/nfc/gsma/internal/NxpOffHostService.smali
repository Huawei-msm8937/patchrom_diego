.class public Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
.super Ljava/lang/Object;
.source "NxpOffHostService.java"


# instance fields
.field public mAidGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field public mBanner:Landroid/graphics/drawable/Drawable;

.field public mBannerId:I

.field public mContext:Landroid/content/Context;

.field public mDescription:Ljava/lang/String;

.field public mModifiable:Z

.field public mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

.field public mPackageName:Ljava/lang/String;

.field public mSEName:Ljava/lang/String;

.field public mServiceName:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "SELocation"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "serviceName"    # Ljava/lang/String;
    .param p6, "modifiable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mPackageName:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    .line 22
    iput-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mContext:Landroid/content/Context;

    .line 24
    iput p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mUserId:I

    .line 25
    iput-object p2, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mPackageName:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    .line 29
    iput-boolean p6, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    .line 30
    return-void
.end method


# virtual methods
.method public getBanner()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getBannerId()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    return-object v0
.end method

.method protected getModifiable()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    return v0
.end method

.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public setBanner(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "banner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBanner:Landroid/graphics/drawable/Drawable;

    .line 62
    return-void
.end method

.method public setBannerId(I)V
    .locals 0
    .param p1, "bannerid"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    .line 70
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V
    .locals 0
    .param p1, "nxpNfcController"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mNxpNfcController:Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .line 103
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NxpOffHostService: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .local v2, "out":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", description: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", mSEName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mSEName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", mPackageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", mServiceName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mServiceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", mModifiable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mModifiable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 115
    const-string v3, "AidGroupList:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    .line 117
    .local v0, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    .end local v0    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
