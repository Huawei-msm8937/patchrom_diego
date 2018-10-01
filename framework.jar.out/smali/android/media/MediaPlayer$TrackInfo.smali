.class public Landroid/media/MediaPlayer$TrackInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackInfo"
.end annotation


# static fields
.field static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/MediaPlayer$TrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MEDIA_TRACK_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TRACK_TYPE_METADATA:I = 0x5

.field public static final MEDIA_TRACK_TYPE_SUBTITLE:I = 0x4

.field public static final MEDIA_TRACK_TYPE_TIMEDTEXT:I = 0x3

.field public static final MEDIA_TRACK_TYPE_UNKNOWN:I = 0x0

.field public static final MEDIA_TRACK_TYPE_VIDEO:I = 0x1


# instance fields
.field final mFormat:Landroid/media/MediaFormat;

.field final mTrackType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2095
    new-instance v0, Landroid/media/MediaPlayer$TrackInfo$1;

    invoke-direct {v0}, Landroid/media/MediaPlayer$TrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/MediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/media/MediaFormat;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 2036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2037
    iput p1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    .line 2038
    iput-object p2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 2039
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2021
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    .line 2024
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2025
    .local v1, "mime":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2026
    .local v0, "language":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/media/MediaFormat;->createSubtitleFormat(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaFormat;

    move-result-object v2

    iput-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 2028
    iget v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 2029
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v3, "is-autoselect"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2030
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v3, "is-default"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2031
    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v3, "is-forced-subtitle"

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 2033
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2046
    const/4 v0, 0x0

    return v0
.end method

.method public getFormat()Landroid/media/MediaFormat;
    .locals 2

    .prologue
    .line 2003
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2005
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    .line 2007
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1994
    iget-object v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v2, "language"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1995
    .local v0, "language":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string/jumbo v0, "und"

    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getTrackType()I
    .locals 1

    .prologue
    .line 1984
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2068
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2069
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2070
    iget v1, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    packed-switch v1, :pswitch_data_0

    .line 2084
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2087
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2089
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2072
    :pswitch_0
    const-string v1, "VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2075
    :pswitch_1
    const-string v1, "AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2078
    :pswitch_2
    const-string v1, "TIMEDTEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2081
    :pswitch_3
    const-string v1, "SUBTITLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2054
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2055
    invoke-virtual {p0}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2057
    iget v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mTrackType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2058
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "mime"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2059
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "is-autoselect"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "is-default"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    iget-object v0, p0, Landroid/media/MediaPlayer$TrackInfo;->mFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "is-forced-subtitle"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2063
    :cond_0
    return-void
.end method
