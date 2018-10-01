.class public Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;
.super Ljava/lang/Object;
.source "AudioEffectLowPowerImpl.java"

# interfaces
.implements Lcom/huawei/pgmng/middleware/PGMiddleWare$OnPGSceneListener;


# static fields
.field private static final SET_SMARTPA_LOWERPOWER_OFF:Ljava/lang/String; = "SmartPA_lowpower=off"

.field private static final SET_SMARTPA_LOWERPOWER_ON:Ljava/lang/String; = "SmartPA_lowpower=on"

.field private static mAudioEffectInterestAction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private m2DGameFront:Z

.field private m3DGameFront:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mFrontPkgName:Ljava/lang/String;

.field private mLowAudioEffectEnable:Z

.field private mMediaPerceptible:Z

.field private mMusicPerceptible:Z

.field private mTopPopularGameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mContext:Landroid/content/Context;

    .line 23
    iput-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mFrontPkgName:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m2DGameFront:Z

    .line 25
    iput-boolean v2, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m3DGameFront:Z

    .line 26
    iput-boolean v2, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMediaPerceptible:Z

    .line 27
    iput-boolean v2, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMusicPerceptible:Z

    .line 28
    iput-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 29
    iput-boolean v2, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mLowAudioEffectEnable:Z

    .line 30
    iput-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mTopPopularGameList:Ljava/util/ArrayList;

    .line 35
    iput-boolean v2, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->DEBUG:Z

    .line 36
    const-string v0, "AudioEffectLowPowerImpl"

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->getConfigTopAppList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mTopPopularGameList:Ljava/util/ArrayList;

    .line 41
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mLowAudioEffectEnable:Z

    .line 43
    invoke-direct {p0, v2}, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->setLowAudioEffectByScene(Z)V

    .line 44
    return-void
.end method

.method private getConfigTopAppList()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const/4 v15, 0x0

    .line 169
    .local v15, "mTempPkgName":Ljava/lang/String;
    const-string v2, "popular_game"

    .line 170
    .local v2, "POPULAR_GAME":Ljava/lang/String;
    const-string v1, "pkg_name"

    .line 171
    .local v1, "PKG_NAME":Ljava/lang/String;
    const/4 v13, 0x0

    .line 172
    .local v13, "mStream":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 173
    .local v10, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "/system/etc/"

    .line 174
    .local v8, "fileDir":Ljava/lang/String;
    const-string v9, "power_popular_app.xml"

    .line 175
    .local v9, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    move-object v11, v10

    .line 218
    .end local v10    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v11, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v11

    .line 180
    .end local v11    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .restart local v10    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 184
    .local v12, "mParser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v13    # "mStream":Ljava/io/FileInputStream;
    .local v14, "mStream":Ljava/io/FileInputStream;
    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v12, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 186
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 187
    .local v3, "event":I
    :goto_1
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_3

    .line 188
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 189
    .local v16, "name":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 201
    :cond_1
    :goto_2
    :pswitch_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 202
    goto :goto_1

    .line 193
    :pswitch_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 194
    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-interface {v12, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 195
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 203
    .end local v3    # "event":I
    .end local v16    # "name":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v13, v14

    .line 204
    .end local v14    # "mStream":Ljava/io/FileInputStream;
    .local v4, "ex1":Ljava/io/FileNotFoundException;
    .restart local v13    # "mStream":Ljava/io/FileInputStream;
    :goto_3
    const/4 v10, 0x0

    .line 210
    if-eqz v13, :cond_2

    .line 212
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .end local v4    # "ex1":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_4
    move-object v11, v10

    .line 218
    .end local v10    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0

    .line 210
    .end local v11    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "mStream":Ljava/io/FileInputStream;
    .restart local v3    # "event":I
    .restart local v10    # "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14    # "mStream":Ljava/io/FileInputStream;
    :cond_3
    if-eqz v14, :cond_5

    .line 212
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v13, v14

    .line 214
    .end local v14    # "mStream":Ljava/io/FileInputStream;
    .restart local v13    # "mStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 213
    .end local v13    # "mStream":Ljava/io/FileInputStream;
    .restart local v14    # "mStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v17

    move-object v13, v14

    .line 214
    .end local v14    # "mStream":Ljava/io/FileInputStream;
    .restart local v13    # "mStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 205
    .end local v3    # "event":I
    :catch_2
    move-exception v5

    .line 206
    .local v5, "ex2":Ljava/io/IOException;
    :goto_5
    const/4 v10, 0x0

    .line 210
    if-eqz v13, :cond_2

    .line 212
    :try_start_4
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 213
    :catch_3
    move-exception v17

    goto :goto_4

    .line 207
    .end local v5    # "ex2":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 208
    .local v6, "ex3":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_6
    const/4 v10, 0x0

    .line 210
    if-eqz v13, :cond_2

    .line 212
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_4

    .line 213
    :catch_5
    move-exception v17

    goto :goto_4

    .line 210
    .end local v6    # "ex3":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v17

    :goto_7
    if-eqz v13, :cond_4

    .line 212
    :try_start_6
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 214
    :cond_4
    :goto_8
    throw v17

    .line 213
    .restart local v4    # "ex1":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v17

    goto :goto_4

    .end local v4    # "ex1":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v18

    goto :goto_8

    .line 210
    .end local v13    # "mStream":Ljava/io/FileInputStream;
    .restart local v14    # "mStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v17

    move-object v13, v14

    .end local v14    # "mStream":Ljava/io/FileInputStream;
    .restart local v13    # "mStream":Ljava/io/FileInputStream;
    goto :goto_7

    .line 207
    .end local v13    # "mStream":Ljava/io/FileInputStream;
    .restart local v14    # "mStream":Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    move-object v13, v14

    .end local v14    # "mStream":Ljava/io/FileInputStream;
    .restart local v13    # "mStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 205
    .end local v13    # "mStream":Ljava/io/FileInputStream;
    .restart local v14    # "mStream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v5

    move-object v13, v14

    .end local v14    # "mStream":Ljava/io/FileInputStream;
    .restart local v13    # "mStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 203
    :catch_a
    move-exception v4

    goto :goto_3

    .end local v13    # "mStream":Ljava/io/FileInputStream;
    .restart local v3    # "event":I
    .restart local v14    # "mStream":Ljava/io/FileInputStream;
    :cond_5
    move-object v13, v14

    .end local v14    # "mStream":Ljava/io/FileInputStream;
    .restart local v13    # "mStream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getInterestAction()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2712

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2713

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2714

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2717

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2718

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2719

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x271a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x271b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x271d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x271f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2720

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    const/16 v1, 0x2721

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    const-string v0, "AudioEffectLowPowerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioEffectInterestAction.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-object v0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioEffectInterestAction:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleSceneAudioEffect(ZZZZ)V
    .locals 3
    .param p1, "m2DGameFront"    # Z
    .param p2, "m3DGameFront"    # Z
    .param p3, "mMediaPerceptible"    # Z
    .param p4, "mMusicPerceptible"    # Z

    .prologue
    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "isPopularGame":Z
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mTopPopularGameList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mTopPopularGameList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mFrontPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/4 v0, 0x1

    .line 142
    :goto_0
    if-eqz v0, :cond_1

    .line 143
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->setLowAudioEffectByScene(Z)V

    .line 148
    :goto_1
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->setLowAudioEffectByScene(Z)V

    goto :goto_1
.end method

.method private setLowAudioEffectByScene(Z)V
    .locals 3
    .param p1, "smartPAOn"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-boolean v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mLowAudioEffectEnable:Z

    if-ne p1, v0, :cond_2

    .line 155
    iget-boolean v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return for smartPAOn and mLowAudioEffectEnable both = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 158
    :cond_2
    iput-boolean p1, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mLowAudioEffectEnable:Z

    .line 159
    iget-object v1, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioManager.setParameters = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_3

    const-string v0, "SmartPA_lowpower=on"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p1, :cond_4

    .line 161
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "SmartPA_lowpower=on"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_3
    const-string v0, "SmartPA_lowpower=off"

    goto :goto_1

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "SmartPA_lowpower=off"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onPGScene(Lcom/huawei/pgmng/PGAction;)V
    .locals 9
    .param p1, "action"    # Lcom/huawei/pgmng/PGAction;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionId()I

    move-result v2

    .line 71
    .local v2, "mActionId":I
    invoke-static {v2}, Lcom/huawei/pgmng/PGAction;->isValid(I)Z

    move-result v1

    .line 72
    .local v1, "isVaild":Z
    invoke-static {v2}, Lcom/huawei/pgmng/PGAction;->checkActionFlag(I)I

    move-result v0

    .line 73
    .local v0, "actionFlag":I
    invoke-static {v2}, Lcom/huawei/pgmng/PGAction;->checkActionType(I)I

    move-result v3

    .line 74
    .local v3, "mActionType":I
    if-eqz v1, :cond_0

    if-ne v3, v8, :cond_0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    .line 75
    :cond_0
    iget-object v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "don\'t handle the actionId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/pgmng/PGAction;->getActionPkg()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mFrontPkgName:Ljava/lang/String;

    .line 79
    iget-boolean v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->DEBUG:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    packed-switch v2, :pswitch_data_0

    .line 119
    :pswitch_0
    iget-boolean v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handle default action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_3
    :goto_1
    iget-boolean v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->DEBUG:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "m2DGameFront = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m2DGameFront:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", m3DGameFront = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m3DGameFront:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mMediaPerceptible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMediaPerceptible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mMusicPerceptible = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMusicPerceptible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_4
    iget-boolean v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m2DGameFront:Z

    iget-boolean v5, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m3DGameFront:Z

    iget-boolean v6, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMediaPerceptible:Z

    iget-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMusicPerceptible:Z

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->handleSceneAudioEffect(ZZZZ)V

    goto/16 :goto_0

    .line 83
    :pswitch_1
    iput-boolean v8, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMediaPerceptible:Z

    goto :goto_1

    .line 86
    :pswitch_2
    iput-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMediaPerceptible:Z

    goto :goto_1

    .line 89
    :pswitch_3
    iput-boolean v8, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m2DGameFront:Z

    .line 90
    iput-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m3DGameFront:Z

    .line 91
    iget-boolean v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    const-string v5, "enter into 2D Game Scene."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    :pswitch_4
    iput-boolean v8, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m3DGameFront:Z

    .line 95
    iput-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m2DGameFront:Z

    .line 96
    iget-boolean v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    const-string v5, "enter into 3D Game Scene."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 99
    :pswitch_5
    iput-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m2DGameFront:Z

    .line 100
    iput-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m3DGameFront:Z

    .line 101
    iput-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMediaPerceptible:Z

    .line 102
    iget-boolean v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    const-string v5, "enter into DEFAULT_FRONT Scene."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 113
    :pswitch_6
    iput-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m2DGameFront:Z

    .line 114
    iput-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->m3DGameFront:Z

    .line 115
    iput-boolean v7, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->mMediaPerceptible:Z

    .line 116
    iget-boolean v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/huawei/pgmng/middleware/AudioEffectLowPowerImpl;->TAG:Ljava/lang/String;

    const-string v5, "enter into the safetyguard Scene."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 81
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
