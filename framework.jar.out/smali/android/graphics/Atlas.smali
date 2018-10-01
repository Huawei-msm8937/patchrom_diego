.class public Landroid/graphics/Atlas;
.super Ljava/lang/Object;
.source "Atlas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Atlas$1;,
        Landroid/graphics/Atlas$SlicePolicy;,
        Landroid/graphics/Atlas$Policy;,
        Landroid/graphics/Atlas$Entry;,
        Landroid/graphics/Atlas$Type;
    }
.end annotation


# static fields
.field public static final FLAG_ADD_PADDING:I = 0x2

.field public static final FLAG_DEFAULTS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Atlas"


# instance fields
.field private final mFlags:I

.field private final mHeight:I

.field private mPolicy:Landroid/graphics/Atlas$Policy;

.field private final mType:Landroid/graphics/Atlas$Type;

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Atlas$Type;II)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 98
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;III)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Atlas$Type;III)V
    .locals 1
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/graphics/Atlas;->mType:Landroid/graphics/Atlas$Type;

    .line 117
    iput p2, p0, Landroid/graphics/Atlas;->mWidth:I

    .line 118
    iput p3, p0, Landroid/graphics/Atlas;->mHeight:I

    .line 119
    iput p4, p0, Landroid/graphics/Atlas;->mFlags:I

    .line 121
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Atlas;->findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    .line 122
    return-void
.end method

.method private static findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;
    .locals 3
    .param p0, "type"    # Landroid/graphics/Atlas$Type;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 168
    sget-object v0, Landroid/graphics/Atlas$1;->$SwitchMap$android$graphics$Atlas$Type:[I

    invoke-virtual {p0}, Landroid/graphics/Atlas$Type;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 182
    :goto_0
    return-object v0

    .line 170
    :pswitch_0
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;

    invoke-direct {v2, v1}, Landroid/graphics/Atlas$SlicePolicy$MinAreaSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {v0, p1, p2, p3, v2}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    goto :goto_0

    .line 173
    :pswitch_1
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;

    invoke-direct {v2, v1}, Landroid/graphics/Atlas$SlicePolicy$MaxAreaSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {v0, p1, p2, p3, v2}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    goto :goto_0

    .line 176
    :pswitch_2
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;

    invoke-direct {v2, v1}, Landroid/graphics/Atlas$SlicePolicy$ShorterFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {v0, p1, p2, p3, v2}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    goto :goto_0

    .line 179
    :pswitch_3
    new-instance v0, Landroid/graphics/Atlas$SlicePolicy;

    new-instance v2, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;

    invoke-direct {v2, v1}, Landroid/graphics/Atlas$SlicePolicy$LongerFreeAxisSplitDecision;-><init>(Landroid/graphics/Atlas$1;)V

    invoke-direct {v0, p1, p2, p3, v2}, Landroid/graphics/Atlas$SlicePolicy;-><init>(IIILandroid/graphics/Atlas$SlicePolicy$SplitDecision;)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public pack(II)Landroid/graphics/Atlas$Entry;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "entry"    # Landroid/graphics/Atlas$Entry;

    .prologue
    .line 153
    if-nez p3, :cond_0

    new-instance p3, Landroid/graphics/Atlas$Entry;

    .end local p3    # "entry":Landroid/graphics/Atlas$Entry;
    invoke-direct {p3}, Landroid/graphics/Atlas$Entry;-><init>()V

    .line 155
    .restart local p3    # "entry":Landroid/graphics/Atlas$Entry;
    :cond_0
    iget-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    if-nez v0, :cond_1

    .line 156
    const-string v0, "Atlas"

    const-string/jumbo v1, "mPolicy is not set, find it again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Landroid/graphics/Atlas;->mType:Landroid/graphics/Atlas$Type;

    iget v1, p0, Landroid/graphics/Atlas;->mWidth:I

    iget v2, p0, Landroid/graphics/Atlas;->mHeight:I

    iget v3, p0, Landroid/graphics/Atlas;->mFlags:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Atlas;->findPolicy(Landroid/graphics/Atlas$Type;III)Landroid/graphics/Atlas$Policy;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    .line 158
    iget-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    if-nez v0, :cond_1

    .line 159
    const-string v0, "Atlas"

    const-string v1, "Also cannot find the mPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/graphics/Atlas;->mPolicy:Landroid/graphics/Atlas$Policy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Atlas$Policy;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v0

    goto :goto_0
.end method
