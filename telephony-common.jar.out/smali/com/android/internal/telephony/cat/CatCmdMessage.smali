.class public Lcom/android/internal/telephony/cat/CatCmdMessage;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatCmdMessage$2;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserTerminationCauses;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListConstants;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/CatCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

.field private mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

.field mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field private mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

.field private mInput:Lcom/android/internal/telephony/cat/Input;

.field private mIsWifiConnected:Z

.field private mLanguageNotification:Ljava/lang/String;

.field private mMenu:Lcom/android/internal/telephony/cat/Menu;

.field private mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

.field private mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field private mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

.field private mloadIconFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 392
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 43
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 44
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 47
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mloadIconFailed:Z

    .line 49
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 56
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 57
    iput-object v5, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 61
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mIsWifiConnected:Z

    .line 246
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 247
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 248
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/Menu;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 249
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/Input;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 252
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mloadIconFailed:Z

    .line 253
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isModemBipEnable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    sget-object v3, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 290
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 320
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 257
    :pswitch_1
    new-instance v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 258
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 259
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->values()[Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 261
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    .line 262
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 263
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    .line 264
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    array-length v3, v3

    if-lez v3, :cond_2

    .line 265
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 267
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    const-class v3, Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/BearerDescription;

    iput-object v3, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 268
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    .line 269
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    .line 270
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    goto :goto_0

    .line 275
    :pswitch_2
    new-instance v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 276
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 277
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 278
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v5, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 280
    .local v1, "len":I
    if-lez v1, :cond_1

    .line 281
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    new-array v4, v1, [B

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    .line 282
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    goto/16 :goto_0

    .line 292
    .end local v1    # "len":I
    :pswitch_3
    new-instance v3, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 293
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto/16 :goto_0

    .line 297
    :pswitch_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    goto/16 :goto_0

    .line 300
    :pswitch_5
    new-instance v3, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 301
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v3, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 302
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v3, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 305
    :pswitch_6
    new-instance v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 307
    .local v2, "length":I
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    new-array v4, v2, [I

    iput-object v4, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    .line 308
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 309
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 314
    .end local v0    # "i":I
    .end local v2    # "length":I
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguageNotification:Ljava/lang/String;

    goto/16 :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 290
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method constructor <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 10
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 43
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 44
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 47
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mloadIconFailed:Z

    .line 49
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 56
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 57
    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 61
    iput-boolean v9, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mIsWifiConnected:Z

    .line 133
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 136
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandParams;->loadIconFailed:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mloadIconFailed:Z

    .line 140
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isModemBipEnable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 141
    sget-object v6, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 191
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 243
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :goto_0
    return-void

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_0
    move-object v1, p1

    .line 143
    check-cast v1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 144
    .local v1, "ocp":Lcom/android/internal/telephony/cat/OpenChannelParams;
    iget-object v6, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 145
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    .line 146
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iput v9, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    .line 147
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v7, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    .line 148
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v7, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->itl:Lcom/android/internal/telephony/cat/InterfaceTransportLevel;

    iget v7, v7, Lcom/android/internal/telephony/cat/InterfaceTransportLevel;->port:I

    iput v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    .line 149
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v7, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->bufSize:I

    iput v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    .line 150
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v7, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->destinationAddress:[B

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    .line 151
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v7, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    .line 152
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v7, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->networkAccessName:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    .line 153
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v7, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->userLogin:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    .line 154
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v7, v1, Lcom/android/internal/telephony/cat/OpenChannelParams;->userPassword:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    goto :goto_0

    .end local v1    # "ocp":Lcom/android/internal/telephony/cat/OpenChannelParams;
    :pswitch_1
    move-object v0, p1

    .line 157
    check-cast v0, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .line 158
    .local v0, "ccp":Lcom/android/internal/telephony/cat/CloseChannelParams;
    iget-object v6, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->alertMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 159
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 160
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget v7, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->channel:I

    iput v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 161
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v9, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 162
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v8, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto :goto_0

    .end local v0    # "ccp":Lcom/android/internal/telephony/cat/CloseChannelParams;
    :pswitch_2
    move-object v4, p1

    .line 165
    check-cast v4, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .line 166
    .local v4, "rdp":Lcom/android/internal/telephony/cat/ReceiveDataParams;
    iget-object v6, v4, Lcom/android/internal/telephony/cat/ReceiveDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 167
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 168
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget v7, v4, Lcom/android/internal/telephony/cat/ReceiveDataParams;->channel:I

    iput v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 169
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget v7, v4, Lcom/android/internal/telephony/cat/ReceiveDataParams;->datLen:I

    iput v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 170
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v8, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .end local v4    # "rdp":Lcom/android/internal/telephony/cat/ReceiveDataParams;
    :pswitch_3
    move-object v5, p1

    .line 173
    check-cast v5, Lcom/android/internal/telephony/cat/SendDataParams;

    .line 174
    .local v5, "sdp":Lcom/android/internal/telephony/cat/SendDataParams;
    iget-object v6, v5, Lcom/android/internal/telephony/cat/SendDataParams;->textMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 175
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 176
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget v7, v5, Lcom/android/internal/telephony/cat/SendDataParams;->channel:I

    iput v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 177
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v9, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 178
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget-object v7, v5, Lcom/android/internal/telephony/cat/SendDataParams;->data:[B

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .line 181
    .end local v5    # "sdp":Lcom/android/internal/telephony/cat/SendDataParams;
    :pswitch_4
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;-><init>()V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    .line 182
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v9, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    .line 183
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput v9, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    .line 184
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iput-object v8, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    goto/16 :goto_0

    .line 194
    :pswitch_5
    check-cast p1, Lcom/android/internal/telephony/cat/SelectItemParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v6, p1, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    goto/16 :goto_0

    .line 202
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_6
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v6, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 206
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_7
    check-cast p1, Lcom/android/internal/telephony/cat/GetInputParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v6, p1, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    goto/16 :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_8
    move-object v6, p1

    .line 209
    check-cast v6, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 210
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 211
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-object v6, p1

    check-cast v6, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mUrl:Ljava/lang/String;

    iput-object v6, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 212
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v7, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mMode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    goto/16 :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_9
    move-object v3, p1

    .line 215
    check-cast v3, Lcom/android/internal/telephony/cat/PlayToneParams;

    .line 216
    .local v3, "params":Lcom/android/internal/telephony/cat/PlayToneParams;
    iget-object v6, v3, Lcom/android/internal/telephony/cat/PlayToneParams;->mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 217
    iget-object v6, v3, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 220
    .end local v3    # "params":Lcom/android/internal/telephony/cat/PlayToneParams;
    :pswitch_a
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 223
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_b
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 224
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-object v6, p1

    check-cast v6, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 225
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v7, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_c
    move-object v2, p1

    .line 231
    check-cast v2, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 232
    .local v2, "param":Lcom/android/internal/telephony/cat/BIPClientParams;
    iget-object v6, v2, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    goto/16 :goto_0

    .line 235
    .end local v2    # "param":Lcom/android/internal/telephony/cat/BIPClientParams;
    :pswitch_d
    new-instance v6, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 236
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    check-cast p1, Lcom/android/internal/telephony/cat/SetEventListParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v7, p1, Lcom/android/internal/telephony/cat/SetEventListParams;->mEventInfo:[I

    iput-object v7, v6, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    goto/16 :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 191
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public geInput()Lcom/android/internal/telephony/cat/Input;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-object v0
.end method

.method public geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-object v0
.end method

.method public getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    return-object v0
.end method

.method public getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    return-object v0
.end method

.method public getChannelSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    return-object v0
.end method

.method public getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method public getCommandQualifier()I
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    return v0
.end method

.method public getDataSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    return-object v0
.end method

.method public getLanguageNotification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguageNotification:Ljava/lang/String;

    return-object v0
.end method

.method public getMenu()Lcom/android/internal/telephony/cat/Menu;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0
.end method

.method public getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    return-object v0
.end method

.method public getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-object v0
.end method

.method public getWifiConnectedFlag()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mIsWifiConnected:Z

    return v0
.end method

.method public hasIconLoadFailed()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mloadIconFailed:Z

    return v0
.end method

.method public setWifiConnectedFlag(Z)V
    .locals 0
    .param p1, "wifiConnected"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mIsWifiConnected:Z

    .line 65
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x0

    .line 324
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 325
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 326
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 330
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mloadIconFailed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 331
    invoke-static {}, Lcom/android/internal/telephony/HuaweiTelephonyConfigs;->isModemBipEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 367
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 390
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 335
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->channel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->protocol:Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/InterfaceTransportLevel$TransportProtocol;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->port:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bufSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    if-eqz v1, :cond_2

    .line 340
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->destinationAddress:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 345
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->bearerDescription:Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 346
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->networkAccessName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userLogin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mChannelSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$ChannelSettings;->userPassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 353
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->channel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->length:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, "len":I
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    if-eqz v1, :cond_3

    .line 357
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    array-length v0, v1

    .line 358
    :cond_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    if-lez v0, :cond_1

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mDataSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$DataSettings;->data:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 369
    .end local v0    # "len":I
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 373
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 376
    :pswitch_5
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 377
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    .line 380
    :pswitch_6
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 384
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLanguageNotification:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 367
    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
