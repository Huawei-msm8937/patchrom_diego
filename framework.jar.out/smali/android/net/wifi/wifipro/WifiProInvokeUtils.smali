.class public Landroid/net/wifi/wifipro/WifiProInvokeUtils;
.super Ljava/lang/Object;
.source "WifiProInvokeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;,
        Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiProInvokeUtils"

.field private static invokeUtilsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/net/wifi/wifipro/WifiProInvokeUtils;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/wifipro/WifiProInvokeUtils;->invokeUtilsMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0}, Landroid/net/wifi/wifipro/WifiProInvokeUtils;->loadReflectMethods()V

    .line 35
    return-void
.end method

.method public static declared-synchronized getInvokeUtils(Ljava/lang/Class;)Landroid/net/wifi/wifipro/WifiProInvokeUtils;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/net/wifi/wifipro/WifiProInvokeUtils;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v5, Landroid/net/wifi/wifipro/WifiProInvokeUtils;

    monitor-enter v5

    :try_start_0
    sget-object v4, Landroid/net/wifi/wifipro/WifiProInvokeUtils;->invokeUtilsMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/wifipro/WifiProInvokeUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .local v3, "invokeUtil":Landroid/net/wifi/wifipro/WifiProInvokeUtils;
    if-nez v3, :cond_0

    .line 115
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 116
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/wifi/wifipro/WifiProInvokeUtils;

    move-object v3, v0

    .line 117
    sget-object v4, Landroid/net/wifi/wifipro/WifiProInvokeUtils;->invokeUtilsMap:Ljava/util/Map;

    invoke-interface {v4, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    if-nez v3, :cond_0

    .line 132
    :try_start_2
    const-string v4, "WifiProInvokeUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create instance error clazz["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :cond_0
    monitor-exit v5

    return-object v3

    .line 118
    :catch_0
    move-exception v2

    .line 119
    .local v2, "e":Ljava/lang/SecurityException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 112
    .end local v2    # "e":Ljava/lang/SecurityException;
    .end local v3    # "invokeUtil":Landroid/net/wifi/wifipro/WifiProInvokeUtils;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 120
    .restart local v3    # "invokeUtil":Landroid/net/wifi/wifipro/WifiProInvokeUtils;
    :catch_1
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 122
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 124
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 125
    .local v2, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v2}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 126
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v2

    .line 127
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method private loadInvokeMethodInfo(Ljava/lang/reflect/Method;)V
    .locals 10
    .param p1, "m"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v9, 0x1

    .line 45
    const-class v7, Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;

    invoke-virtual {p1, v7}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;

    .line 46
    .local v4, "targetMethodInfo":Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;
    if-eqz v4, :cond_4

    .line 47
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 48
    .local v2, "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 49
    .local v6, "targetParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v2

    if-ge v7, v9, :cond_0

    .line 50
    const-string v7, "WifiProInvokeUtils"

    const-string/jumbo v8, "no target class"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    const/4 v7, 0x0

    aget-object v0, v2, v7

    .line 53
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v7, v2

    if-le v7, v9, :cond_1

    .line 54
    array-length v7, v2

    invoke-static {v2, v9, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "targetParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    check-cast v6, [Ljava/lang/Class;

    .line 57
    .restart local v6    # "targetParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :try_start_0
    invoke-interface {v4}, Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;->methodName()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "targetMethodName":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 59
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 61
    :cond_3
    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 62
    .local v3, "targetMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 63
    invoke-direct {p0, p1, v3}, Landroid/net/wifi/wifipro/WifiProInvokeUtils;->setMethodObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v3    # "targetMethod":Ljava/lang/reflect/Method;
    .end local v5    # "targetMethodName":Ljava/lang/String;
    .end local v6    # "targetParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    :goto_0
    return-void

    .line 64
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "originParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v6    # "targetParams":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadReflectMethods()V
    .locals 6

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 39
    .local v4, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 40
    .local v3, "m":Ljava/lang/reflect/Method;
    invoke-direct {p0, v3}, Landroid/net/wifi/wifipro/WifiProInvokeUtils;->loadInvokeMethodInfo(Ljava/lang/reflect/Method;)V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 42
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method private setMethodObject(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 6
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "targetMethod"    # Ljava/lang/reflect/Method;

    .prologue
    .line 73
    const-class v5, Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;

    invoke-virtual {p1, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;

    .line 74
    .local v4, "targetMethodInfo":Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;
    invoke-interface {v4}, Landroid/net/wifi/wifipro/WifiProInvokeUtils$InvokeMethod;->methodObject()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "methodObjectName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 77
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    new-instance v2, Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;

    invoke-direct {v2, p0}, Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;-><init>(Landroid/net/wifi/wifipro/WifiProInvokeUtils;)V

    .line 79
    .local v2, "methodObject":Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;
    iput-object p2, v2, Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;->method:Ljava/lang/reflect/Method;

    .line 80
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 90
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "methodObject":Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    .line 83
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 87
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected varargs invokeMethod(Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p2, "target"    # Ljava/lang/Object;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject",
            "<TT;>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "methodObject":Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;, "Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject<TT;>;"
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    const-string v1, "WifiProInvokeUtils"

    const-string/jumbo v2, "method is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p1, Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p1, Landroid/net/wifi/wifipro/WifiProInvokeUtils$MethodObject;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 108
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 108
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 103
    :catch_1
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method
