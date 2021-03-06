.class Lcom/android/server/HDMIConnectService;
.super Landroid/os/IHDMIConnectService$Stub;
.source "HDMIConnectService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HDMIConnectService"


# instance fields
.field public final ACTION_HDCP_AUTH_FAILED:Ljava/lang/String;

.field public final ACTION_HDCP_AUTH_SUCESS:Ljava/lang/String;

.field public final ACTION_HDMI_CABLE_CONNECTED:Ljava/lang/String;

.field public final ACTION_HDMI_CABLE_DISCONNECTED:Ljava/lang/String;

.field public final ACTION_HDMI_OFF:Ljava/lang/String;

.field public final ACTION_HDMI_ON:Ljava/lang/String;

.field final HDMI_MODE_COORDINATE:[I

.field public final HDMI_USER_CONFIG:Ljava/lang/String;

.field final VESA_OFFSET:I

.field final m1024x768p43Hz:I

.field final m1024x768p60Hz:I

.field final m1024x768p70Hz:I

.field final m1024x768p75Hz:I

.field final m1024x768p85Hz:I

.field final m1152x864p75Hz:I

.field final m1280x1024p60Hz:I

.field final m1280x1024p75Hz:I

.field final m1280x1024p85Hz:I

.field final m1280x720p50_16_9:I

.field final m1280x720p60Hz:I

.field final m1280x720p60_16_9:I

.field final m1280x768p60Hz:I

.field final m1280x768p60HzCVT:I

.field final m1280x768p75Hz:I

.field final m1280x768p85Hz:I

.field final m1280x800p60Hz:I

.field final m1280x800p60HzCVT:I

.field final m1280x800p75Hz:I

.field final m1280x800p85Hz:I

.field final m1280x960p60Hz:I

.field final m1280x960p85Hz:I

.field final m1360x768p60Hz:I

.field final m1366x768p60Hz:I

.field final m1400x1050p60Hz:I

.field final m1400x1050p60HzCVT:I

.field final m1400x1050p75Hz:I

.field final m1400x1050p85Hz:I

.field final m1440x900p60Hz:I

.field final m1440x900p60HzCVT:I

.field final m1440x900p75Hz:I

.field final m1440x900p85Hz:I

.field final m1600x1200p60Hz:I

.field final m1600x1200p65Hz:I

.field final m1600x1200p70Hz:I

.field final m1600x1200p75Hz:I

.field final m1600x1200p85Hz:I

.field final m1680x1050p60Hz:I

.field final m1680x1050p60HzCVT:I

.field final m1680x1050p75Hz:I

.field final m1680x1050p85Hz:I

.field final m1920x1080p24_16_9:I

.field final m1920x1080p25_16_9:I

.field final m1920x1080p30_16_9:I

.field final m1920x1080p50_16_9:I

.field final m1920x1080p60Hz:I

.field final m1920x1080p60_16_9:I

.field final m1920x1200p60Hz:I

.field final m640x350p85Hz:I

.field final m640x400p85Hz:I

.field final m640x480p60Hz:I

.field final m640x480p60_4_3:I

.field final m640x480p72Hz:I

.field final m640x480p75Hz:I

.field final m640x480p85Hz:I

.field final m720x400p85Hz:I

.field final m720x480p60_16_9:I

.field final m720x480p60_4_3:I

.field final m720x576p50_16_9:I

.field final m720x576p50_4_3:I

.field final m800x600p56Hz:I

.field final m800x600p60Hz:I

.field final m800x600p72Hz:I

.field final m800x600p75Hz:I

.field final m800x600p85Hz:I

.field final m848x480p60Hz:I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHDMICodes:[I

.field private mHDMIUserConfig:Z

.field private mListener:Lcom/android/server/HDMIEventListener;

.field final mTimingOrder:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 193
    invoke-direct {p0}, Landroid/os/IHDMIConnectService$Stub;-><init>()V

    .line 40
    iput-boolean v2, p0, Lcom/android/server/HDMIConnectService;->mHDMIUserConfig:Z

    .line 42
    const-string v1, "hdmi_connected"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDMI_CABLE_CONNECTED:Ljava/lang/String;

    .line 43
    const-string v1, "hdmi_disconnected"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDMI_CABLE_DISCONNECTED:Ljava/lang/String;

    .line 44
    const-string v1, "hdmi_on"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDMI_ON:Ljava/lang/String;

    .line 45
    const-string v1, "hdmi_off"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDMI_OFF:Ljava/lang/String;

    .line 46
    const-string v1, "hdcp_auth_success"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDCP_AUTH_SUCESS:Ljava/lang/String;

    .line 47
    const-string v1, "hdcp_auth_failed"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->ACTION_HDCP_AUTH_FAILED:Ljava/lang/String;

    .line 48
    const-string v1, "HDMI_USER_CONFIG"

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->HDMI_USER_CONFIG:Ljava/lang/String;

    .line 50
    iput v2, p0, Lcom/android/server/HDMIConnectService;->m640x480p60_4_3:I

    .line 51
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x480p60_4_3:I

    .line 52
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x480p60_16_9:I

    .line 53
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x720p60_16_9:I

    .line 54
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p60_16_9:I

    .line 55
    const/16 v1, 0x11

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x576p50_4_3:I

    .line 56
    const/16 v1, 0x12

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x576p50_16_9:I

    .line 57
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x720p50_16_9:I

    .line 58
    const/16 v1, 0x1f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p50_16_9:I

    .line 59
    const/16 v1, 0x20

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p24_16_9:I

    .line 60
    const/16 v1, 0x21

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p25_16_9:I

    .line 61
    const/16 v1, 0x22

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p30_16_9:I

    .line 63
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/HDMIConnectService;->VESA_OFFSET:I

    .line 64
    const/16 v1, 0x65

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x350p85Hz:I

    .line 65
    const/16 v1, 0x66

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x400p85Hz:I

    .line 66
    const/16 v1, 0x67

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m720x400p85Hz:I

    .line 67
    const/16 v1, 0x68

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x480p60Hz:I

    .line 68
    const/16 v1, 0x69

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x480p72Hz:I

    .line 69
    const/16 v1, 0x6a

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x480p75Hz:I

    .line 70
    const/16 v1, 0x6b

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m640x480p85Hz:I

    .line 71
    const/16 v1, 0x6c

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p56Hz:I

    .line 72
    const/16 v1, 0x6d

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p60Hz:I

    .line 73
    const/16 v1, 0x6e

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p72Hz:I

    .line 74
    const/16 v1, 0x6f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p75Hz:I

    .line 75
    const/16 v1, 0x70

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m800x600p85Hz:I

    .line 76
    const/16 v1, 0x72

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m848x480p60Hz:I

    .line 77
    const/16 v1, 0x73

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p43Hz:I

    .line 78
    const/16 v1, 0x74

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p60Hz:I

    .line 79
    const/16 v1, 0x75

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p70Hz:I

    .line 80
    const/16 v1, 0x76

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p75Hz:I

    .line 81
    const/16 v1, 0x77

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1024x768p85Hz:I

    .line 82
    const/16 v1, 0x79

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1152x864p75Hz:I

    .line 83
    const/16 v1, 0x7a

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x768p60HzCVT:I

    .line 84
    const/16 v1, 0x7b

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x768p60Hz:I

    .line 85
    const/16 v1, 0x7c

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x768p75Hz:I

    .line 86
    const/16 v1, 0x7d

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x768p85Hz:I

    .line 87
    const/16 v1, 0x7f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x800p60HzCVT:I

    .line 88
    const/16 v1, 0x80

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x800p60Hz:I

    .line 89
    const/16 v1, 0x81

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x800p75Hz:I

    .line 90
    const/16 v1, 0x82

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x800p85Hz:I

    .line 91
    const/16 v1, 0x84

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x960p60Hz:I

    .line 92
    const/16 v1, 0x85

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x960p85Hz:I

    .line 93
    const/16 v1, 0x87

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x1024p60Hz:I

    .line 94
    const/16 v1, 0x88

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x1024p75Hz:I

    .line 95
    const/16 v1, 0x89

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x1024p85Hz:I

    .line 96
    const/16 v1, 0x8b

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1360x768p60Hz:I

    .line 97
    const/16 v1, 0x8d

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1400x1050p60HzCVT:I

    .line 98
    const/16 v1, 0x8e

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1400x1050p60Hz:I

    .line 99
    const/16 v1, 0x8f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1400x1050p75Hz:I

    .line 100
    const/16 v1, 0x90

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1400x1050p85Hz:I

    .line 101
    const/16 v1, 0x92

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1440x900p60HzCVT:I

    .line 102
    const/16 v1, 0x93

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1440x900p60Hz:I

    .line 103
    const/16 v1, 0x94

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1440x900p75Hz:I

    .line 104
    const/16 v1, 0x95

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1440x900p85Hz:I

    .line 105
    const/16 v1, 0x97

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p60Hz:I

    .line 106
    const/16 v1, 0x98

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p65Hz:I

    .line 107
    const/16 v1, 0x99

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p70Hz:I

    .line 108
    const/16 v1, 0x9a

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p75Hz:I

    .line 109
    const/16 v1, 0x9b

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1600x1200p85Hz:I

    .line 110
    const/16 v1, 0x9d

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1680x1050p60HzCVT:I

    .line 111
    const/16 v1, 0x9e

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1680x1050p60Hz:I

    .line 112
    const/16 v1, 0x9f

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1680x1050p75Hz:I

    .line 113
    const/16 v1, 0xa0

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1680x1050p85Hz:I

    .line 114
    const/16 v1, 0xa9

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1200p60Hz:I

    .line 115
    const/16 v1, 0xb5

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1366x768p60Hz:I

    .line 116
    const/16 v1, 0xb6

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1920x1080p60Hz:I

    .line 117
    const/16 v1, 0xb9

    iput v1, p0, Lcom/android/server/HDMIConnectService;->m1280x720p60Hz:I

    .line 119
    const/16 v1, 0xc4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->HDMI_MODE_COORDINATE:[I

    .line 145
    const/16 v1, 0xd

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->mTimingOrder:[I

    .line 211
    new-instance v1, Lcom/android/server/HDMIConnectService$1;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIConnectService$1;-><init>(Lcom/android/server/HDMIConnectService;)V

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    iput-object p1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    .line 198
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HDMIConnectService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 200
    new-instance v1, Lcom/android/server/HDMIEventListener;

    invoke-direct {v1, p0}, Lcom/android/server/HDMIEventListener;-><init>(Lcom/android/server/HDMIConnectService;)V

    iput-object v1, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    .line 201
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HDMI_USER_CONFIG"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "hdmiUserConfig":Ljava/lang/String;
    const-string v1, "hdmi_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/HDMIConnectService;->mHDMIUserConfig:Z

    .line 209
    :cond_0
    return-void

    .line 119
    :array_0
    .array-data 4
        -0x1
        0x1
        0x2
        0x2
        0x4
        0x5
        0x6
        0x6
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        0x11
        0x11
        0x13
        -0x1
        0x15
        0x15
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1f
        0x20
        0x21
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x6d
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x74
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7b
        0x7f
        0x80
        0x81
        0x82
        0x80
        0x84
        0x85
        0x84
        0x87
        0x88
        0x89
        0x87
        0x8b
        0x8b
        0x8d
        0x8e
        0x8f
        0x90
        0x8e
        0x92
        0x93
        0x94
        0x95
        0x93
        0x97
        0x98
        0x99
        0x9a
        0x9b
        0x97
        0x9d
        0x9e
        0x9f
        0xa0
        0x9e
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa9
        0xa9
        0xa9
        0xa9
        0xa9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xb5
        0xb6
        -0x1
        -0x1
        0xb9
    .end array-data

    .line 145
    :array_1
    .array-data 4
        0x1
        0x2
        0x64
        0x3
        0x11
        0x12
        0x13
        0x4
        0x20
        0x21
        0x22
        0x1f
        0x10
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/HDMIConnectService;)Lcom/android/server/HDMIEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/HDMIConnectService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    return-object v0
.end method


# virtual methods
.method public broadcastEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    const-string v1, "HDMIConnectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method public broadcastEvent(Ljava/lang/String;[I)V
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "modes"    # [I

    .prologue
    .line 269
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EDID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    const-string v1, "HDMIConnectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting ... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", modes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public enableFullScreen(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 339
    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDMIConnectService enableFullScreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    monitor-enter v1

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->enableFullScreen(Z)V

    .line 342
    monitor-exit v1

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getAppropriateCode()I
    .locals 8

    .prologue
    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "bestOrder":I
    const/4 v1, 0x4

    .line 179
    .local v1, "bestCode":I
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mHDMICodes:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget v3, v0, v4

    .line 180
    .local v3, "code":I
    iget-object v7, p0, Lcom/android/server/HDMIConnectService;->HDMI_MODE_COORDINATE:[I

    aget v3, v7, v3

    .line 181
    if-gez v3, :cond_1

    .line 179
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/HDMIConnectService;->getTimingOrder(I)I

    move-result v6

    .line 185
    .local v6, "order":I
    if-lt v6, v2, :cond_0

    .line 186
    move v2, v6

    .line 187
    move v1, v3

    goto :goto_1

    .line 190
    .end local v3    # "code":I
    .end local v6    # "order":I
    :cond_2
    return v1
.end method

.method public getHDMIUserConfig()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/android/server/HDMIConnectService;->mHDMIUserConfig:Z

    return v0
.end method

.method getTimingOrder(I)I
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 163
    const/16 v1, 0x64

    if-ge v1, p1, :cond_1

    .line 164
    const/4 v0, 0x2

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mTimingOrder:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mTimingOrder:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 172
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHDMIConnected()Z
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0}, Lcom/android/server/HDMIEventListener;->isHDMIConnected()Z

    move-result v0

    return v0
.end method

.method public sendCecCmd(Ljava/lang/String;)V
    .locals 3
    .param p1, "CecCmdStr"    # Ljava/lang/String;

    .prologue
    .line 334
    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCecCmd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public sendHDCPconnected(Z)V
    .locals 3
    .param p1, "bConnected"    # Z

    .prologue
    .line 325
    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHDCPconnected bConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 327
    const-string v0, "hdcp_auth_success"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    .line 331
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v0, "hdcp_auth_failed"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendHDMIConnected([I)V
    .locals 3
    .param p1, "codes"    # [I

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/HDMIConnectService;->mHDMICodes:[I

    .line 277
    const-string v0, "hdmi_connected"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    .line 278
    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendHDMIConnected getHDMIUserConfig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "hdmi_on"

    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mHDMICodes:[I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;[I)V

    .line 282
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getAppropriateCode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIEventListener;->changeDisplayCode(I)V

    .line 284
    monitor-exit v1

    .line 290
    :goto_0
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 287
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->setHDMIEnable(Z)V

    goto :goto_0
.end method

.method public sendHDMIDisconnected()V
    .locals 3

    .prologue
    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/HDMIConnectService;->mHDMICodes:[I

    .line 294
    const-string v0, "hdmi_disconnected"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const-string v0, "hdmi_off"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    monitor-enter v1

    .line 299
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIEventListener;->setHPDOption(Z)V

    .line 302
    :cond_0
    monitor-exit v1

    .line 304
    :cond_1
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCecCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->setCecCmd(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method public setDisplayCode(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->isHDMIConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener.changeDisplayCode(code) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->changeDisplayCode(I)V

    .line 318
    :cond_0
    return-void
.end method

.method public setHDCPEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 307
    const-string v0, "HDMIConnectService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mListener.setHDCPEnable(true) enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->setHDCPEnable(Z)V

    .line 309
    return-void
.end method

.method public setHDMIEnable(Z)V
    .locals 3
    .param p1, "enableHDMI"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "HDMI_USER_CONFIG"

    if-eqz p1, :cond_1

    const-string v0, "hdmi_on"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    iput-boolean p1, p0, Lcom/android/server/HDMIConnectService;->mHDMIUserConfig:Z

    .line 241
    iget-object v1, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    monitor-enter v1

    .line 242
    if-nez p1, :cond_0

    .line 243
    :try_start_0
    const-string v0, "hdmi_off"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    .line 244
    const-string v0, "hdmi_disconnected"

    invoke-virtual {p0, v0}, Lcom/android/server/HDMIConnectService;->broadcastEvent(Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {p0}, Lcom/android/server/HDMIConnectService;->getHDMIUserConfig()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/HDMIEventListener;->setHPDOption(Z)V

    .line 247
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    return-void

    .line 237
    :cond_1
    const-string v0, "hdmi_off"

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setReproductionHeightRatio(F)V
    .locals 1
    .param p1, "asHeightRatio"    # F

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->setReproductionHeightRatio(F)V

    .line 256
    return-void
.end method

.method public setReproductionWidthRatio(F)V
    .locals 1
    .param p1, "asWidthRatio"    # F

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mListener:Lcom/android/server/HDMIEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/HDMIEventListener;->setReproductionWidthRatio(F)V

    .line 252
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/server/HDMIConnectService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires SHUTDOWN permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    const-string v0, "HDMIConnectService"

    const-string v1, "Shutting down out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method
