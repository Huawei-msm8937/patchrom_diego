.class final Landroid/nfc/cardemulation/ApduServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
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
        "Landroid/nfc/cardemulation/ApduServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 22
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 911
    sget-object v21, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 912
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 913
    .local v5, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_4

    const/4 v4, 0x1

    .line 914
    .local v4, "onHost":Z
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v6, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 916
    .local v19, "numStaticGroups":I
    if-lez v19, :cond_0

    .line 917
    sget-object v21, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 919
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v7, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 921
    .local v17, "numDynamicGroups":I
    if-lez v17, :cond_1

    .line 922
    sget-object v21, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 924
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_5

    const/4 v8, 0x1

    .line 925
    .local v8, "requiresUnlock":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 926
    .local v9, "bannerResource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 927
    .local v10, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 928
    .local v11, "settingsActivityName":Ljava/lang/String;
    sget-object v21, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;

    .line 930
    .local v12, "seExtension":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v13, "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 932
    .local v18, "numGroups":I
    if-lez v18, :cond_2

    .line 933
    sget-object v21, Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 936
    :cond_2
    const/4 v14, 0x0

    .line 937
    .local v14, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    if-eqz v21, :cond_3

    .line 938
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/graphics/Bitmap;

    .line 939
    .local v16, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_3

    .line 940
    new-instance v14, Landroid/graphics/drawable/BitmapDrawable;

    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 941
    .restart local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v9, -0x1

    .line 944
    .end local v16    # "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_6

    const/4 v15, 0x1

    .line 946
    .local v15, "modifiable":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 947
    .local v20, "servicestate":I
    new-instance v2, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct/range {v2 .. v15}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;Ljava/util/ArrayList;Landroid/graphics/drawable/Drawable;Z)V

    .line 949
    .local v2, "tmpInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    const-string/jumbo v21, "other"

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->setServiceState(Ljava/lang/String;I)I

    .line 950
    return-object v2

    .line 913
    .end local v2    # "tmpInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v4    # "onHost":Z
    .end local v6    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v7    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v8    # "requiresUnlock":Z
    .end local v9    # "bannerResource":I
    .end local v10    # "uid":I
    .end local v11    # "settingsActivityName":Ljava/lang/String;
    .end local v12    # "seExtension":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .end local v13    # "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    .end local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v15    # "modifiable":Z
    .end local v17    # "numDynamicGroups":I
    .end local v18    # "numGroups":I
    .end local v19    # "numStaticGroups":I
    .end local v20    # "servicestate":I
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 924
    .restart local v4    # "onHost":Z
    .restart local v6    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v7    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v17    # "numDynamicGroups":I
    .restart local v19    # "numStaticGroups":I
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 944
    .restart local v8    # "requiresUnlock":Z
    .restart local v9    # "bannerResource":I
    .restart local v10    # "uid":I
    .restart local v11    # "settingsActivityName":Ljava/lang/String;
    .restart local v12    # "seExtension":Landroid/nfc/cardemulation/ApduServiceInfo$ESeInfo;
    .restart local v13    # "nfcid2Groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo$Nfcid2Group;>;"
    .restart local v14    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v18    # "numGroups":I
    :cond_6
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 908
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 956
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 908
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method
