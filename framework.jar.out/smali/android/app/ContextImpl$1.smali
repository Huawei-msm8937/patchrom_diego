.class Landroid/app/ContextImpl$1;
.super Ljava/lang/Thread;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ContextImpl;->preloadSharedPrefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ContextImpl;


# direct methods
.method constructor <init>(Landroid/app/ContextImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Landroid/app/ContextImpl$1;->this$0:Landroid/app/ContextImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 402
    iget-object v7, p0, Landroid/app/ContextImpl$1;->this$0:Landroid/app/ContextImpl;

    # invokes: Landroid/app/ContextImpl;->getPreferencesDir()Ljava/io/File;
    invoke-static {v7}, Landroid/app/ContextImpl;->access$000(Landroid/app/ContextImpl;)Ljava/io/File;

    move-result-object v1

    .line 403
    .local v1, "dir":Ljava/io/File;
    new-instance v7, Landroid/app/ContextImpl$1$1;

    invoke-direct {v7, p0}, Landroid/app/ContextImpl$1$1;-><init>(Landroid/app/ContextImpl$1;)V

    invoke-virtual {v1, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, "names":[Ljava/lang/String;
    if-nez v5, :cond_1

    .line 417
    # getter for: Landroid/app/ContextImpl;->DBG_PRELOAD:Z
    invoke-static {}, Landroid/app/ContextImpl;->access$100()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 418
    const-string v7, "PreloadSharedPrefs"

    const-string v8, "No prefs to load"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    return-void

    .line 422
    :cond_1
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 423
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x4

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 424
    iget-object v7, p0, Landroid/app/ContextImpl$1;->this$0:Landroid/app/ContextImpl;

    invoke-virtual {v7, v4, v8}, Landroid/app/ContextImpl;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    check-cast v6, Landroid/app/SharedPreferencesImpl;

    .line 425
    .local v6, "prefs":Landroid/app/SharedPreferencesImpl;
    invoke-virtual {v6}, Landroid/app/SharedPreferencesImpl;->awaitLoaded()V

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
