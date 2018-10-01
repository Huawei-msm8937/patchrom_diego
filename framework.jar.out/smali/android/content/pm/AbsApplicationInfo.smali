.class public abstract Landroid/content/pm/AbsApplicationInfo;
.super Ljava/lang/Object;
.source "AbsApplicationInfo.java"


# static fields
.field public static final BLACK_LIST_APK:I = 0x10000000

.field public static final FLAG_UPDATED_REMOVEABLE_APP:I = 0x4000000

.field public static final PARSE_CUST_APK:I = 0x8000000

.field public static final PARSE_IS_REMOVABLE_PREINSTALLED_APK:I = 0x2000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHwFlags()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
