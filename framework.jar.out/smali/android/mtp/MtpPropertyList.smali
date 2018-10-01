.class public Landroid/mtp/MtpPropertyList;
.super Ljava/lang/Object;
.source "MtpPropertyList.java"


# instance fields
.field private mCount:I

.field public final mDataTypes:[I

.field public mLongValues:[J

.field private final mMaxCount:I

.field public final mObjectHandles:[I

.field public final mPropertyCodes:[I

.field public mResult:I

.field public mStringValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "maxCount"    # I
    .param p2, "result"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    .line 48
    iput p2, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    .line 49
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    .line 50
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    .line 51
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    .line 53
    return-void
.end method


# virtual methods
.method public append(IIIJ)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "type"    # I
    .param p4, "value"    # J

    .prologue
    .line 56
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 57
    .local v0, "index":I
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    if-nez v1, :cond_0

    .line 58
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [J

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    .line 60
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 61
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 62
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    aput p3, v1, v0

    .line 63
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mLongValues:[J

    aput-wide p4, v1, v0

    .line 64
    return-void
.end method

.method public append(IILjava/lang/String;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    iget v0, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/mtp/MtpPropertyList;->mCount:I

    .line 68
    .local v0, "index":I
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 69
    iget v1, p0, Landroid/mtp/MtpPropertyList;->mMaxCount:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    .line 71
    :cond_0
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mObjectHandles:[I

    aput p1, v1, v0

    .line 72
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mPropertyCodes:[I

    aput p2, v1, v0

    .line 73
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mDataTypes:[I

    const v2, 0xffff

    aput v2, v1, v0

    .line 74
    iget-object v1, p0, Landroid/mtp/MtpPropertyList;->mStringValues:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 75
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 78
    iput p1, p0, Landroid/mtp/MtpPropertyList;->mResult:I

    .line 79
    return-void
.end method
