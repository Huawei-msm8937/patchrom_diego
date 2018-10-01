.class public Lcom/huawei/hwperformance/HwPerformanceDummy;
.super Ljava/lang/Object;
.source "HwPerformanceDummy.java"

# interfaces
.implements Lcom/huawei/hwperformance/HwPerformance;


# static fields
.field private static mInstance:Lcom/huawei/hwperformance/HwPerformance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/huawei/hwperformance/HwPerformanceDummy;

    invoke-direct {v0}, Lcom/huawei/hwperformance/HwPerformanceDummy;-><init>()V

    sput-object v0, Lcom/huawei/hwperformance/HwPerformanceDummy;->mInstance:Lcom/huawei/hwperformance/HwPerformance;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Lcom/huawei/hwperformance/HwPerformance;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/huawei/hwperformance/HwPerformanceDummy;->mInstance:Lcom/huawei/hwperformance/HwPerformance;

    return-object v0
.end method


# virtual methods
.method public perfConfigGet([I[I)I
    .locals 1
    .param p1, "tags"    # [I
    .param p2, "values"    # [I

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public perfConfigSet([I[ILjava/lang/String;)I
    .locals 1
    .param p1, "tags"    # [I
    .param p2, "values"    # [I
    .param p3, "pkg_name"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
