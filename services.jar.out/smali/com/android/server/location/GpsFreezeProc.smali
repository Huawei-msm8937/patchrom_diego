.class public Lcom/android/server/location/GpsFreezeProc;
.super Ljava/lang/Object;
.source "GpsFreezeProc.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mGpsFreezeProc:Lcom/android/server/location/GpsFreezeProc;


# instance fields
.field private mFreezeListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsFreezeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFreezeProcesses:Ljava/util/HashMap;
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
    .locals 1

    .prologue
    .line 26
    const-string v0, "GpsFreezeProc"

    sput-object v0, Lcom/android/server/location/GpsFreezeProc;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeListenerList:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/android/server/location/GpsFreezeProc;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/server/location/GpsFreezeProc;->mGpsFreezeProc:Lcom/android/server/location/GpsFreezeProc;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/android/server/location/GpsFreezeProc;

    invoke-direct {v0}, Lcom/android/server/location/GpsFreezeProc;-><init>()V

    sput-object v0, Lcom/android/server/location/GpsFreezeProc;->mGpsFreezeProc:Lcom/android/server/location/GpsFreezeProc;

    .line 39
    :cond_0
    sget-object v0, Lcom/android/server/location/GpsFreezeProc;->mGpsFreezeProc:Lcom/android/server/location/GpsFreezeProc;

    return-object v0
.end method


# virtual methods
.method public addFreezeProcess(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 43
    iget-object v3, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    monitor-enter v3

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    sget-object v2, Lcom/android/server/location/GpsFreezeProc;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addFreezeProcess pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v2, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GpsFreezeListener;

    .line 48
    .local v0, "freezeListener":Lcom/android/server/location/GpsFreezeListener;
    invoke-virtual {v0}, Lcom/android/server/location/GpsFreezeListener;->onFreezeProChange()V

    goto :goto_0

    .line 45
    .end local v0    # "freezeListener":Lcom/android/server/location/GpsFreezeListener;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 50
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 89
    const-string v2, "Location Freeze Proc:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    monitor-enter v3

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 92
    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    return-void
.end method

.method public isFreeze(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerFreezeListener(Lcom/android/server/location/GpsFreezeListener;)V
    .locals 1
    .param p1, "freezeListener"    # Lcom/android/server/location/GpsFreezeListener;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    return-void
.end method

.method public removeFreezeProcess(Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 53
    iget-object v3, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    monitor-enter v3

    .line 54
    if-nez p2, :cond_0

    :try_start_0
    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 60
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    sget-object v2, Lcom/android/server/location/GpsFreezeProc;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFreezeProcess pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v2, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/GpsFreezeListener;

    .line 63
    .local v0, "freezeListener":Lcom/android/server/location/GpsFreezeListener;
    invoke-virtual {v0}, Lcom/android/server/location/GpsFreezeListener;->onFreezeProChange()V

    goto :goto_1

    .line 58
    .end local v0    # "freezeListener":Lcom/android/server/location/GpsFreezeListener;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/GpsFreezeProc;->mFreezeProcesses:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 65
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public shouldFreeze(Landroid/os/WorkSource;)Z
    .locals 4
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 78
    const/4 v1, 0x1

    .line 79
    .local v1, "shouldFreeze":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 80
    invoke-static {}, Lcom/android/server/location/GpsFreezeProc;->getInstance()Lcom/android/server/location/GpsFreezeProc;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsFreezeProc;->isFreeze(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 79
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_1
    if-eqz v1, :cond_2

    sget-object v2, Lcom/android/server/location/GpsFreezeProc;->TAG:Ljava/lang/String;

    const-string v3, "should freeze gps"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    return v1
.end method
