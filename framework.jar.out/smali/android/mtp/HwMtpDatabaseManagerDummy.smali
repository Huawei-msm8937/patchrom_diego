.class public Landroid/mtp/HwMtpDatabaseManagerDummy;
.super Ljava/lang/Object;
.source "HwMtpDatabaseManagerDummy.java"

# interfaces
.implements Landroid/mtp/HwMtpDatabaseManager;


# static fields
.field private static mHwMtpDatabaseManager:Landroid/mtp/HwMtpDatabaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/mtp/HwMtpDatabaseManagerDummy;

    invoke-direct {v0}, Landroid/mtp/HwMtpDatabaseManagerDummy;-><init>()V

    sput-object v0, Landroid/mtp/HwMtpDatabaseManagerDummy;->mHwMtpDatabaseManager:Landroid/mtp/HwMtpDatabaseManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/mtp/HwMtpDatabaseManager;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Landroid/mtp/HwMtpDatabaseManagerDummy;->mHwMtpDatabaseManager:Landroid/mtp/HwMtpDatabaseManager;

    return-object v0
.end method


# virtual methods
.method public getObjectPropertyList(JJ)Landroid/mtp/MtpPropertyList;
    .locals 1
    .param p1, "property"    # J
    .param p3, "handle"    # J

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public hwBeginSendObject(Ljava/lang/String;Landroid/database/Cursor;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 31
    const/4 v0, -0x1

    return v0
.end method

.method public hwGetObjectInfo(I[I[C[J)Z
    .locals 1
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outModified"    # [J

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public hwGetObjectReferences(I)Z
    .locals 1
    .param p1, "handle"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public hwStoreObjects(ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 35
    return-void
.end method
