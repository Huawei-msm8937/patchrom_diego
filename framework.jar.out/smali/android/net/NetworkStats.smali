.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$NonMonotonicObserver;,
        Landroid/net/NetworkStats$Entry;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String;

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private proc:[Ljava/lang/String;

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    .line 916
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 188
    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 189
    if-ltz p3, :cond_0

    .line 190
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    .line 191
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 192
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 193
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 194
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 195
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 196
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 197
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 198
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 199
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 201
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    .line 219
    :goto_0
    return-void

    .line 205
    :cond_0
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 206
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 207
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 208
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 209
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 210
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 211
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 212
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 213
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 214
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 216
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    .line 237
    return-void
.end method

.method private addTrafficToApplications(Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 10
    .param p1, "tunIface"    # Ljava/lang/String;
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p4, "pool"    # Landroid/net/NetworkStats$Entry;

    .prologue
    const-wide/16 v8, 0x0

    .line 1019
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1020
    .local v1, "moved":Landroid/net/NetworkStats$Entry;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1021
    .local v2, "tmpEntry":Landroid/net/NetworkStats$Entry;
    iput-object p2, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1022
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v3, :cond_6

    .line 1023
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1024
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    .line 1025
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1029
    :goto_1
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 1030
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->rxPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1034
    :goto_2
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    .line 1035
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1039
    :goto_3
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    .line 1040
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1044
    :goto_4
    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_5

    .line 1045
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->operations:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1050
    :goto_5
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1051
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1052
    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 1053
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1054
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v0

    if-nez v3, :cond_0

    .line 1055
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1057
    const/16 v3, 0x3e9

    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 1058
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1022
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1027
    :cond_1
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    goto :goto_1

    .line 1032
    :cond_2
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    goto :goto_2

    .line 1037
    :cond_3
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    goto :goto_3

    .line 1042
    :cond_4
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    goto :goto_4

    .line 1048
    :cond_5
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_5

    .line 1062
    :cond_6
    return-object v1
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V
    .locals 5
    .param p1, "tunUid"    # I
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "moved"    # Landroid/net/NetworkStats$Entry;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1067
    iput p1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1068
    const/16 v2, 0x3ea

    iput v2, p3, Landroid/net/NetworkStats$Entry;->set:I

    .line 1069
    iput v3, p3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1070
    iput-object p2, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1071
    invoke-virtual {p0, p3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1075
    invoke-virtual {p0, p2, p1, v3, v3}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v0

    .line 1076
    .local v0, "idxVpnBackground":I
    if-eq v0, v4, :cond_0

    .line 1077
    invoke-static {v0, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 1080
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p2, p1, v2, v3}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;III)I

    move-result v1

    .line 1081
    .local v1, "idxVpnForeground":I
    if-eq v1, v4, :cond_1

    .line 1082
    invoke-static {v1, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 1084
    :cond_1
    return-void
.end method

.method private findIndex(Ljava/lang/String;IIILjava/lang/String;)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "proc"    # Ljava/lang/String;

    .prologue
    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 439
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 438
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 6
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 592
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZLjava/util/HashSet;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZLjava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 10
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 604
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p5, "limitProc":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    move-object v0, p1

    .line 606
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v5, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 607
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 608
    const/4 v5, -0x1

    iput v5, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 609
    const/4 v5, 0x0

    iput v5, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 610
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 611
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 612
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 613
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 614
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 616
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v5, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v5, :cond_a

    .line 617
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    iget-object v5, p0, Landroid/net/NetworkStats;->uid:[I

    aget v5, v5, v1

    if-ne p3, v5, :cond_6

    :cond_0
    const/4 v4, 0x1

    .line 618
    .local v4, "matchesUid":Z
    :goto_2
    if-eqz p2, :cond_1

    iget-object v5, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_1
    const/4 v2, 0x1

    .line 619
    .local v2, "matchesIface":Z
    :goto_3
    if-eqz p5, :cond_2

    iget-object v5, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {p5, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_2
    const/4 v3, 0x1

    .line 621
    .local v3, "matchesProc":Z
    :goto_4
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 622
    const-string v5, ""

    iget-object v6, v0, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    aget-object v5, v5, v1

    iput-object v5, v0, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    .line 624
    :cond_3
    iget-object v5, p0, Landroid/net/NetworkStats;->tag:[I

    aget v5, v5, v1

    if-eqz v5, :cond_9

    if-nez p4, :cond_9

    .line 616
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 604
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "i":I
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesProc":Z
    .end local v4    # "matchesUid":Z
    :cond_5
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0

    .line 617
    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v1    # "i":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 618
    .restart local v4    # "matchesUid":Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    .line 619
    .restart local v2    # "matchesIface":Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 626
    .restart local v3    # "matchesProc":Z
    :cond_9
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v5, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v5, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 627
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v5, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v5, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 628
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v5, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v5, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 629
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v5, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v5, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 630
    iget-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v5, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v8, v5, v1

    add-long/2addr v6, v8

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_5

    .line 633
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesProc":Z
    .end local v4    # "matchesUid":Z
    :cond_a
    return-object v0
.end method

.method public static setMatches(II)Z
    .locals 2
    .param p0, "querySet"    # I
    .param p1, "dataSet"    # I

    .prologue
    const/4 v0, 0x1

    .line 890
    if-ne p0, p1, :cond_1

    .line 894
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, -0x1

    if-ne p0, v1, :cond_2

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 870
    sparse-switch p0, :sswitch_data_0

    .line 882
    const-string/jumbo v0, "unk"

    :goto_0
    return-object v0

    .line 872
    :sswitch_0
    const-string v0, "all"

    goto :goto_0

    .line 874
    :sswitch_1
    const-string v0, "def"

    goto :goto_0

    .line 876
    :sswitch_2
    const-string v0, "fg"

    goto :goto_0

    .line 878
    :sswitch_3
    const-string/jumbo v0, "vpnin"

    goto :goto_0

    .line 880
    :sswitch_4
    const-string/jumbo v0, "vpnout"

    goto :goto_0

    .line 870
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 850
    sparse-switch p0, :sswitch_data_0

    .line 862
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 852
    :sswitch_0
    const-string v0, "ALL"

    goto :goto_0

    .line 854
    :sswitch_1
    const-string v0, "DEFAULT"

    goto :goto_0

    .line 856
    :sswitch_2
    const-string v0, "FOREGROUND"

    goto :goto_0

    .line 858
    :sswitch_3
    const-string v0, "DBG_VPN_IN"

    goto :goto_0

    .line 860
    :sswitch_4
    const-string v0, "DBG_VPN_OUT"

    goto :goto_0

    .line 850
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 667
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 16
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .param p4, "recycle"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 684
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v12, v2, v4

    .line 685
    .local v12, "deltaRealtime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_1

    .line 686
    if-eqz p2, :cond_0

    .line 687
    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 689
    :cond_0
    const-wide/16 v12, 0x0

    .line 693
    :cond_1
    new-instance v11, Landroid/net/NetworkStats$Entry;

    invoke-direct {v11}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 695
    .local v11, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget v2, v0, Landroid/net/NetworkStats;->capacity:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/NetworkStats;->size:I

    if-lt v2, v3, :cond_4

    .line 696
    move-object/from16 v15, p4

    .line 697
    .local v15, "result":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    iput v2, v15, Landroid/net/NetworkStats;->size:I

    .line 698
    iput-wide v12, v15, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 704
    :goto_0
    const/4 v14, 0x1

    .line 705
    .local v14, "isProcEmpty":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/NetworkStats;->size:I

    if-ge v7, v2, :cond_a

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v7

    iput v2, v11, Landroid/net/NetworkStats$Entry;->uid:I

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->set:[I

    aget v2, v2, v7

    iput v2, v11, Landroid/net/NetworkStats$Entry;->set:I

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v7

    iput v2, v11, Landroid/net/NetworkStats$Entry;->tag:I

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    aget-object v2, v2, v7

    iput-object v2, v11, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    .line 713
    iget-object v2, v11, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v2, ""

    iget-object v3, v11, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const/4 v14, 0x1

    .line 714
    :goto_2
    if-eqz v14, :cond_6

    iget-object v3, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v4, v11, Landroid/net/NetworkStats$Entry;->uid:I

    iget v5, v11, Landroid/net/NetworkStats$Entry;->set:I

    iget v6, v11, Landroid/net/NetworkStats$Entry;->tag:I

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIII)I

    move-result v9

    .line 716
    .local v9, "j":I
    :goto_3
    const/4 v2, -0x1

    if-ne v9, v2, :cond_7

    .line 718
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 719
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 720
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 722
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v7

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    .line 744
    :cond_3
    :goto_4
    invoke-virtual {v15, v11}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 705
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 700
    .end local v7    # "i":I
    .end local v9    # "j":I
    .end local v14    # "isProcEmpty":Z
    .end local v15    # "result":Landroid/net/NetworkStats;
    :cond_4
    new-instance v15, Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v15, v12, v13, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .restart local v15    # "result":Landroid/net/NetworkStats;
    goto/16 :goto_0

    .line 713
    .restart local v7    # "i":I
    .restart local v14    # "isProcEmpty":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 714
    :cond_6
    iget-object v2, v11, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v3, v11, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v4, v11, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v7}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;ILjava/lang/String;I)I

    move-result v9

    goto :goto_3

    .line 725
    .restart local v9    # "j":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v4, v9

    sub-long/2addr v2, v4

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    .line 731
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8

    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 733
    :cond_8
    if-eqz p2, :cond_9

    move-object/from16 v5, p2

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move-object/from16 v10, p3

    .line 734
    invoke-interface/range {v5 .. v10}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 736
    :cond_9
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 737
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 738
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 739
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 740
    iget-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v11, Landroid/net/NetworkStats$Entry;->operations:J

    goto/16 :goto_4

    .line 748
    .end local v9    # "j":I
    :cond_a
    return-object v15
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 4
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p5, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 984
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 985
    .local v1, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_5

    .line 986
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 987
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 988
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 990
    :cond_0
    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_2

    .line 991
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 995
    :cond_2
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, p1, :cond_3

    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_3

    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 997
    invoke-virtual {p5, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1000
    :cond_3
    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1002
    invoke-virtual {p4, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 985
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1005
    :cond_5
    return-void
.end method

.method private static tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 6
    .param p0, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p1, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 1008
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1009
    .local v0, "pool":Landroid/net/NetworkStats$Entry;
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1010
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1011
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1012
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1013
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 1014
    return-object v0
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .locals 12
    .param p0, "i"    # I
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "right"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 1087
    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1088
    .local v0, "rxBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v0

    aput-wide v10, v8, p0

    .line 1089
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v8, v0

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1091
    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1092
    .local v2, "rxPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v2

    aput-wide v10, v8, p0

    .line 1093
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v8, v2

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1095
    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1096
    .local v4, "txBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v4

    aput-wide v10, v8, p0

    .line 1097
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v8, v4

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1099
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1100
    .local v6, "txPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v6

    aput-wide v10, v8, p0

    .line 1101
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v6

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1102
    return-void
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J

    .prologue
    .line 272
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 288
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget v2, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v1, v2, :cond_0

    .line 289
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 290
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 291
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 292
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 293
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 294
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 295
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 296
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 297
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 298
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 300
    iget-object v1, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    .line 302
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 305
    .end local v0    # "newLength":I
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 306
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v3, v1, v2

    .line 307
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v3, v1, v2

    .line 308
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v3, v1, v2

    .line 309
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v4, v1, v2

    .line 310
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v4, v1, v2

    .line 311
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v4, v1, v2

    .line 312
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v4, v1, v2

    .line 313
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v4, v1, v2

    .line 315
    iget-object v1, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 317
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 319
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 279
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 260
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 261
    .local v0, "clone":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 262
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 263
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3
    .param p1, "another"    # Landroid/net/NetworkStats;

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 407
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 408
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 409
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 387
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget-object v5, p1, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v6

    .line 389
    .local v6, "i":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 391
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 399
    :goto_0
    return-object p0

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 394
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 395
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 396
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 397
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    goto :goto_0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 376
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tag"    # I
    .param p4, "rxBytes"    # J
    .param p6, "rxPackets"    # J
    .param p8, "txBytes"    # J
    .param p10, "txPackets"    # J
    .param p12, "operations"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 370
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 826
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 827
    const-string v1, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 828
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_0

    .line 829
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 830
    const-string v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 831
    const-string v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 832
    const-string v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 833
    const-string v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 834
    const-string v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 835
    const-string v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 836
    const-string v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 837
    const-string v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 838
    const-string v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 839
    const-string v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 841
    const-string v1, " proc="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 844
    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;III)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    .prologue
    .line 417
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 418
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 417
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findIndex(Ljava/lang/String;ILjava/lang/String;)I
    .locals 6
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "proc"    # Ljava/lang/String;

    .prologue
    .line 431
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findIndexHinted(Ljava/lang/String;IIII)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "hintIndex"    # I

    .prologue
    .line 479
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_2

    .line 480
    div-int/lit8 v0, v2, 0x2

    .line 484
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 485
    add-int v3, p5, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 490
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 495
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :goto_2
    return v1

    .line 487
    .restart local v0    # "halfOffset":I
    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p5

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1    # "i":I
    goto :goto_1

    .line 479
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 495
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public findIndexHinted(Ljava/lang/String;ILjava/lang/String;I)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "proc"    # Ljava/lang/String;
    .param p4, "hintIndex"    # I

    .prologue
    .line 453
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_2

    .line 454
    div-int/lit8 v0, v2, 0x2

    .line 458
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 459
    add-int v3, p4, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 464
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 469
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :goto_2
    return v1

    .line 461
    .restart local v0    # "halfOffset":I
    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p4

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1    # "i":I
    goto :goto_1

    .line 453
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 469
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    .prologue
    .line 355
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 559
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I

    .prologue
    .line 567
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 575
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 6

    .prologue
    .line 551
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 552
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 579
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()J
    .locals 8

    .prologue
    .line 641
    const-wide/16 v2, 0x0

    .line 642
    .local v2, "total":J
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 643
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 642
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 645
    :cond_0
    return-wide v2
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 520
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 521
    .local v3, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 522
    .local v2, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v2, v5, :cond_0

    .line 523
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 526
    .end local v2    # "iface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method

.method public getUniqueUids()[I
    .locals 9

    .prologue
    .line 533
    new-instance v7, Landroid/util/SparseBooleanArray;

    invoke-direct {v7}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 534
    .local v7, "uids":Landroid/util/SparseBooleanArray;
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v6, v0, v2

    .line 535
    .local v6, "uid":I
    const/4 v8, 0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 534
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 538
    .end local v6    # "uid":I
    :cond_0
    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 539
    .local v5, "size":I
    new-array v4, v5, [I

    .line 540
    .local v4, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 541
    invoke-virtual {v7, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    aput v8, v4, v1

    .line 540
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 543
    :cond_1
    return-object v4
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 4
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 326
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 327
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 328
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 329
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 330
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 331
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 332
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 333
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 334
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 335
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 337
    iget-object v1, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->proc:Ljava/lang/String;

    .line 339
    return-object v0

    .line 326
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    goto :goto_0
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 756
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 758
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 759
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 760
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 761
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 762
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 764
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 766
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 764
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 769
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 770
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 771
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 772
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 773
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 776
    :cond_1
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 784
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 786
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 787
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 788
    const/4 v3, -0x1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 789
    const/4 v3, 0x0

    iput v3, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 791
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 793
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 791
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 795
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 796
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 797
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 798
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 799
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 800
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 801
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 804
    :cond_1
    return-object v2
.end method

.method public internalSize()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public migrateTun(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 951
    new-instance v4, Landroid/net/NetworkStats$Entry;

    invoke-direct {v4}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 952
    .local v4, "tunIfaceTotal":Landroid/net/NetworkStats$Entry;
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    .local v5, "underlyingIfaceTotal":Landroid/net/NetworkStats$Entry;
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 954
    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    .line 959
    invoke-static {v4, v5}, Landroid/net/NetworkStats;->tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 960
    .local v7, "pool":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v7}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    .line 971
    :goto_0
    return v0

    .line 963
    :cond_0
    invoke-direct {p0, p2, p3, v4, v7}, Landroid/net/NetworkStats;->addTrafficToApplications(Ljava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v6

    .line 964
    .local v6, "moved":Landroid/net/NetworkStats$Entry;
    invoke-direct {p0, p1, p3, v6}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V

    .line 966
    invoke-virtual {v6}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 967
    const-string v0, "NetworkStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deduct underlying network traffic from VPN package. Moved="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v8

    .line 971
    goto :goto_0
.end method

.method public setElapsedRealtime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 347
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 348
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 8
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .prologue
    .line 504
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    if-ge v6, v0, :cond_1

    .line 506
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v0, v6

    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v0, v6

    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v0, v6

    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    aget v4, v0, v6

    iget-object v0, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    aget-object v5, v0, v6

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v7

    .line 508
    .local v7, "j":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 509
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v6

    .line 504
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v1, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v7

    aput-wide v2, v0, v6

    goto :goto_1

    .line 514
    .end local v7    # "j":I
    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "right"    # Landroid/net/NetworkStats;

    .prologue
    const/4 v0, 0x0

    .line 654
    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 906
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 907
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 908
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "uids"    # [I

    .prologue
    .line 812
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 814
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 815
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 816
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 817
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 818
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 815
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 822
    :cond_1
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 241
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 242
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 246
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 247
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 248
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 249
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 250
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 251
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 252
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 254
    iget-object v0, p0, Landroid/net/NetworkStats;->proc:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 256
    return-void
.end method
