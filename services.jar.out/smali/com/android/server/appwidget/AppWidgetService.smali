.class public Lcom/android/server/appwidget/AppWidgetService;
.super Lcom/android/server/SystemService;
.source "AppWidgetService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetService"


# instance fields
.field private final mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {}, Lcom/android/server/appwidget/HwAppWidgetServiceFactory;->getHwAppWidgetService()Lcom/android/server/appwidget/HwAppWidgetServiceFactory$IHwAppWidgetService;

    move-result-object v0

    .line 42
    .local v0, "iAppWidgetMS":Lcom/android/server/appwidget/HwAppWidgetServiceFactory$IHwAppWidgetService;
    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0, p1}, Lcom/android/server/appwidget/HwAppWidgetServiceFactory$IHwAppWidgetService;->getAppWidgetImpl(Landroid/content/Context;)Lcom/android/server/appwidget/AppWidgetServiceImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    new-instance v1, Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-direct {v1, p1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    goto :goto_0
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .prologue
    .line 58
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 60
    const-string v0, "AppWidgetService"

    const-string v1, "onBootPhase=600"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetService;->isSafeMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->setSafeMode(Z)V

    .line 64
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "appwidget"

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/appwidget/AppWidgetService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 53
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetService;->mImpl:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    invoke-static {v0}, Lcom/android/server/AppWidgetBackupBridge;->register(Lcom/android/server/WidgetBackupProvider;)V

    .line 54
    return-void
.end method
