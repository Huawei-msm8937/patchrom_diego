.class Lcom/android/server/location/GpsLocationProvider$SvData;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/GpsLocationProvider$GpsData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SvData"
.end annotation


# instance fields
.field final mAlmanacMask:I

.field final mAzimuths:[F

.field final mElevations:[F

.field final mEphemerisMask:I

.field final mPrns:[I

.field final mSnrs:[F

.field final mSvCount:I

.field final mUsedInFixMask:I

.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;I[I[F[F[FIII)V
    .locals 0
    .param p2, "svCount"    # I
    .param p3, "prns"    # [I
    .param p4, "snrs"    # [F
    .param p5, "elevations"    # [F
    .param p6, "azimuths"    # [F
    .param p7, "ephemerisMask"    # I
    .param p8, "almanacMask"    # I
    .param p9, "usedInFixMask"    # I

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1981
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mSvCount:I

    .line 1982
    iput-object p3, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mPrns:[I

    .line 1983
    iput-object p4, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mSnrs:[F

    .line 1984
    iput-object p5, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mElevations:[F

    .line 1985
    iput-object p6, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mAzimuths:[F

    .line 1986
    iput p7, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mEphemerisMask:I

    .line 1987
    iput p8, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mAlmanacMask:I

    .line 1988
    iput p9, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mUsedInFixMask:I

    .line 1989
    return-void
.end method


# virtual methods
.method public send()V
    .locals 9

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->this$0:Lcom/android/server/location/GpsLocationProvider;

    # getter for: Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;
    invoke-static {v0}, Lcom/android/server/location/GpsLocationProvider;->access$100(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mSvCount:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mPrns:[I

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mSnrs:[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mElevations:[F

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mAzimuths:[F

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mEphemerisMask:I

    iget v7, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mAlmanacMask:I

    iget v8, p0, Lcom/android/server/location/GpsLocationProvider$SvData;->mUsedInFixMask:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII)V

    .line 2002
    return-void
.end method
