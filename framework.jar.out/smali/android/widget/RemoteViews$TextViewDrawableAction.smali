.class Landroid/widget/RemoteViews$TextViewDrawableAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewDrawableAction"
.end annotation


# static fields
.field public static final TAG:I = 0xb


# instance fields
.field d1:I

.field d2:I

.field d3:I

.field d4:I

.field i1:Landroid/graphics/drawable/Icon;

.field i2:Landroid/graphics/drawable/Icon;

.field i3:Landroid/graphics/drawable/Icon;

.field i4:Landroid/graphics/drawable/Icon;

.field isRelative:Z

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field useIcons:Z


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IZIIII)V
    .locals 2
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "d1"    # I
    .param p5, "d2"    # I
    .param p6, "d3"    # I
    .param p7, "d4"    # I

    .prologue
    const/4 v1, 0x0

    .line 1459
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1571
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1572
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1460
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 1461
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1462
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1463
    iput p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    .line 1464
    iput p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    .line 1465
    iput p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    .line 1466
    iput p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    .line 1467
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;IZLandroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)V
    .locals 2
    .param p2, "viewId"    # I
    .param p3, "isRelative"    # Z
    .param p4, "i1"    # Landroid/graphics/drawable/Icon;
    .param p5, "i2"    # Landroid/graphics/drawable/Icon;
    .param p6, "i3"    # Landroid/graphics/drawable/Icon;
    .param p7, "i4"    # Landroid/graphics/drawable/Icon;

    .prologue
    const/4 v1, 0x0

    .line 1470
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1571
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1572
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1471
    iput p2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 1472
    iput-boolean p3, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1473
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1474
    iput-object p4, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    .line 1475
    iput-object p5, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    .line 1476
    iput-object p6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    .line 1477
    iput-object p7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    .line 1478
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 3
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1480
    iput-object p1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 1571
    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1572
    iput-boolean v2, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    .line 1482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    .line 1483
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_1
    iput-boolean v1, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    .line 1484
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_6

    .line 1485
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    .line 1488
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1489
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    .line 1491
    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1492
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    .line 1494
    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1495
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    .line 1503
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v0, v2

    .line 1482
    goto :goto_0

    :cond_5
    move v1, v2

    .line 1483
    goto :goto_1

    .line 1498
    :cond_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    .line 1499
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    .line 1500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    .line 1501
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    goto :goto_2
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 10
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    const/4 v6, 0x0

    .line 1545
    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1546
    .local v5, "target":Landroid/widget/TextView;
    if-nez v5, :cond_0

    .line 1565
    :goto_0
    return-void

    .line 1547
    :cond_0
    iget-boolean v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v7, :cond_6

    .line 1548
    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1549
    .local v0, "ctx":Landroid/content/Context;
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    if-nez v7, :cond_1

    move-object v1, v6

    .line 1550
    .local v1, "id1":Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    if-nez v7, :cond_2

    move-object v2, v6

    .line 1551
    .local v2, "id2":Landroid/graphics/drawable/Drawable;
    :goto_2
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    if-nez v7, :cond_3

    move-object v3, v6

    .line 1552
    .local v3, "id3":Landroid/graphics/drawable/Drawable;
    :goto_3
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    if-nez v7, :cond_4

    move-object v4, v6

    .line 1553
    .local v4, "id4":Landroid/graphics/drawable/Drawable;
    :goto_4
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v6, :cond_5

    .line 1554
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1549
    .end local v1    # "id1":Landroid/graphics/drawable/Drawable;
    .end local v2    # "id2":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id3":Landroid/graphics/drawable/Drawable;
    .end local v4    # "id4":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 1550
    .restart local v1    # "id1":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_2

    .line 1551
    .restart local v2    # "id2":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_3

    .line 1552
    .restart local v3    # "id3":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_4

    .line 1556
    .restart local v4    # "id4":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v5, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1559
    .end local v0    # "ctx":Landroid/content/Context;
    .end local v1    # "id1":Landroid/graphics/drawable/Drawable;
    .end local v2    # "id2":Landroid/graphics/drawable/Drawable;
    .end local v3    # "id3":Landroid/graphics/drawable/Drawable;
    .end local v4    # "id4":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget-boolean v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v6, :cond_7

    .line 1560
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 1562
    :cond_7
    iget v6, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    iget v7, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    iget v8, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    iget v9, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1568
    const-string v0, "TextViewDrawableAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1506
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1507
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1508
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->isRelative:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1509
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    iget-boolean v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->useIcons:Z

    if-eqz v0, :cond_6

    .line 1511
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2

    .line 1512
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i1:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1517
    :goto_2
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_3

    .line 1518
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1519
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i2:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1523
    :goto_3
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_4

    .line 1524
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1525
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i3:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1529
    :goto_4
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_5

    .line 1530
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    iget-object v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->i4:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1541
    :goto_5
    return-void

    :cond_0
    move v0, v2

    .line 1508
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1509
    goto :goto_1

    .line 1515
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 1521
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 1527
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 1533
    :cond_5
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 1536
    :cond_6
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1537
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1539
    iget v0, p0, Landroid/widget/RemoteViews$TextViewDrawableAction;->d4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5
.end method