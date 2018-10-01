.class public Lcom/android/server/policy/HwPolicyFactory;
.super Ljava/lang/Object;
.source "HwPolicyFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/HwPolicyFactory$Factory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HwPolicyFactory"

.field private static final mLock:Ljava/lang/Object;

.field private static volatile obj:Lcom/android/server/policy/HwPolicyFactory$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/HwPolicyFactory;->obj:Lcom/android/server/policy/HwPolicyFactory$Factory;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/policy/HwPolicyFactory;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method

.method public static addRebootMenu(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/policy/GlobalActions$Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/policy/GlobalActions$Action;>;"
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 119
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 120
    invoke-interface {v0, p0}, Lcom/android/server/policy/HwPolicyFactory$Factory;->addRebootMenu(Ljava/util/ArrayList;)V

    .line 122
    :cond_0
    return-void
.end method

.method public static addUltraPowerSave(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 1
    .param p0, "items"    # Ljava/util/ArrayList;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 111
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 112
    invoke-interface {v0, p0, p1}, Lcom/android/server/policy/HwPolicyFactory$Factory;->addUltraPowerSaveImpl(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 114
    :cond_0
    return-void
.end method

.method public static getHwPhoneLayoutInflater(Landroid/content/Context;)Lcom/android/internal/policy/PhoneLayoutInflater;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 73
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0, p0}, Lcom/android/server/policy/HwPolicyFactory$Factory;->getHwPhoneLayoutInflater(Landroid/content/Context;)Lcom/android/internal/policy/PhoneLayoutInflater;

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/policy/PhoneLayoutInflater;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneLayoutInflater;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getHwPhoneWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 62
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p0}, Lcom/android/server/policy/HwPolicyFactory$Factory;->getHwPhoneWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static getHwPhoneWindowManager()Landroid/view/WindowManagerPolicy;
    .locals 2

    .prologue
    .line 51
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 52
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lcom/android/server/policy/HwPolicyFactory$Factory;->getHwPhoneWindowManager()Landroid/view/WindowManagerPolicy;

    move-result-object v1

    .line 55
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V

    goto :goto_0
.end method

.method private static getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;
    .locals 6

    .prologue
    .line 85
    sget-object v2, Lcom/android/server/policy/HwPolicyFactory;->obj:Lcom/android/server/policy/HwPolicyFactory$Factory;

    if-eqz v2, :cond_0

    .line 86
    sget-object v2, Lcom/android/server/policy/HwPolicyFactory;->obj:Lcom/android/server/policy/HwPolicyFactory$Factory;

    .line 103
    .local v0, "allimpl":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 88
    .end local v0    # "allimpl":Ljava/lang/Class;
    :cond_0
    sget-object v3, Lcom/android/server/policy/HwPolicyFactory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 91
    :try_start_0
    const-string v2, "com.android.server.policy.HwPolicyFactoryImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    .restart local v0    # "allimpl":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/HwPolicyFactory$Factory;

    sput-object v2, Lcom/android/server/policy/HwPolicyFactory;->obj:Lcom/android/server/policy/HwPolicyFactory$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    sget-object v2, Lcom/android/server/policy/HwPolicyFactory;->obj:Lcom/android/server/policy/HwPolicyFactory$Factory;

    if-eqz v2, :cond_1

    .line 99
    const-string v2, "HwPolicyFactory"

    const-string v3, ": success to get AllImpl object and return...."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v2, Lcom/android/server/policy/HwPolicyFactory;->obj:Lcom/android/server/policy/HwPolicyFactory$Factory;

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HwPolicyFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": reflection exception is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 102
    :cond_1
    const-string v2, "HwPolicyFactory"

    const-string v3, ": fail to get AllImpl object"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hideBootMessage()V
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 143
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/android/server/policy/HwPolicyFactory$Factory;->hideBootMessage()V

    .line 146
    :cond_0
    return-void
.end method

.method public static ifUseHwGlobalActions()Z
    .locals 2

    .prologue
    .line 149
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 150
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 151
    invoke-interface {v0}, Lcom/android/server/policy/HwPolicyFactory$Factory;->ifUseHwGlobalActions()Z

    move-result v1

    .line 153
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHwGlobalActionsShowing()Z
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 158
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Lcom/android/server/policy/HwPolicyFactory$Factory;->isHwGlobalActionsShowing()Z

    move-result v1

    .line 161
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static showBootMessage(Landroid/content/Context;II)V
    .locals 1
    .param p0, "tContext"    # Landroid/content/Context;
    .param p1, "curr"    # I
    .param p2, "total"    # I

    .prologue
    .line 136
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 137
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/policy/HwPolicyFactory$Factory;->showBootMessage(Landroid/content/Context;II)V

    .line 140
    :cond_0
    return-void
.end method

.method public static showHwGlobalActionsFragment(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/PowerManager;ZZZ)V
    .locals 7
    .param p0, "tContext"    # Landroid/content/Context;
    .param p1, "tWindowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .param p2, "powerManager"    # Landroid/os/PowerManager;
    .param p3, "keyguardShowing"    # Z
    .param p4, "keyguardSecure"    # Z
    .param p5, "isDeviceProvisioned"    # Z

    .prologue
    .line 128
    invoke-static {}, Lcom/android/server/policy/HwPolicyFactory;->getImplObject()Lcom/android/server/policy/HwPolicyFactory$Factory;

    move-result-object v0

    .line 129
    .local v0, "obj":Lcom/android/server/policy/HwPolicyFactory$Factory;
    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 130
    invoke-interface/range {v0 .. v6}, Lcom/android/server/policy/HwPolicyFactory$Factory;->showHwGlobalActionsFragment(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;Landroid/os/PowerManager;ZZZ)V

    .line 133
    :cond_0
    return-void
.end method
