.class Landroid/app/ContextImpl$1$1;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/ContextImpl$1;


# direct methods
.method constructor <init>(Landroid/app/ContextImpl$1;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Landroid/app/ContextImpl$1$1;->this$1:Landroid/app/ContextImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 406
    # getter for: Landroid/app/ContextImpl;->DBG_PRELOAD:Z
    invoke-static {}, Landroid/app/ContextImpl;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    const-string v2, "PreloadSharedPrefs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    const-string v2, ".xml"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 410
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 411
    .local v0, "spf":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x2800

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v1, 0x1

    .line 413
    .end local v0    # "spf":Ljava/io/File;
    :cond_1
    return v1
.end method
