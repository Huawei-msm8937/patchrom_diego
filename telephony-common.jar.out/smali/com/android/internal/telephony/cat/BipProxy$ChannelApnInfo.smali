.class Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;
.super Ljava/lang/Object;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChannelApnInfo"
.end annotation


# instance fields
.field bakCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field feature:Ljava/lang/String;

.field networkCallback:Lcom/android/internal/telephony/cat/BipProxy$BipNetworkCallback;

.field networkType:I

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 1
    .param p1, "channel"    # I
    .param p2, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 895
    packed-switch p1, :pswitch_data_0

    .line 941
    :goto_0
    iput-object p2, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->bakCmdMsg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 942
    return-void

    .line 897
    :pswitch_0
    const/16 v0, 0x26

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    .line 898
    const-string v0, "enableBIP0"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->feature:Ljava/lang/String;

    .line 899
    const-string v0, "bip0"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->type:Ljava/lang/String;

    goto :goto_0

    .line 903
    :pswitch_1
    const/16 v0, 0x27

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    .line 904
    const-string v0, "enableBIP1"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->feature:Ljava/lang/String;

    .line 905
    const-string v0, "bip1"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->type:Ljava/lang/String;

    goto :goto_0

    .line 909
    :pswitch_2
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    .line 910
    const-string v0, "enableBIP2"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->feature:Ljava/lang/String;

    .line 911
    const-string v0, "bip2"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->type:Ljava/lang/String;

    goto :goto_0

    .line 915
    :pswitch_3
    const/16 v0, 0x29

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    .line 916
    const-string v0, "enableBIP3"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->feature:Ljava/lang/String;

    .line 917
    const-string v0, "bip3"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->type:Ljava/lang/String;

    goto :goto_0

    .line 921
    :pswitch_4
    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    .line 922
    const-string v0, "enableBIP4"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->feature:Ljava/lang/String;

    .line 923
    const-string v0, "bip4"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->type:Ljava/lang/String;

    goto :goto_0

    .line 927
    :pswitch_5
    const/16 v0, 0x2b

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    .line 928
    const-string v0, "enableBIP5"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->feature:Ljava/lang/String;

    .line 929
    const-string v0, "bip5"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->type:Ljava/lang/String;

    goto :goto_0

    .line 933
    :pswitch_6
    const/16 v0, 0x2c

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->networkType:I

    .line 934
    const-string v0, "enableBIP6"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->feature:Ljava/lang/String;

    .line 935
    const-string v0, "bip6"

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ChannelApnInfo;->type:Ljava/lang/String;

    goto :goto_0

    .line 895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
