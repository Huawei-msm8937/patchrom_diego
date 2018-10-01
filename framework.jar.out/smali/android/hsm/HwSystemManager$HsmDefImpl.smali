.class public Landroid/hsm/HwSystemManager$HsmDefImpl;
.super Ljava/lang/Object;
.source "HwSystemManager.java"

# interfaces
.implements Landroid/hsm/HwSystemManager$HsmInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hsm/HwSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HsmDefImpl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allowOp(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 348
    const/4 v0, 0x1

    return v0
.end method

.method public allowOp(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public allowOp(Landroid/content/Context;IZ)Z
    .locals 1
    .param p1, "cxt"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public allowOp(Landroid/net/Uri;I)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public allowOp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "smsBody"    # Ljava/lang/String;
    .param p3, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public allowOp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p1, "destAddr"    # Ljava/lang/String;
    .param p2, "smsBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 344
    .local p3, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public canSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public getDummyCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFakeApplications(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    .local p1, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    return-object p1
.end method

.method public getFakeLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFakePackages(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    return-object p1
.end method

.method public getFakeResolveInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    .local p1, "originalList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    return-object p1
.end method

.method public setOutputFile(Landroid/media/MediaRecorder;JJ)V
    .locals 0
    .param p1, "recorder"    # Landroid/media/MediaRecorder;
    .param p2, "offset"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    return-void
.end method

.method public shouldInterceptAudience([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "people"    # [Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 382
    const/4 v0, 0x0

    return v0
.end method
