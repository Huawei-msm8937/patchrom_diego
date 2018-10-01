.class public Landroid/widget/RelativeLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "RelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alignWithParent:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBottom:I

.field private mInitialRules:[I

.field private mIsRtlCompatibilityMode:Z

.field private mLeft:I

.field private mRight:I

.field private mRules:[I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        indexMapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "above"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x4
                to = "alignBaseline"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x8
                to = "alignBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x5
                to = "alignLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xc
                to = "alignParentBottom"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x9
                to = "alignParentLeft"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xb
                to = "alignParentRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xa
                to = "alignParentTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x7
                to = "alignRight"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x6
                to = "alignTop"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "below"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xe
                to = "centerHorizontal"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xd
                to = "center"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0xf
                to = "centerVertical"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "leftOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "rightOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x12
                to = "alignStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x13
                to = "alignEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x14
                to = "alignParentStart"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x15
                to = "alignParentEnd"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x10
                to = "startOf"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x11
                to = "endOf"
            .end subannotation
        }
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "true"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "false/NO_ID"
            .end subannotation
        }
        resolveId = true
    .end annotation
.end field

.field private mRulesChanged:Z

.field private mTop:I


# direct methods
.method public constructor <init>(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1352
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1213
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1242
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1246
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1247
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1257
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1213
    const/16 v7, 0x16

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1242
    const/16 v7, 0x16

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1246
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1247
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1259
    sget-object v7, Lcom/android/internal/R$styleable;->RelativeLayout_Layout:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1262
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1263
    .local v6, "targetSdkVersion":I
    const/16 v7, 0x11

    if-lt v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1266
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1268
    .local v5, "rules":[I
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1270
    .local v4, "initialRules":[I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 1271
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_b

    .line 1272
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1273
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 1271
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1263
    .end local v0    # "N":I
    .end local v2    # "attr":I
    .end local v3    # "i":I
    .end local v4    # "initialRules":[I
    .end local v5    # "rules":[I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1275
    .restart local v0    # "N":I
    .restart local v2    # "attr":I
    .restart local v3    # "i":I
    .restart local v4    # "initialRules":[I
    .restart local v5    # "rules":[I
    :pswitch_0
    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    goto :goto_2

    .line 1278
    :pswitch_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto :goto_2

    .line 1281
    :pswitch_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto :goto_2

    .line 1284
    :pswitch_3
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto :goto_2

    .line 1287
    :pswitch_4
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto :goto_2

    .line 1290
    :pswitch_5
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto :goto_2

    .line 1293
    :pswitch_6
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto :goto_2

    .line 1296
    :pswitch_7
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto :goto_2

    .line 1299
    :pswitch_8
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto :goto_2

    .line 1302
    :pswitch_9
    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto :goto_2

    .line 1305
    :pswitch_a
    const/16 v8, 0x9

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x1

    :goto_3
    aput v7, v5, v8

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 1308
    :pswitch_b
    const/16 v8, 0xa

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, -0x1

    :goto_4
    aput v7, v5, v8

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_4

    .line 1311
    :pswitch_c
    const/16 v8, 0xb

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    :goto_5
    aput v7, v5, v8

    goto/16 :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_5

    .line 1314
    :pswitch_d
    const/16 v8, 0xc

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, -0x1

    :goto_6
    aput v7, v5, v8

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_6

    .line 1317
    :pswitch_e
    const/16 v8, 0xd

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, -0x1

    :goto_7
    aput v7, v5, v8

    goto/16 :goto_2

    :cond_6
    const/4 v7, 0x0

    goto :goto_7

    .line 1320
    :pswitch_f
    const/16 v8, 0xe

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, -0x1

    :goto_8
    aput v7, v5, v8

    goto/16 :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 1323
    :pswitch_10
    const/16 v8, 0xf

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, -0x1

    :goto_9
    aput v7, v5, v8

    goto/16 :goto_2

    :cond_8
    const/4 v7, 0x0

    goto :goto_9

    .line 1326
    :pswitch_11
    const/16 v7, 0x10

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto/16 :goto_2

    .line 1329
    :pswitch_12
    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto/16 :goto_2

    .line 1332
    :pswitch_13
    const/16 v7, 0x12

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto/16 :goto_2

    .line 1335
    :pswitch_14
    const/16 v7, 0x13

    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v5, v7

    goto/16 :goto_2

    .line 1338
    :pswitch_15
    const/16 v8, 0x14

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v7, -0x1

    :goto_a
    aput v7, v5, v8

    goto/16 :goto_2

    :cond_9
    const/4 v7, 0x0

    goto :goto_a

    .line 1341
    :pswitch_16
    const/16 v8, 0x15

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, -0x1

    :goto_b
    aput v7, v5, v8

    goto/16 :goto_2

    :cond_a
    const/4 v7, 0x0

    goto :goto_b

    .line 1345
    .end local v2    # "attr":I
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1346
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x16

    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1348
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1349
    return-void

    .line 1273
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1359
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1213
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1242
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1246
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1247
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1360
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/16 v2, 0x16

    const/4 v1, 0x0

    .line 1366
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1213
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1242
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1246
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1247
    iput-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1367
    return-void
.end method

.method public constructor <init>(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 4
    .param p1, "source"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    .line 1376
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1213
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    .line 1242
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    .line 1246
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1247
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1378
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    .line 1379
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1380
    iget-boolean v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 1382
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1383
    iget-object v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1385
    return-void
.end method

.method static synthetic access$100(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return p1
.end method

.method static synthetic access$112(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$120(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mLeft:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$202(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return p1
.end method

.method static synthetic access$212(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$220(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRight:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$302(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return p1
.end method

.method static synthetic access$312(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mBottom:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/RelativeLayout$LayoutParams;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$402(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iput p1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return p1
.end method

.method static synthetic access$412(Landroid/widget/RelativeLayout$LayoutParams;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p1, "x1"    # I

    .prologue
    .line 1212
    iget v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mTop:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/RelativeLayout$LayoutParams;)[I
    .locals 1
    .param p0, "x0"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 1212
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method private hasRelativeRules()Z
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x11

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x12

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    const/16 v1, 0x15

    aget v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resolveRules(I)V
    .locals 9
    .param p1, "layoutDirection"    # I

    .prologue
    const/16 v6, 0x12

    const/16 v8, 0x11

    const/16 v7, 0x10

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1485
    if-ne p1, v1, :cond_c

    move v0, v1

    .line 1488
    .local v0, "isLayoutRtl":Z
    :goto_0
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x16

    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1491
    iget-boolean v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mIsRtlCompatibilityMode:Z

    if-eqz v3, :cond_d

    .line 1492
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v6

    if-eqz v3, :cond_1

    .line 1493
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    if-nez v3, :cond_0

    .line 1496
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1498
    :cond_0
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v6

    .line 1501
    :cond_1
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_3

    .line 1502
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    if-nez v3, :cond_2

    .line 1505
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v3, v4

    .line 1507
    :cond_2
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v2, v3, v4

    .line 1510
    :cond_3
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-eqz v3, :cond_5

    .line 1511
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_4

    .line 1514
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v7

    aput v4, v3, v2

    .line 1516
    :cond_4
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v7

    .line 1519
    :cond_5
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_7

    .line 1520
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-nez v3, :cond_6

    .line 1523
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v3, v1

    .line 1525
    :cond_6
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v8

    .line 1528
    :cond_7
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_9

    .line 1529
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_8

    .line 1532
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v1, v3

    .line 1534
    :cond_8
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1537
    :cond_9
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_b

    .line 1538
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    aget v1, v1, v3

    if-nez v1, :cond_a

    .line 1541
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v1, v3

    .line 1543
    :cond_a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    .line 1598
    :cond_b
    :goto_1
    iput-boolean v2, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1599
    return-void

    .end local v0    # "isLayoutRtl":Z
    :cond_c
    move v0, v2

    .line 1485
    goto/16 :goto_0

    .line 1547
    .restart local v0    # "isLayoutRtl":Z
    :cond_d
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v6

    if-nez v3, :cond_e

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_10

    :cond_e
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    if-nez v3, :cond_f

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    if-eqz v3, :cond_10

    .line 1550
    :cond_f
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x5

    aput v2, v3, v4

    .line 1551
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/4 v4, 0x7

    aput v2, v3, v4

    .line 1553
    :cond_10
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v6

    if-eqz v3, :cond_11

    .line 1555
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1d

    const/4 v3, 0x7

    :goto_2
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v6

    aput v5, v4, v3

    .line 1556
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v6

    .line 1558
    :cond_11
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aget v3, v3, v4

    if-eqz v3, :cond_12

    .line 1560
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1e

    const/4 v3, 0x5

    :goto_3
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v6, 0x13

    aget v5, v5, v6

    aput v5, v4, v3

    .line 1561
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v4, 0x13

    aput v2, v3, v4

    .line 1564
    :cond_12
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-nez v3, :cond_13

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_15

    :cond_13
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v2

    if-nez v3, :cond_14

    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v1

    if-eqz v3, :cond_15

    .line 1567
    :cond_14
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v2

    .line 1568
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v1

    .line 1570
    :cond_15
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v7

    if-eqz v3, :cond_16

    .line 1572
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_1f

    move v3, v1

    :goto_4
    iget-object v5, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v5, v5, v7

    aput v5, v4, v3

    .line 1573
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v3, v7

    .line 1575
    :cond_16
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v3, v3, v8

    if-eqz v3, :cond_18

    .line 1577
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_17

    move v1, v2

    :cond_17
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v4, v4, v8

    aput v4, v3, v1

    .line 1578
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v2, v1, v8

    .line 1581
    :cond_18
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-nez v1, :cond_19

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_1b

    :cond_19
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aget v1, v1, v3

    if-nez v1, :cond_1a

    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    aget v1, v1, v3

    if-eqz v1, :cond_1b

    .line 1584
    :cond_1a
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x9

    aput v2, v1, v3

    .line 1585
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0xb

    aput v2, v1, v3

    .line 1587
    :cond_1b
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aget v1, v1, v3

    if-eqz v1, :cond_1c

    .line 1589
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_20

    const/16 v1, 0xb

    :goto_5
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x14

    aget v4, v4, v5

    aput v4, v3, v1

    .line 1590
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x14

    aput v2, v1, v3

    .line 1592
    :cond_1c
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aget v1, v1, v3

    if-eqz v1, :cond_b

    .line 1594
    iget-object v3, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    if-eqz v0, :cond_21

    const/16 v1, 0x9

    :goto_6
    iget-object v4, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v5, 0x15

    aget v4, v4, v5

    aput v4, v3, v1

    .line 1595
    iget-object v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    const/16 v3, 0x15

    aput v2, v1, v3

    goto/16 :goto_1

    .line 1555
    :cond_1d
    const/4 v3, 0x5

    goto/16 :goto_2

    .line 1560
    :cond_1e
    const/4 v3, 0x7

    goto/16 :goto_3

    :cond_1f
    move v3, v2

    .line 1572
    goto/16 :goto_4

    .line 1589
    :cond_20
    const/16 v1, 0x9

    goto :goto_5

    .line 1594
    :cond_21
    const/16 v1, 0xb

    goto :goto_6
.end method


# virtual methods
.method public addRule(I)V
    .locals 2
    .param p1, "verb"    # I

    .prologue
    const/4 v1, -0x1

    .line 1407
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v0, p1

    .line 1408
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    .line 1409
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1410
    return-void
.end method

.method public addRule(II)V
    .locals 1
    .param p1, "verb"    # I
    .param p2, "anchor"    # I

    .prologue
    .line 1428
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput p2, v0, p1

    .line 1429
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput p2, v0, p1

    .line 1430
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1431
    return-void
.end method

.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "output"    # Ljava/lang/String;

    .prologue
    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-static {v1}, Landroid/widget/RelativeLayout$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 1651
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 1652
    const-string v0, "layout:alignWithParent"

    iget-boolean v1, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 1653
    return-void
.end method

.method public getRule(I)I
    .locals 1
    .param p1, "verb"    # I

    .prologue
    .line 1462
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aget v0, v0, p1

    return v0
.end method

.method public getRules()[I
    .locals 1

    .prologue
    .line 1635
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public getRules(I)[I
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1616
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1618
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1619
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 1620
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setLayoutDirection(I)V

    .line 1623
    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    return-object v0
.end method

.method public removeRule(I)V
    .locals 2
    .param p1, "verb"    # I

    .prologue
    const/4 v1, 0x0

    .line 1444
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRules:[I

    aput v1, v0, p1

    .line 1445
    iget-object v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mInitialRules:[I

    aput v1, v0, p1

    .line 1446
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->mRulesChanged:Z

    .line 1447
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1640
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->isLayoutRtl()Z

    move-result v0

    .line 1641
    .local v0, "isLayoutRtl":Z
    invoke-direct {p0}, Landroid/widget/RelativeLayout$LayoutParams;->hasRelativeRules()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getLayoutDirection()I

    move-result v1

    if-eq p1, v1, :cond_0

    .line 1642
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->resolveRules(I)V

    .line 1645
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 1646
    return-void
.end method
