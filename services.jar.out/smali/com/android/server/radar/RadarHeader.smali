.class public Lcom/android/server/radar/RadarHeader;
.super Ljava/lang/Object;
.source "RadarHeader.java"


# static fields
.field private static final HEAD_MAX_SIZE:I = 0x100


# instance fields
.field private mBugType:I

.field private mLevel:I

.field private mPackageName:Ljava/lang/String;

.field private mScene:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "scene"    # I
    .param p4, "level"    # I

    .prologue
    .line 22
    const/16 v3, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/radar/RadarHeader;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "bugType"    # I
    .param p4, "scene"    # I
    .param p5, "level"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/server/radar/RadarHeader;->mPackageName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/android/server/radar/RadarHeader;->mVersion:Ljava/lang/String;

    .line 16
    iput p5, p0, Lcom/android/server/radar/RadarHeader;->mLevel:I

    .line 17
    iput p3, p0, Lcom/android/server/radar/RadarHeader;->mBugType:I

    .line 18
    iput p4, p0, Lcom/android/server/radar/RadarHeader;->mScene:I

    .line 19
    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/android/server/radar/RadarHeader;->mLevel:I

    return v0
.end method

.method public getRadarHeader()Ljava/lang/String;
    .locals 4

    .prologue
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/radar/RadarHeader;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "APK version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/radar/RadarHeader;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Bug type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/radar/RadarHeader;->mBugType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Scene def: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/radar/RadarHeader;->mScene:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "header":Ljava/lang/String;
    return-object v0
.end method

.method public getScene()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/server/radar/RadarHeader;->mScene:I

    return v0
.end method
