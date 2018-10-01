.class Landroid/app/WallpaperManager$Globals$1;
.super Ljava/lang/Object;
.source "WallpaperManager.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/WallpaperManager$Globals;->onBlurWallpaperChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/WallpaperManager$Globals;

.field final synthetic val$callback:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Landroid/app/WallpaperManager$Globals;Ljava/lang/reflect/Method;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Landroid/app/WallpaperManager$Globals$1;->this$0:Landroid/app/WallpaperManager$Globals;

    iput-object p2, p0, Landroid/app/WallpaperManager$Globals$1;->val$callback:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals$1;->val$callback:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 448
    const/4 v0, 0x0

    return-object v0
.end method
