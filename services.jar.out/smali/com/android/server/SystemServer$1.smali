.class Lcom/android/server/SystemServer$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 238
    const-string v3, "SystemServer"

    const-string v4, "start Finger Print Service async"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v2, 0x0

    .line 243
    .local v2, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/server/SystemService;>;"
    :try_start_0
    invoke-static {}, Lcom/android/server/HwServiceFactory;->getHwFingerprintService()Lcom/android/server/HwServiceFactory$IHwFingerprintService;

    move-result-object v1

    .line 245
    .local v1, "ifs":Lcom/android/server/HwServiceFactory$IHwFingerprintService;
    if-eqz v1, :cond_0

    .line 246
    invoke-interface {v1}, Lcom/android/server/HwServiceFactory$IHwFingerprintService;->createServiceClass()Ljava/lang/Class;

    move-result-object v2

    .line 249
    :cond_0
    if-eqz v2, :cond_1

    .line 250
    iget-object v3, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 254
    :goto_0
    const-string v3, "SystemServer"

    const-string v4, "FingerPrintService ready"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v1    # "ifs":Lcom/android/server/HwServiceFactory$IHwFingerprintService;
    :goto_1
    return-void

    .line 252
    .restart local v1    # "ifs":Lcom/android/server/HwServiceFactory$IHwFingerprintService;
    :cond_1
    iget-object v3, p0, Lcom/android/server/SystemServer$1;->this$0:Lcom/android/server/SystemServer;

    # getter for: Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    invoke-static {v3}, Lcom/android/server/SystemServer;->access$000(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v3

    const-class v4, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v1    # "ifs":Lcom/android/server/HwServiceFactory$IHwFingerprintService;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "Start fingerprintservice error"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
