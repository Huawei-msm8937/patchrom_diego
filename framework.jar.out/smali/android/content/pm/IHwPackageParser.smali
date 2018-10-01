.class public interface abstract Landroid/content/pm/IHwPackageParser;
.super Ljava/lang/Object;
.source "IHwPackageParser.java"


# virtual methods
.method public abstract changeApplicationEuidIfNeeded(Landroid/content/pm/ApplicationInfo;I)V
.end method

.method public abstract initMetaData(Landroid/content/pm/PackageParser$Activity;)V
.end method

.method public abstract needStopApp(Ljava/lang/String;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation
.end method
