.class public Lcom/android/internal/telephony/uicc/VoiceMailConstants;
.super Lcom/android/internal/telephony/uicc/AbstractVoiceMailConstants;
.source "VoiceMailConstants.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "VoiceMailConstants"

.field static final NAME:I = 0x0

.field static final NUMBER:I = 0x1

.field static final PARTNER_VOICEMAIL_PATH:Ljava/lang/String; = "etc/voicemail-conf.xml"

.field static final SIZE:I = 0x3

.field static final TAG:I = 0x2


# instance fields
.field private CarrierVmMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMailLoaded:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AbstractVoiceMailConstants;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->voiceMailLoaded:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    .line 61
    return-void
.end method

.method private loadVoiceMail()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 117
    iget-boolean v6, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->voiceMailLoaded:Z

    if-eqz v6, :cond_0

    .line 166
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v6, "VoiceMailConstants"

    const-string v7, "loadVoiceMail begin!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/android/internal/telephony/HwTelephonyFactory;->getHwUiccManager()Lcom/android/internal/telephony/HwUiccManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/HwUiccManager;->getVoiceMailFileReader()Ljava/io/FileReader;

    move-result-object v5

    .line 126
    .local v5, "vmReader":Ljava/io/FileReader;
    if-nez v5, :cond_1

    .line 127
    const-string v6, "VoiceMailConstants"

    const-string v7, "loadVoiceMail failed!"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 132
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 134
    const-string v6, "voicemail"

    invoke-static {v4, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 137
    :goto_1
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 139
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "name":Ljava/lang/String;
    const-string v6, "voicemail"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    .line 158
    if-eqz v5, :cond_2

    .line 159
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 164
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->voiceMailLoaded:Z

    goto :goto_0

    .line 144
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    const/4 v6, 0x3

    :try_start_2
    new-array v0, v6, [Ljava/lang/String;

    .line 145
    .local v0, "data":[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "numeric"

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "numeric":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "carrier"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 147
    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "vmnumber"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 148
    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "vmtag"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v6

    .line 150
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 152
    .end local v0    # "data":[Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "numeric":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v6, "VoiceMailConstants"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in Voicemail parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 158
    if-eqz v5, :cond_2

    .line 159
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 161
    :catch_1
    move-exception v6

    goto :goto_2

    .line 154
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    const-string v6, "VoiceMailConstants"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in Voicemail parser "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    if-eqz v5, :cond_2

    .line 159
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 161
    :catch_3
    move-exception v6

    goto :goto_2

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 158
    if-eqz v5, :cond_4

    .line 159
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 161
    :cond_4
    :goto_3
    throw v6

    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v6

    goto :goto_2

    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_5
    move-exception v7

    goto :goto_3
.end method


# virtual methods
.method containsCarrier(Ljava/lang/String;)Z
    .locals 1
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->loadVoiceMail()V

    .line 67
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getCarrierName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->loadVoiceMail()V

    .line 74
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 76
    .local v0, "data":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 77
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 80
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->loadVoiceMail()V

    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 91
    .local v0, "data":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 92
    const/4 v1, 0x1

    aget-object v1, v0, v1

    .line 95
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getVoiceMailTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "carrier"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->loadVoiceMail()V

    .line 104
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/VoiceMailConstants;->CarrierVmMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 106
    .local v0, "data":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 110
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
