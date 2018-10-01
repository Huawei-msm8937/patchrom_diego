.class public Lcom/android/internal/telephony/cat/BearerDescription;
.super Ljava/lang/Object;
.source "BearerDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/BearerDescription$BearerType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/BearerDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public parameters:[B

.field public type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDescription$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v1, 0x0

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 62
    invoke-static {}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->values()[Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "len":I
    if-lez v0, :cond_0

    .line 65
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 66
    iget-object v1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 68
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerDescription$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/telephony/cat/BearerDescription$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cat/BearerDescription$BearerType;[B)V
    .locals 1
    .param p1, "type"    # Lcom/android/internal/telephony/cat/BearerDescription$BearerType;
    .param p2, "parameters"    # [B

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    .line 58
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    .line 59
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->type:Lcom/android/internal/telephony/cat/BearerDescription$BearerType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/BearerDescription$BearerType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BearerDescription;->parameters:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 76
    :cond_0
    return-void
.end method
