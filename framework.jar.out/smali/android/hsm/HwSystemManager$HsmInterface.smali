.class public interface abstract Landroid/hsm/HwSystemManager$HsmInterface;
.super Ljava/lang/Object;
.source "HwSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hsm/HwSystemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HsmInterface"
.end annotation


# virtual methods
.method public abstract allowOp(I)Z
.end method

.method public abstract allowOp(Landroid/content/Context;I)Z
.end method

.method public abstract allowOp(Landroid/content/Context;IZ)Z
.end method

.method public abstract allowOp(Landroid/net/Uri;I)Z
.end method

.method public abstract allowOp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
.end method

.method public abstract allowOp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
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
.end method

.method public abstract canSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
.end method

.method public abstract canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
.end method

.method public abstract getDummyCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract getFakeApplications(Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract getFakeLocation(Ljava/lang/String;)Landroid/location/Location;
.end method

.method public abstract getFakePackages(Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract getFakeResolveInfoList(Ljava/util/List;)Ljava/util/List;
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
.end method

.method public abstract setOutputFile(Landroid/media/MediaRecorder;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shouldInterceptAudience([Ljava/lang/String;Ljava/lang/String;)Z
.end method
