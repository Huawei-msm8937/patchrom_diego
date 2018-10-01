.class public Lcom/google/android/mms/pdu/PduBody;
.super Ljava/lang/Object;
.source "PduBody.java"


# static fields
.field private static final GCF_MMS_TEST:Z


# instance fields
.field private mPartMapByContentId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByContentLocation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByFileName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mPartMapByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field

.field private mParts:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/android/mms/pdu/PduPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "ro.config.mms_file_upper_cmp"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/mms/pdu/PduBody;->GCF_MMS_TEST:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 32
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 33
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 34
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 35
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    .line 54
    return-void
.end method

.method private putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V
    .locals 7
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    .line 60
    .local v1, "contentId":[B
    if-eqz v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 62
    .local v0, "clc":Ljava/lang/String;
    sget-boolean v5, Lcom/google/android/mms/pdu/PduBody;->GCF_MMS_TEST:Z

    if-eqz v5, :cond_4

    .line 63
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v0    # "clc":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v2

    .line 71
    .local v2, "contentLocation":[B
    if-eqz v2, :cond_1

    .line 72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 73
    .restart local v0    # "clc":Ljava/lang/String;
    sget-boolean v5, Lcom/google/android/mms/pdu/PduBody;->GCF_MMS_TEST:Z

    if-eqz v5, :cond_5

    .line 74
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .end local v0    # "clc":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .line 82
    .local v4, "name":[B
    if-eqz v4, :cond_2

    .line 83
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 84
    .restart local v0    # "clc":Ljava/lang/String;
    sget-boolean v5, Lcom/google/android/mms/pdu/PduBody;->GCF_MMS_TEST:Z

    if-eqz v5, :cond_6

    .line 85
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .end local v0    # "clc":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 93
    .local v3, "fileName":[B
    if-eqz v3, :cond_3

    .line 94
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 95
    .restart local v0    # "clc":Ljava/lang/String;
    sget-boolean v5, Lcom/google/android/mms/pdu/PduBody;->GCF_MMS_TEST:Z

    if-eqz v5, :cond_7

    .line 96
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .end local v0    # "clc":Ljava/lang/String;
    :cond_3
    :goto_3
    return-void

    .line 65
    .end local v2    # "contentLocation":[B
    .end local v3    # "fileName":[B
    .end local v4    # "name":[B
    .restart local v0    # "clc":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 76
    .restart local v2    # "contentLocation":[B
    :cond_5
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    .restart local v4    # "name":[B
    :cond_6
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 98
    .restart local v3    # "fileName":[B
    :cond_7
    iget-object v5, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method


# virtual methods
.method public addPart(ILcom/google/android/mms/pdu/PduPart;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 128
    if-nez p2, :cond_0

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 132
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 134
    return-void
.end method

.method public addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 1
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 116
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google/android/mms/pdu/PduPart;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPart(I)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByContentId(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "cid"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "contentLocation"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByFileName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByName(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartIndex(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 1
    .param p1, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPartsNum()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 151
    return-void
.end method

.method public removePart(I)Lcom/google/android/mms/pdu/PduPart;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method
