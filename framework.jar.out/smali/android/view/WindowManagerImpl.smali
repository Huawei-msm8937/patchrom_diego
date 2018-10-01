.class public final Landroid/view/WindowManagerImpl;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# instance fields
.field private mBlockInVRViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultToken:Landroid/os/IBinder;

.field private final mDisplay:Landroid/view/Display;

.field private final mGlobal:Landroid/view/WindowManagerGlobal;

.field private final mParentWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Display;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/view/Display;Landroid/view/Window;)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    .line 70
    iput-object p2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    .line 71
    return-void
.end method

.method private applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 124
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    if-nez v1, :cond_1

    .line 125
    instance-of v1, p1, Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Params must be WindowManager.LayoutParams"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 130
    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 131
    .local v0, "wparams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_1

    .line 132
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 135
    .end local v0    # "wparams":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 94
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getVRSystemServiceManager()Landroid/vrsystem/IVRSystemServiceManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/vrsystem/IVRSystemServiceManager;->isVRMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 95
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getVRSystemServiceManager()Landroid/vrsystem/IVRSystemServiceManager;

    move-result-object v0

    iget-object v1, p1, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/vrsystem/IVRSystemServiceManager;->isVRApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 98
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v1

    .line 107
    :goto_0
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_0
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/view/WindowManagerGlobal;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/Display;Landroid/view/Window;)V

    goto :goto_0
.end method

.method public createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "parentWindow"    # Landroid/view/Window;

    .prologue
    .line 74
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    invoke-direct {v0, v1, p1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public createPresentationWindowManager(Landroid/view/Display;)Landroid/view/WindowManagerImpl;
    .locals 2
    .param p1, "display"    # Landroid/view/Display;

    .prologue
    .line 78
    new-instance v0, Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mParentWindow:Landroid/view/Window;

    invoke-direct {v0, p1, v1}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;Landroid/view/Window;)V

    return-object v0
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v1

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/WindowManagerGlobal;->removeView(Landroid/view/View;Z)V

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setDefaultToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 88
    iput-object p1, p0, Landroid/view/WindowManagerImpl;->mDefaultToken:Landroid/os/IBinder;

    .line 89
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 112
    iget-object v1, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mBlockInVRViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    monitor-exit v1

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-direct {p0, p2}, Landroid/view/WindowManagerImpl;->applyDefaultToken(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    iget-object v0, p0, Landroid/view/WindowManagerImpl;->mGlobal:Landroid/view/WindowManagerGlobal;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerGlobal;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
