.class public Landroid/net/wifi/WifiConfigurationUtils;
.super Ljava/lang/Object;
.source "WifiConfigurationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyNetworkHistory(Landroid/net/wifi/WifiConfiguration;Landroid/os/Parcel;)V
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->internetHistory:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->portalNetwork:Z

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->wifiProNoHandoverNetwork:Z

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetAccess:Z

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetReason:I

    .line 57
    return-void

    :cond_0
    move v0, v2

    .line 52
    goto :goto_0

    :cond_1
    move v0, v2

    .line 53
    goto :goto_1

    :cond_2
    move v0, v2

    .line 54
    goto :goto_2

    :cond_3
    move v1, v2

    .line 55
    goto :goto_3
.end method

.method public static getBssidFromVisibility(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration$Visibility;)Ljava/lang/String;
    .locals 1
    .param p0, "bssid"    # Ljava/lang/String;
    .param p1, "status"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    .prologue
    .line 40
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 41
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    .line 47
    .end local p0    # "bssid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 42
    .restart local p0    # "bssid":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 43
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    goto :goto_0
.end method

.method public static initNetworkHistory(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 12
    const-string v0, "-1/-1/-1/-1/-1/-1/-1/-1/-1/-1"

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->internetHistory:Ljava/lang/String;

    .line 13
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->portalNetwork:Z

    .line 14
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    .line 15
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetAccess:Z

    .line 16
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->wifiProNoHandoverNetwork:Z

    .line 17
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetReason:I

    .line 18
    return-void
.end method

.method public static readNetworkHistory(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p0, "dest"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 21
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->internetHistory:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->internetHistory:Ljava/lang/String;

    .line 22
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->portalNetwork:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->portalNetwork:Z

    .line 23
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    .line 24
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->wifiProNoHandoverNetwork:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->wifiProNoHandoverNetwork:Z

    .line 25
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetAccess:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetAccess:Z

    .line 26
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetReason:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetReason:I

    .line 27
    return-void
.end method

.method public static writeNetworkHistory(Landroid/os/Parcel;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->internetHistory:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->portalNetwork:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccess:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->wifiProNoHandoverNetwork:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetAccess:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->wifiProNoInternetReason:I

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0

    :cond_1
    move v0, v2

    .line 32
    goto :goto_1

    :cond_2
    move v0, v2

    .line 33
    goto :goto_2

    :cond_3
    move v1, v2

    .line 34
    goto :goto_3
.end method
