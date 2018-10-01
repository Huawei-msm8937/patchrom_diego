.class Landroid/graphics/Bitmap$UidMatcher;
.super Ljava/lang/Object;
.source "Bitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UidMatcher"
.end annotation


# static fields
.field static final FLAG_ANTIALIAS:I = 0x1

.field static final FLAG_COMPRESS:I = 0x2

.field static final FLAG_NONE:I

.field static final flag:I

.field private static final sMatcher:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Bitmap$UidMatcher;->sMatcher:Ljava/util/HashMap;

    .line 1769
    sget-object v0, Landroid/graphics/Bitmap$UidMatcher;->sMatcher:Ljava/util/HashMap;

    const-string v1, "com.sina.weibo"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1770
    sget-object v0, Landroid/graphics/Bitmap$UidMatcher;->sMatcher:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    invoke-static {}, Landroid/graphics/Bitmap$UidMatcher;->matchUid()I

    move-result v0

    sput v0, Landroid/graphics/Bitmap$UidMatcher;->flag:I

    .line 1772
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static matchUid()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 1776
    const-string/jumbo v9, "package"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 1777
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    if-nez v7, :cond_1

    .line 1789
    :cond_0
    :goto_0
    return v8

    .line 1779
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-interface {v7, v9}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 1780
    .local v6, "pkgs":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1781
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 1782
    .local v5, "pkg":Ljava/lang/String;
    sget-object v9, Landroid/graphics/Bitmap$UidMatcher;->sMatcher:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1783
    .local v4, "obj":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    goto :goto_0

    .line 1781
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1786
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "obj":Ljava/lang/Integer;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "pkgs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1787
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 1788
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 1789
    .local v1, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method
