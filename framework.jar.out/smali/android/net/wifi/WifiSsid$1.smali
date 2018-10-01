.class final Landroid/net/wifi/WifiSsid$1;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiSsid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/wifi/WifiSsid;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 252
    new-instance v5, Landroid/net/wifi/WifiSsid;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/net/wifi/WifiSsid;-><init>(Landroid/net/wifi/WifiSsid$1;)V

    .line 253
    .local v5, "ssid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .local v3, "length":I
    new-array v0, v3, [B

    .line 255
    .local v0, "b":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 256
    iget-object v6, v5, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 259
    .local v4, "oriSsidLen":I
    if-lez v4, :cond_0

    .line 260
    new-array v1, v4, [B

    .line 261
    .local v1, "buff":[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 263
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v1, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, v5, Landroid/net/wifi/WifiSsid;->oriSsid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v1    # "buff":[B
    :goto_0
    return-object v5

    .line 264
    .restart local v1    # "buff":[B
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, ""

    iput-object v6, v5, Landroid/net/wifi/WifiSsid;->oriSsid:Ljava/lang/String;

    goto :goto_0

    .line 268
    .end local v1    # "buff":[B
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    const-string v6, ""

    iput-object v6, v5, Landroid/net/wifi/WifiSsid;->oriSsid:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiSsid;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/WifiSsid;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 275
    new-array v0, p1, [Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiSsid$1;->newArray(I)[Landroid/net/wifi/WifiSsid;

    move-result-object v0

    return-object v0
.end method
