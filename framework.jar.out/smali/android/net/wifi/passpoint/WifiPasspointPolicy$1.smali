.class final Landroid/net/wifi/passpoint/WifiPasspointPolicy$1;
.super Ljava/lang/Object;
.source "WifiPasspointPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/passpoint/WifiPasspointPolicy;
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
        "Landroid/net/wifi/passpoint/WifiPasspointPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointPolicy;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 378
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/passpoint/WifiPasspointPolicy;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointPolicy;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 383
    new-array v0, p1, [Landroid/net/wifi/passpoint/WifiPasspointPolicy;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Landroid/net/wifi/passpoint/WifiPasspointPolicy$1;->newArray(I)[Landroid/net/wifi/passpoint/WifiPasspointPolicy;

    move-result-object v0

    return-object v0
.end method
