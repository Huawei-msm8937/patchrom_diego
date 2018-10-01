.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$1;,
        Landroid/widget/ExpandableListView$SavedState;,
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    new-array v0, v3, [I

    sput-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    .line 191
    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    .line 195
    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    .line 199
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    .line 203
    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    .line 211
    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    .line 199
    :array_0
    .array-data 4
        0x10100a8
        0x10100a9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 225
    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 234
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 218
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 236
    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 239
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 241
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 243
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 245
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 247
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 248
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 250
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 253
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 256
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 263
    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 267
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 270
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 275
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 278
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->setIgnoreScrollMultiSelectStub()V

    .line 280
    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 657
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .locals 3
    .param p1, "position"    # Landroid/widget/ExpandableListPosition;

    .prologue
    .line 1160
    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1161
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    .line 1163
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1
    .param p1, "flatListPosition"    # I

    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "pos"    # Landroid/widget/ExpandableListConnector$PositionMetadata;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 496
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v7, v7, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    .line 497
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 499
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 503
    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v7, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v8, v8, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    .line 506
    .local v1, "isEmpty":Z
    :goto_0
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    .line 509
    .local v3, "stateSetIndex":I
    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 523
    .end local v1    # "isEmpty":Z
    .end local v3    # "stateSetIndex":I
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    .line 503
    goto :goto_0

    .restart local v1    # "isEmpty":Z
    :cond_4
    move v5, v4

    .line 506
    goto :goto_1

    .line 512
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    .end local v1    # "isEmpty":Z
    :cond_5
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 514
    .restart local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 516
    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    .line 519
    .local v2, "stateSet":[I
    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    .line 516
    .end local v2    # "stateSet":[I
    :cond_6
    sget-object v2, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 8
    .param p0, "packedPosition"    # J

    .prologue
    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v0, -0x1

    .line 1088
    cmp-long v1, p0, v6

    if-nez v1, :cond_1

    .line 1093
    :cond_0
    :goto_0
    return v0

    .line 1091
    :cond_1
    and-long v2, p0, v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1093
    and-long v0, p0, v6

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6
    .param p0, "groupPosition"    # I
    .param p1, "childPosition"    # I

    .prologue
    .line 1113
    const-wide/high16 v0, -0x8000000000000000L

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4
    .param p0, "groupPosition"    # I

    .prologue
    .line 1128
    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    .line 1069
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 1071
    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4
    .param p0, "packedPosition"    # J

    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    .line 1049
    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 1050
    const/4 v0, 0x2

    .line 1053
    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasRtlSupport()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isEmuiStyle()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1365
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1366
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x11600bc

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1367
    iget v2, v0, Landroid/util/TypedValue;->type:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 634
    iget v1, p0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    .line 635
    .local v0, "footerViewsStart":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isRtlCompatibilityMode()Z
    .locals 2

    .prologue
    .line 287
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 288
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resolveChildIndicator()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 337
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isRtlLocale()Z

    move-result v0

    .line 339
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_2

    .line 340
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_0

    .line 341
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 343
    :cond_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    .line 344
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 347
    :cond_2
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_3

    .line 348
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 350
    :cond_3
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_1

    .line 351
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    goto :goto_0
.end method

.method private resolveIndicator()V
    .locals 3

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isRtlLocale()Z

    move-result v0

    .line 311
    .local v0, "isLayoutRtl":Z
    if-eqz v0, :cond_3

    .line 312
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_0

    .line 313
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 315
    :cond_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    .line 316
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 326
    :cond_1
    :goto_0
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 327
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 329
    :cond_2
    return-void

    .line 319
    :cond_3
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_4

    .line 320
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 322
    :cond_4
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_1

    .line 323
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2
    .param p1, "groupPos"    # I

    .prologue
    .line 793
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    .line 795
    .local v0, "retValue":Z
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 799
    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "flatListPosition"    # I
    .param p3, "id"    # J

    .prologue
    .line 1134
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1136
    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    .line 1148
    :goto_0
    return-object v0

    .line 1139
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    .line 1140
    .local v6, "adjustedPosition":I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    .line 1141
    .local v7, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v8, v7, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    .line 1143
    .local v8, "pos":Landroid/widget/ExpandableListPosition;
    invoke-direct {p0, v8}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 1144
    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 1146
    .local v2, "packedPosition":J
    invoke-virtual {v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1148
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 359
    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-nez v25, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/16 v19, 0x0

    .line 367
    .local v19, "saveCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mGroupFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x22

    const/16 v26, 0x22

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    .line 368
    .local v8, "clipToPadding":Z
    :goto_1
    if-eqz v8, :cond_2

    .line 369
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v19

    .line 370
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mScrollX:I

    move/from16 v20, v0

    .line 371
    .local v20, "scrollX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mScrollY:I

    move/from16 v21, v0

    .line 372
    .local v21, "scrollY":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingTop:I

    move/from16 v26, v0

    add-int v26, v26, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mRight:I

    move/from16 v27, v0

    add-int v27, v27, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mLeft:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mBottom:I

    move/from16 v28, v0

    add-int v28, v28, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingBottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 377
    .end local v20    # "scrollX":I
    .end local v21    # "scrollY":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v9

    .line 379
    .local v9, "headerViewsCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mItemCount:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v26

    sub-int v25, v25, v26

    sub-int v25, v25, v9

    add-int/lit8 v15, v25, -0x1

    .line 381
    .local v15, "lastChildFlPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mBottom:I

    move/from16 v17, v0

    .line 389
    .local v17, "myB":I
    const/16 v16, -0x4

    .line 391
    .local v16, "lastItemType":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    .line 396
    .local v12, "indicatorRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v6

    .line 397
    .local v6, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v7, v25, v9

    .local v7, "childFlPos":I
    :goto_2
    if-ge v10, v6, :cond_6

    .line 400
    if-gez v7, :cond_5

    .line 398
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 367
    .end local v6    # "childCount":I
    .end local v7    # "childFlPos":I
    .end local v8    # "clipToPadding":Z
    .end local v9    # "headerViewsCount":I
    .end local v10    # "i":I
    .end local v12    # "indicatorRect":Landroid/graphics/Rect;
    .end local v15    # "lastChildFlPos":I
    .end local v16    # "lastItemType":I
    .end local v17    # "myB":I
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 403
    .restart local v6    # "childCount":I
    .restart local v7    # "childFlPos":I
    .restart local v8    # "clipToPadding":Z
    .restart local v9    # "headerViewsCount":I
    .restart local v10    # "i":I
    .restart local v12    # "indicatorRect":Landroid/graphics/Rect;
    .restart local v15    # "lastChildFlPos":I
    .restart local v16    # "lastItemType":I
    .restart local v17    # "myB":I
    :cond_5
    if-le v7, v15, :cond_7

    .line 480
    :cond_6
    if-eqz v8, :cond_0

    .line 481
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 408
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 409
    .local v14, "item":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v22

    .line 410
    .local v22, "t":I
    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 413
    .local v5, "b":I
    if-ltz v5, :cond_3

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v18

    .line 418
    .local v18, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->isRtlLocale()Z

    move-result v13

    .line 420
    .local v13, "isLayoutRtl":Z
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v24

    .line 424
    .local v24, "width":I
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_9

    .line 425
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    .line 426
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v25, v0

    :goto_4
    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 428
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v25, v0

    :goto_5
    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 435
    :goto_6
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    move/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    .line 436
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 442
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/ExpandableListView;->isEmuiStyle()Z

    move-result v25

    xor-int v25, v25, v13

    if-eqz v25, :cond_e

    .line 444
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    .line 445
    .local v23, "temp":I
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v25, v24, v25

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 446
    sub-int v25, v24, v23

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 448
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 449
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    .line 455
    .end local v23    # "temp":I
    :goto_7
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v16, v0

    .line 458
    :cond_9
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_a

    .line 460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ExpandableListView;->mStackFromBottom:Z

    move/from16 v25, v0

    if-eqz v25, :cond_f

    .line 462
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 463
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    .line 470
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 471
    .local v11, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_a

    .line 473
    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 474
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 477
    .end local v11    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_a
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_3

    .line 426
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v25, v0

    goto/16 :goto_4

    .line 428
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v25, v0

    goto/16 :goto_5

    .line 431
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_6

    .line 451
    :cond_e
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    .line 452
    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_7

    .line 465
    :cond_f
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    .line 466
    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_8
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "childIndex"    # I

    .prologue
    .line 539
    iget v4, p0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    add-int v2, p3, v4

    .line 543
    .local v2, "flatListPosition":I
    if-ltz v2, :cond_2

    .line 544
    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 545
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    .line 547
    .local v3, "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_1

    .line 550
    :cond_0
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 551
    .local v1, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 552
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 553
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 561
    .end local v0    # "adjustedPosition":I
    .end local v1    # "divider":Landroid/graphics/drawable/Drawable;
    .end local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :goto_0
    return-void

    .line 556
    .restart local v0    # "adjustedPosition":I
    .restart local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_1
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 560
    .end local v0    # "adjustedPosition":I
    .end local v3    # "pos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    :cond_2
    invoke-super {p0, p1, p2, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method public expandGroup(I)Z
    .locals 1
    .param p1, "groupPos"    # I

    .prologue
    .line 751
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .locals 7
    .param p1, "groupPos"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v6, -0x1

    .line 763
    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 765
    .local v0, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 766
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 767
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v3

    .line 769
    .local v3, "retValue":Z
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v5, :cond_0

    .line 770
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 773
    :cond_0
    if-eqz p2, :cond_1

    .line 774
    iget-object v5, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v5, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 776
    .local v1, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    .line 777
    .local v4, "shiftedGroupPosition":I
    iget-object v5, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    .line 780
    .end local v1    # "groupFlatPos":I
    .end local v4    # "shiftedGroupPosition":I
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 782
    return v3
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1361
    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 586
    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5
    .param p1, "flatListPosition"    # I

    .prologue
    .line 905
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 906
    const-wide v2, 0xffffffffL

    .line 913
    :goto_0
    return-wide v2

    .line 909
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 910
    .local v0, "adjustedPosition":I
    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    .line 911
    .local v1, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v4, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    .line 912
    .local v2, "packedPos":J
    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 5
    .param p1, "packedPosition"    # J

    .prologue
    .line 928
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    .line 930
    .local v0, "elPackedPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 931
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 932
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 933
    .local v1, "flatListPosition":I
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 934
    invoke-direct {p0, v1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .locals 6

    .prologue
    .line 960
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v2

    .line 961
    .local v2, "packedPos":J
    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const-wide/16 v4, -0x1

    .line 970
    :goto_0
    return-wide v4

    .line 963
    :cond_0
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    .line 965
    .local v0, "groupPos":I
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_1

    .line 967
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    goto :goto_0

    .line 970
    :cond_1
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 4

    .prologue
    .line 946
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    .line 949
    .local v0, "selectedPos":I
    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 682
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v10

    .line 684
    .local v10, "posMetadata":Landroid/widget/ExpandableListConnector$PositionMetadata;
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    .line 687
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 691
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 695
    const/4 v11, 0x1

    .line 740
    :goto_0
    return v11

    .line 699
    :cond_0
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 703
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 705
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    .line 726
    :cond_1
    :goto_1
    const/4 v11, 0x1

    .line 738
    .local v11, "returnValue":Z
    :goto_2
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    .line 710
    .end local v11    # "returnValue":Z
    :cond_2
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    .line 712
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 714
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_3

    .line 715
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 718
    :cond_3
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    .line 719
    .local v9, "groupPos":I
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    .line 721
    .local v8, "groupFlatPos":I
    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v12, v8, v0

    .line 722
    .local v12, "shiftedGroupPosition":I
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v9}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p0, v0, v12}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto :goto_1

    .line 729
    .end local v8    # "groupFlatPos":I
    .end local v9    # "groupPos":I
    .end local v12    # "shiftedGroupPosition":I
    :cond_4
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_5

    .line 730
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    .line 731
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v11

    goto :goto_0

    .line 735
    :cond_5
    const/4 v11, 0x0

    .restart local v11    # "returnValue":Z
    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1346
    instance-of v1, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v1, :cond_1

    .line 1347
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1357
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 1351
    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    .line 1352
    .local v0, "ss":Landroid/widget/ExpandableListView$SavedState;
    invoke-virtual {v0}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1354
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1355
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object v2, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0
    .param p1, "layoutDirection"    # I

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 300
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 301
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1339
    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1340
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v2, Landroid/widget/ExpandableListView$SavedState;

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 663
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    .line 670
    :goto_0
    return v1

    .line 669
    :cond_0
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    .line 670
    .local v0, "adjustedPosition":I
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 84
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ExpandableListAdapter;

    .prologue
    .line 608
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    .line 610
    if-eqz p1, :cond_0

    .line 612
    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    .line 618
    :goto_0
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 619
    return-void

    .line 614
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 571
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childDivider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 534
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    .line 535
    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "childIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1175
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    .line 1176
    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1190
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    .line 1191
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    .line 1192
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1193
    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1207
    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    .line 1208
    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    .line 1209
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    .line 1210
    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "groupIndicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1221
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    .line 1222
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1223
    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1225
    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I

    .prologue
    .line 1239
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    .line 1240
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    .line 1241
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1242
    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1256
    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    .line 1257
    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    .line 1258
    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    .line 1259
    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .locals 0
    .param p1, "onChildClickListener"    # Landroid/widget/ExpandableListView$OnChildClickListener;

    .prologue
    .line 887
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 888
    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .locals 0
    .param p1, "onGroupClickListener"    # Landroid/widget/ExpandableListView$OnGroupClickListener;

    .prologue
    .line 860
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    .line 861
    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .locals 0
    .param p1, "onGroupCollapseListener"    # Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .prologue
    .line 817
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    .line 818
    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .locals 0
    .param p1, "onGroupExpandListener"    # Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .prologue
    .line 835
    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    .line 836
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 599
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 600
    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 5
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "shouldExpandGroup"    # Z

    .prologue
    .line 1000
    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 1002
    .local v1, "elChildPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1004
    .local v2, "flatChildPos":Landroid/widget/ExpandableListConnector$PositionMetadata;
    if-nez v2, :cond_1

    .line 1008
    if-nez p3, :cond_0

    const/4 v3, 0x0

    .line 1026
    :goto_0
    return v3

    .line 1010
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 1012
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 1015
    if-nez v2, :cond_1

    .line 1016
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1020
    :cond_1
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 1021
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1023
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 1024
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 1026
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 979
    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    .line 981
    .local v1, "elGroupPos":Landroid/widget/ExpandableListPosition;
    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    .line 982
    .local v2, "pm":Landroid/widget/ExpandableListConnector$PositionMetadata;
    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    .line 983
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    .line 984
    .local v0, "absoluteFlatPosition":I
    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 985
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    .line 986
    return-void
.end method
