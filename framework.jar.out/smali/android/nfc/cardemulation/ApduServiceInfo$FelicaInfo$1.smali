.class final Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;
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
        "Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, "felicaID":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, "optParam":Ljava/lang/String;
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    invoke-direct {v2, v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 1291
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1302
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1291
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo$FelicaInfo;

    move-result-object v0

    return-object v0
.end method
