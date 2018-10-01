.class public Lcom/android/internal/telephony/HwCustIccProviderUtils;
.super Ljava/lang/Object;
.source "HwCustIccProviderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addURI(Landroid/content/UriMatcher;)V
    .locals 0
    .param p1, "uriMatcher"    # Landroid/content/UriMatcher;

    .prologue
    .line 40
    return-void
.end method

.method public fdnCacheProcess(Ljava/util/List;IJ)V
    .locals 0
    .param p2, "efType"    # I
    .param p3, "subId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    return-void
.end method

.method public handleCustQuery(Landroid/content/UriMatcher;Landroid/net/Uri;[Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uriMatcher"    # Landroid/content/UriMatcher;
    .param p2, "url"    # Landroid/net/Uri;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "addressColumns"    # [Ljava/lang/String;

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method
