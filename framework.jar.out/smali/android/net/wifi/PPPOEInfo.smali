.class public Landroid/net/wifi/PPPOEInfo;
.super Ljava/lang/Object;
.source "PPPOEInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/PPPOEInfo$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/PPPOEInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mOnlineTime:J

.field public mStatus:Landroid/net/wifi/PPPOEInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Landroid/net/wifi/PPPOEInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/PPPOEInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/PPPOEInfo$Status;J)V
    .locals 2
    .param p1, "status"    # Landroid/net/wifi/PPPOEInfo$Status;
    .param p2, "time"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    iput-object v0, p0, Landroid/net/wifi/PPPOEInfo;->mStatus:Landroid/net/wifi/PPPOEInfo$Status;

    .line 35
    iput-object p1, p0, Landroid/net/wifi/PPPOEInfo;->mStatus:Landroid/net/wifi/PPPOEInfo$Status;

    .line 36
    iput-wide p2, p0, Landroid/net/wifi/PPPOEInfo;->mOnlineTime:J

    .line 37
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 47
    iget-object v0, p0, Landroid/net/wifi/PPPOEInfo;->mStatus:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v0}, Landroid/net/wifi/PPPOEInfo$Status;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-wide v0, p0, Landroid/net/wifi/PPPOEInfo;->mOnlineTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 49
    return-void
.end method
