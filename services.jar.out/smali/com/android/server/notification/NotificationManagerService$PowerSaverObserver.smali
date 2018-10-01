.class final Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerSaverObserver"
.end annotation


# instance fields
.field private final SUPER_POWER_SAVE_NOTIFICATION_URI:Landroid/net/Uri;

.field private initObserver:Z

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2282
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2278
    const-string v0, "super_power_save_notification_whitelist"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->SUPER_POWER_SAVE_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->initObserver:Z

    .line 2283
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 2286
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->initObserver:Z

    if-nez v1, :cond_0

    .line 2287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->initObserver:Z

    .line 2288
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2289
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->SUPER_POWER_SAVE_NOTIFICATION_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2291
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->update(Landroid/net/Uri;)V

    .line 2293
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2302
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->update(Landroid/net/Uri;)V

    .line 2303
    return-void
.end method

.method unObserve()V
    .locals 2

    .prologue
    .line 2296
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->initObserver:Z

    .line 2297
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2298
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2299
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2306
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->SUPER_POWER_SAVE_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2307
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$PowerSaverObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->setNotificationWhiteList()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$4100(Lcom/android/server/notification/NotificationManagerService;)V

    .line 2309
    :cond_1
    return-void
.end method
