.class public Lcom/nxp/nfc/gsma/internal/NxpNfcController;
.super Ljava/lang/Object;
.source "NxpNfcController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;,
        Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    }
.end annotation


# static fields
.field public static final BATTERY_ALL_STATES:I = 0x2

.field public static final BATTERY_OPERATIONAL_STATE:I = 0x1

.field private static final MW_PROTOCOL_MASK_ISO_DEP:I = 0x8

.field public static final PROTOCOL_ISO_DEP:I = 0x10

.field public static final SCREEN_ALL_MODES:I = 0x2

.field public static final SCREEN_ON_AND_LOCKED_MODE:I = 0x1

.field static final TAG:Ljava/lang/String; = "NxpNfcController"

.field public static final TECHNOLOGY_NFC_A:I = 0x1

.field public static final TECHNOLOGY_NFC_B:I = 0x2

.field public static final TECHNOLOGY_NFC_F:I = 0x4


# instance fields
.field private mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDialogBoxFlag:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

.field private mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSeNameApduService:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 49
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 51
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 56
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 57
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 58
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 83
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 49
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 51
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 56
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    .line 57
    iput-boolean v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    .line 58
    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    .line 83
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$1;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;

    invoke-direct {v0, p0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$2;-><init>(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    .line 122
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 123
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcAdapter(Landroid/nfc/NfcAdapter;)Lcom/nxp/nfc/NxpNfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    invoke-virtual {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->getNxpNfcControllerInterface()Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-result-object v0

    iput-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    .line 130
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return v0
.end method

.method static synthetic access$102(Lcom/nxp/nfc/gsma/internal/NxpNfcController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mDialogBoxFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private convertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 16
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "apduService"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v13

    .line 196
    .local v13, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v14

    .line 197
    .local v14, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, "description":Ljava/lang/String;
    const-string v5, "com.nxp.host.ID"

    .line 200
    .local v5, "sEname":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 201
    const-string v5, "com.nxp.uicc.ID"

    .line 210
    :goto_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 211
    .local v9, "banner":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getModifiable()Z

    move-result v8

    .line 212
    .local v8, "modifiable":Z
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v10

    .line 213
    .local v10, "bannerId":I
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v3

    .line 216
    .local v3, "userId":I
    const-string v6, "NxpNfcController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "convertApduServiceToOffHostService begin,modifiable="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v2, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    iget-object v6, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v14, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 218
    .local v2, "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    if-eqz v8, :cond_3

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDynamicAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/AidGroup;

    .line 220
    .local v11, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v6, v2, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 202
    .end local v2    # "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .end local v3    # "userId":I
    .end local v8    # "modifiable":Z
    .end local v9    # "banner":Landroid/graphics/drawable/Drawable;
    .end local v10    # "bannerId":I
    .end local v11    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v13}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 203
    const-string v5, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 204
    :cond_1
    invoke-virtual {v13}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v6

    if-nez v6, :cond_2

    .line 205
    const-string v5, "com.nxp.host.ID"

    goto :goto_0

    .line 207
    :cond_2
    const-string v6, "NxpNfcController"

    const-string v7, "wrong Se Id"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    .restart local v2    # "mService":Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .restart local v3    # "userId":I
    .restart local v8    # "modifiable":Z
    .restart local v9    # "banner":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "bannerId":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getStaticAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/nfc/cardemulation/AidGroup;

    .line 224
    .restart local v11    # "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v6, v2, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 227
    .end local v11    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_4
    invoke-virtual {v2, v9}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBanner(Landroid/graphics/drawable/Drawable;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setContext(Landroid/content/Context;)V

    .line 229
    invoke-virtual {v2, v10}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setBannerId(I)V

    .line 230
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->setNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController;)V

    .line 231
    return-object v2
.end method

.method private convertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 18
    .param p1, "mService"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .param p2, "userId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v3, 0x0

    .line 241
    .local v3, "onHost":Z
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getModifiable()Z

    move-result v14

    .line 243
    .local v14, "modifiable":Z
    const/4 v5, 0x0

    .line 244
    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v6, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mAidGroupList:Ljava/util/List;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    const/4 v12, 0x0

    .line 247
    .local v12, "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    const/4 v7, 0x0

    .line 249
    .local v7, "requiresUnlock":Z
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getBanner()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 251
    .local v13, "DrawableResource":Landroid/graphics/drawable/Drawable;
    const/16 v16, 0x0

    .line 252
    .local v16, "seId":I
    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getLocation()Ljava/lang/String;

    move-result-object v17

    .line 253
    .local v17, "seName":Ljava/lang/String;
    const/4 v15, -0x1

    .line 254
    .local v15, "powerstate":I
    move-object/from16 v0, p1

    iget v8, v0, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->mBannerId:I

    .line 256
    .local v8, "bannerId":I
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 257
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/pm/ServiceInfo;

    invoke-direct {v9}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 258
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v10, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v10, v9, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 259
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p3

    iput-object v0, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 260
    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {p1 .. p1}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 262
    const-string v9, "com.nxp.uicc.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 263
    const/16 v16, 0x2

    .line 271
    :goto_0
    new-instance v11, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v16

    invoke-direct {v11, v0, v15}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 272
    .local v11, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .end local v1    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    move/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v1 .. v14}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 274
    .restart local v1    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    return-object v1

    .line 264
    .end local v11    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :cond_0
    const-string v9, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 265
    const/16 v16, 0x1

    goto :goto_0

    .line 266
    :cond_1
    const-string v9, "com.nxp.host.ID"

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 267
    const/16 v16, 0x0

    goto :goto_0

    .line 269
    :cond_2
    const-string v9, "NxpNfcController"

    const-string v10, "wrong Se name"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public commitOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 346
    const/4 v2, 0x0

    .line 348
    .local v2, "result":Z
    invoke-virtual {p3}, Lcom/nxp/nfc/gsma/internal/NxpOffHostService;->getServiceName()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "serviceName":Ljava/lang/String;
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->convertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 351
    .local v1, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_start_0
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-eqz v6, :cond_0

    .line 352
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v6, p1, p2, v3, v1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->commitOffHostService(ILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 358
    :cond_0
    if-eq v2, v5, :cond_1

    .line 359
    const-string v5, "NxpNfcController"

    const-string v6, "GSMA: commitOffHostService Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_0
    return v4

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "NxpNfcController"

    const-string v6, "Exception:commitOffHostService failed"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    move v4, v5

    .line 362
    goto :goto_0
.end method

.method public commitOffHostService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;Ljava/util/List;)Z
    .locals 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "bannerResId"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 375
    .local p6, "aidGroupDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "aidGroups":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/AidGroup;>;"
    const/16 v18, 0x0

    .line 376
    .local v18, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 377
    .local v10, "userId":I
    const/16 v21, 0x0

    .line 378
    .local v21, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v4, 0x0

    .line 380
    .local v4, "onHost":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v7, "dynamicAidGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 382
    const/4 v8, 0x0

    .line 384
    .local v8, "requiresUnlock":Z
    const/16 v19, 0x0

    .line 385
    .local v19, "seId":I
    const/16 v17, -0x1

    .line 386
    .local v17, "powerstate":I
    const/4 v15, 0x1

    .line 389
    .local v15, "modifiable":Z
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 390
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 391
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    new-instance v6, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v6, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 392
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iput-object v0, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 393
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p2

    iput-object v0, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 396
    const/16 v20, 0x0

    .line 397
    .local v20, "secureElement":Ljava/lang/String;
    const-string v5, "SIM"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    const-string v20, "com.nxp.uicc.ID"

    .line 405
    :goto_0
    const-string v5, "com.nxp.uicc.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 406
    const/16 v19, 0x2

    .line 415
    :goto_1
    new-instance v12, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move/from16 v0, v19

    move/from16 v1, v17

    invoke-direct {v12, v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;-><init>(II)V

    .line 416
    .local v12, "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p3

    move/from16 v9, p4

    move-object/from16 v11, p1

    invoke-direct/range {v2 .. v15}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 420
    .local v2, "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    if-eqz v5, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v5, v10, v0, v1, v2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->commitOffHostService(ILjava/lang/String;Ljava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 430
    :cond_0
    const/4 v5, 0x1

    move/from16 v0, v18

    if-eq v0, v5, :cond_6

    .line 431
    const-string v5, "NxpNfcController"

    const-string v6, "GSMA: commitOffHostService Failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v5, 0x0

    .line 434
    :goto_2
    return v5

    .line 399
    .end local v2    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v12    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :cond_1
    const-string v5, "eSE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 400
    const-string v20, "com.nxp.smart_mx.ID"

    goto :goto_0

    .line 402
    :cond_2
    const-string v20, "com.nxp.host.ID"

    goto :goto_0

    .line 407
    :cond_3
    const-string v5, "com.nxp.smart_mx.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 408
    const/16 v19, 0x1

    goto :goto_1

    .line 409
    :cond_4
    const-string v5, "com.nxp.host.ID"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 410
    const/16 v19, 0x0

    goto :goto_1

    .line 412
    :cond_5
    const-string v5, "NxpNfcController"

    const-string v6, "wrong Se name"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 426
    .restart local v2    # "newService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v12    # "mEseInfo":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    :catch_0
    move-exception v16

    .line 427
    .local v16, "e":Landroid/os/RemoteException;
    const-string v5, "NxpNfcController"

    const-string v6, "Exception:commitOffHostService failed"

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    const/4 v5, 0x0

    goto :goto_2

    .line 434
    .end local v16    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v5, 0x1

    goto :goto_2
.end method

.method public deleteOffHostService(ILjava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpOffHostService;)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "service"    # Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    .prologue
    const/4 v3, 0x1

    .line 282
    const/4 v2, 0x0

    .line 284
    .local v2, "result":Z
    invoke-direct {p0, p3, p1, p2}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->convertOffhostServiceToApduService(Lcom/nxp/nfc/gsma/internal/NxpOffHostService;ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 286
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_start_0
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v4, p1, p2, v0}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->deleteOffHostService(ILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 290
    :goto_0
    if-eq v2, v3, :cond_0

    .line 291
    const-string v3, "NxpNfcController"

    const-string v4, "GSMA: deleteOffHostService failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v3, 0x0

    .line 294
    :cond_0
    return v3

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "NxpNfcController"

    const-string v5, "Exception:deleteOffHostService failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteOffHostService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "seName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 443
    const/4 v1, 0x0

    .line 444
    .local v1, "result":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 447
    .local v2, "userId":I
    :try_start_0
    iget-object v5, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mSeNameApduService:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-interface {v5, v2, p1, v3}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->deleteOffHostService(ILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 451
    :goto_0
    if-eq v1, v4, :cond_0

    .line 452
    const-string v3, "NxpNfcController"

    const-string v4, "GSMA: deleteOffHostService failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v3, 0x0

    .line 455
    :goto_1
    return v3

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "NxpNfcController"

    const-string v5, "Exception:deleteOffHostService failed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    move v3, v4

    .line 455
    goto :goto_1
.end method

.method public enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "seName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v1, p2, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->enableMultiReception(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NxpNfcController"

    const-string v2, "enableMultiReception failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableNxpNfcController(Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;)V
    .locals 7
    .param p1, "cb"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mCallBack:Lcom/nxp/nfc/gsma/internal/NxpNfcController$NxpCallbacks;

    .line 153
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    .local v2, "ownerFilter":Landroid/content/IntentFilter;
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 158
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.gsma.services.nfc.action.ENABLE_NFC_SET_FALG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v5, "android.permission.NFC"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 164
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 165
    .local v0, "enableNfc":Landroid/content/Intent;
    const-string v3, "com.gsma.services.nfc.action.ENABLE_NFC"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object v3, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.NFC"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public getDefaultOffHostService(ILjava/lang/String;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;
    .locals 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 327
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "NxpNfcController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultOffHostService packageName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v4, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v4, p1, p2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getDefaultOffHostService(ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    .local v0, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0, v3, v0}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->convertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v2

    .line 338
    .end local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :goto_0
    return-object v2

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "NxpNfcController"

    const-string v5, "getDefaultOffHostService failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 337
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const-string v4, "NxpNfcController"

    const-string v5, "getDefaultOffHostService: Service is NULL"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDefaultOffHostService(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 506
    const-string v0, "NxpNfcController"

    const-string v2, "getDefaultOffHostService: Enter"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v1, 0x1

    .line 510
    .local v1, "isLast":Z
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 511
    .local v11, "userId":I
    const/4 v3, 0x0

    .line 513
    .local v3, "seName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v0, v11, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getDefaultOffHostService(ILjava/lang/String;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v8

    .line 514
    .local v8, "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    const/4 v0, 0x2

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 515
    const-string v3, "com.nxp.uicc.ID"

    .line 517
    :cond_0
    const-string v0, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultOffHostService: seName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v5, "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 520
    .local v7, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v8    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v10    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v9

    .line 527
    .local v9, "e":Landroid/os/RemoteException;
    const-string v0, "NxpNfcController"

    const-string v2, "getDefaultOffHostService failed"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 528
    const/4 v0, 0x0

    .line 532
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_1
    return v0

    .line 523
    .restart local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "apduService":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v4

    invoke-virtual {v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 531
    const-string v0, "NxpNfcController"

    const-string v2, "getDefaultOffHostService: End"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public getOffHostServices(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nxp/nfc/gsma/internal/NxpOffHostService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    const-string v6, "NxpNfcController"

    const-string v7, "getOffHostServices enter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v3, "mService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nxp/nfc/gsma/internal/NxpOffHostService;>;"
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 307
    .local v4, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v6, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v6, p1, p2}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getOffHostServices(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 312
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 313
    .local v5, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-direct {p0, v4, v5}, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->convertApduServiceToOffHostService(Landroid/content/pm/PackageManager;Landroid/nfc/cardemulation/ApduServiceInfo;)Lcom/nxp/nfc/gsma/internal/NxpOffHostService;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "NxpNfcController"

    const-string v7, "getOffHostServices failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/4 v3, 0x0

    .line 315
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "mService":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nxp/nfc/gsma/internal/NxpOffHostService;>;"
    :cond_0
    return-object v3
.end method

.method public getOffHostServices(Ljava/lang/String;Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callbacks"    # Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;

    .prologue
    .line 464
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    .line 465
    .local v12, "userId":I
    const/4 v1, 0x0

    .line 466
    .local v1, "isLast":Z
    const/4 v3, 0x0

    .line 468
    .local v3, "seName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 470
    .local v8, "apduServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :try_start_0
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcControllerService:Lcom/nxp/nfc/gsma/internal/INxpNfcController;

    invoke-interface {v0, v12, p1}, Lcom/nxp/nfc/gsma/internal/INxpNfcController;->getOffHostServices(ILjava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 472
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 474
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_0

    .line 475
    const/4 v1, 0x1

    .line 478
    :cond_0
    const/4 v2, 0x2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getSEInfo()Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->getSeId()I

    move-result v0

    if-ne v2, v0, :cond_1

    .line 479
    const-string v3, "com.nxp.uicc.ID"

    .line 482
    :cond_1
    const-string v0, "NxpNfcController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOffHostServices: seName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v5, "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/cardemulation/AidGroup;

    .line 485
    .local v7, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v7}, Landroid/nfc/cardemulation/AidGroup;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 492
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v10    # "i":I
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v9

    .line 493
    .local v9, "e":Landroid/os/RemoteException;
    const-string v0, "NxpNfcController"

    const-string v2, "getOffHostServices failed"

    invoke-static {v0, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    const/4 v0, 0x0

    .line 497
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_2
    return v0

    .line 488
    .restart local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "i":I
    .restart local v11    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getBannerId()I

    move-result v4

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, p2

    invoke-interface/range {v0 .. v6}, Lcom/nxp/nfc/gsma/internal/NxpNfcController$Callbacks;->onGetOffHostService(ZLjava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 472
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 497
    .end local v5    # "groupDescription":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public isNxpHostCardEmulationSupported()Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNxpNfcAdapter:Lcom/nxp/nfc/NxpNfcAdapter;

    invoke-virtual {v0}, Lcom/nxp/nfc/NxpNfcAdapter;->isHostCardEmulationSupported()Z

    move-result v0

    return v0
.end method

.method public isNxpNfcEnabled()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nxp/nfc/gsma/internal/NxpNfcController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method
