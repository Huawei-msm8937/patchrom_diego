.class Landroid/widget/RemoteViews$BitmapCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapCache"
.end annotation


# static fields
.field static final mMaxNumOfBitmaps:I = 0x32


# instance fields
.field mBitmaps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mBitmapsCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapsCount:I

    .line 961
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 962
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapsCount:I

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 970
    .local v1, "count":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 971
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 972
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 974
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapsForSafe(Landroid/graphics/Bitmap;)I

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 977
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private addBitmapsForSafe(Landroid/graphics/Bitmap;)I
    .locals 5
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v4, 0x32

    .line 1012
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 1013
    const/4 v0, -0x1

    .line 1029
    :goto_0
    return v0

    .line 1016
    :cond_0
    const/4 v0, -0x1

    .line 1017
    .local v0, "index":I
    iget v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapsCount:I

    if-ge v1, v4, :cond_1

    .line 1018
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    iget v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapsCount:I

    .line 1027
    :goto_1
    iget v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapsCount:I

    goto :goto_0

    .line 1022
    :cond_1
    iget v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapsCount:I

    rem-int/lit8 v0, v1, 0x32

    .line 1023
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string v1, "RemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteViews try to cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmapsCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bitmaps, only allows "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", replace bitmap at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V
    .locals 2
    .param p1, "memoryCounter"    # Landroid/widget/RemoteViews$MemoryUsageCounter;

    .prologue
    .line 1047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1048
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;->addBitmapMemory(Landroid/graphics/Bitmap;)V

    .line 1047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1050
    :cond_0
    return-void
.end method

.method public assimilate(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 5
    .param p1, "bitmapCache"    # Landroid/widget/RemoteViews$BitmapCache;

    .prologue
    .line 1034
    iget-object v1, p1, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    .line 1035
    .local v1, "bitmapsToBeAdded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1036
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1037
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1038
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v4, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1040
    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapsForSafe(Landroid/graphics/Bitmap;)I

    .line 1036
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1044
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public getBitmapForId(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 995
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 996
    :cond_0
    const/4 v0, 0x0

    .line 998
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getBitmapId(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 980
    if-nez p1, :cond_0

    .line 981
    const/4 v0, -0x1

    .line 988
    :goto_0
    return v0

    .line 983
    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    iget-object v1, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 987
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapsForSafe(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 988
    .local v0, "index":I
    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeBitmapsToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1003
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1004
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1006
    iget-object v2, p0, Landroid/widget/RemoteViews$BitmapCache;->mBitmaps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1005
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1008
    :cond_0
    return-void
.end method
