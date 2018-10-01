.class public Landroid/provider/HwMediaStoreDummy;
.super Ljava/lang/Object;
.source "HwMediaStoreDummy.java"

# interfaces
.implements Landroid/provider/IHwMediaStore;


# static fields
.field private static mInstance:Landroid/provider/IHwMediaStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Landroid/provider/HwMediaStoreDummy;

    invoke-direct {v0}, Landroid/provider/HwMediaStoreDummy;-><init>()V

    sput-object v0, Landroid/provider/HwMediaStoreDummy;->mInstance:Landroid/provider/IHwMediaStore;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/provider/IHwMediaStore;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Landroid/provider/HwMediaStoreDummy;->mInstance:Landroid/provider/IHwMediaStore;

    return-object v0
.end method


# virtual methods
.method public getPinyinForSort(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    return-object p1
.end method
