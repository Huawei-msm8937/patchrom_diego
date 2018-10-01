.class Landroid/graphics/Atlas$SlicePolicy;
.super Landroid/graphics/Atlas$Policy;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Atlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlicePolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$SplitDecision;,
        Landroid/graphics/Atlas$SlicePolicy$Cell;
    }
.end annotation


# instance fields
.field private final mPadding:I

.field private final mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

.field private final mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;


# direct methods
.method constructor <init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I
    .param p4, "splitDecision"    # Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-direct {p0, v2}, Landroid/graphics/Atlas$Policy;-><init>(Landroid/graphics/Atlas$1;)V

    .line 263
    new-instance v1, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v1, v2}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    iput-object v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 290
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    .line 293
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v0, v2}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    .line 294
    .local v0, "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    .line 295
    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    .line 296
    iget v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    iput v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 298
    iget-object v1, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v0, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 299
    iput-object p4, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    .line 300
    return-void

    .line 290
    .end local v0    # "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z
    .locals 8
    .param p1, "cell"    # Landroid/graphics/Atlas$SlicePolicy$Cell;
    .param p2, "prev"    # Landroid/graphics/Atlas$SlicePolicy$Cell;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "entry"    # Landroid/graphics/Atlas$Entry;

    .prologue
    const/4 v7, 0x0

    .line 387
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lt v5, p3, :cond_0

    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-ge v5, p4, :cond_1

    .line 388
    :cond_0
    const/4 v5, 0x0

    .line 443
    :goto_0
    return v5

    .line 392
    :cond_1
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    sub-int v1, v5, p3

    .line 393
    .local v1, "deltaWidth":I
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    sub-int v0, v5, p4

    .line 396
    .local v0, "deltaHeight":I
    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v2, v7}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    .line 397
    .local v2, "first":Landroid/graphics/Atlas$SlicePolicy$Cell;
    new-instance v3, Landroid/graphics/Atlas$SlicePolicy$Cell;

    invoke-direct {v3, v7}, Landroid/graphics/Atlas$SlicePolicy$Cell;-><init>(Landroid/graphics/Atlas$1;)V

    .line 399
    .local v3, "second":Landroid/graphics/Atlas$SlicePolicy$Cell;
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    add-int/2addr v5, p3

    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    .line 400
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v5, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    .line 401
    iget v5, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    sub-int v5, v1, v5

    iput v5, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    .line 403
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput v5, v3, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    .line 404
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    add-int/2addr v5, p4

    iget v6, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    .line 405
    iget v5, p0, Landroid/graphics/Atlas$SlicePolicy;->mPadding:I

    sub-int v5, v0, v5

    iput v5, v3, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 407
    iget-object v5, p0, Landroid/graphics/Atlas$SlicePolicy;->mSplitDecision:Landroid/graphics/Atlas$SlicePolicy$SplitDecision;

    invoke-interface {v5, v1, v0, p3, p4}, Landroid/graphics/Atlas$SlicePolicy$SplitDecision;->splitHorizontal(IIII)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    iput p4, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 410
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    iput v5, v3, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    .line 424
    :goto_1
    iget v5, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez v5, :cond_2

    iget v5, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez v5, :cond_2

    .line 425
    iput-object v2, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 426
    move-object p2, v2

    .line 429
    :cond_2
    iget v5, v3, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    if-lez v5, :cond_4

    iget v5, v3, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    if-lez v5, :cond_4

    .line 430
    iput-object v3, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 431
    iget-object v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v5, v3, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 437
    :goto_2
    iput-object v7, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 440
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->x:I

    iput v5, p5, Landroid/graphics/Atlas$Entry;->x:I

    .line 441
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->y:I

    iput v5, p5, Landroid/graphics/Atlas$Entry;->y:I

    .line 443
    const/4 v5, 0x1

    goto :goto_0

    .line 412
    :cond_3
    iget v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    iput v5, v2, Landroid/graphics/Atlas$SlicePolicy$Cell;->height:I

    .line 413
    iput p3, v3, Landroid/graphics/Atlas$SlicePolicy$Cell;->width:I

    .line 418
    move-object v4, v2

    .line 419
    .local v4, "temp":Landroid/graphics/Atlas$SlicePolicy$Cell;
    move-object v2, v3

    .line 420
    move-object v3, v4

    goto :goto_1

    .line 433
    .end local v4    # "temp":Landroid/graphics/Atlas$SlicePolicy$Cell;
    :cond_4
    iget-object v5, p1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iput-object v5, p2, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_2
.end method


# virtual methods
.method pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "entry"    # Landroid/graphics/Atlas$Entry;

    .prologue
    .line 304
    iget-object v0, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    iget-object v1, v0, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 305
    .local v1, "cell":Landroid/graphics/Atlas$SlicePolicy$Cell;
    iget-object v2, p0, Landroid/graphics/Atlas$SlicePolicy;->mRoot:Landroid/graphics/Atlas$SlicePolicy$Cell;

    .line 307
    .local v2, "prev":Landroid/graphics/Atlas$SlicePolicy$Cell;
    :goto_0
    if-eqz v1, :cond_1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    .line 308
    invoke-direct/range {v0 .. v5}, Landroid/graphics/Atlas$SlicePolicy;->insert(Landroid/graphics/Atlas$SlicePolicy$Cell;Landroid/graphics/Atlas$SlicePolicy$Cell;IILandroid/graphics/Atlas$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    .end local p3    # "entry":Landroid/graphics/Atlas$Entry;
    :goto_1
    return-object p3

    .line 312
    .restart local p3    # "entry":Landroid/graphics/Atlas$Entry;
    :cond_0
    move-object v2, v1

    .line 313
    iget-object v1, v1, Landroid/graphics/Atlas$SlicePolicy$Cell;->next:Landroid/graphics/Atlas$SlicePolicy$Cell;

    goto :goto_0

    .line 316
    :cond_1
    const/4 p3, 0x0

    goto :goto_1
.end method
