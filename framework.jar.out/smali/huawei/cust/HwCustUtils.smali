.class public final Lhuawei/cust/HwCustUtils;
.super Ljava/lang/Object;
.source "HwCustUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhuawei/cust/HwCustUtils$ClassInfo;
    }
.end annotation


# static fields
.field static final CUST_CLS_NULL_REPLACE:Ljava/lang/String; = "-"

.field static final CUST_CLS_SUFFIX_DEF:Ljava/lang/String; = "Impl:-"

.field static final CUST_CLS_SUFFIX_SEP:Ljava/lang/String; = ":"

.field static CUST_VERSION:Z = false

.field static final DEBUG_I:Z = true

.field static EXCEPTION_WHEN_ERROR:Z = false

.field static final FACTORY_ARRAY:[Ljava/lang/String;

.field static FILE_ONLY_IN_CUST:Ljava/lang/String; = null

.field static final HWCUST_PREFIX:Ljava/lang/String; = "HwCust"

.field static final PROP_CUST_CLS_SUFFIX:Ljava/lang/String; = "cust.cls.suffixes"

.field static final TAG:Ljava/lang/String; = "HwCust"

.field private static mClassCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lhuawei/cust/HwCustUtils$ClassInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mConstructorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static mPrimitiveMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    const/4 v2, 0x1

    sput-boolean v2, Lhuawei/cust/HwCustUtils;->EXCEPTION_WHEN_ERROR:Z

    .line 58
    const-string v2, "/system/etc/permissions/hwcustframework.xml"

    sput-object v2, Lhuawei/cust/HwCustUtils;->FILE_ONLY_IN_CUST:Ljava/lang/String;

    .line 59
    new-instance v2, Ljava/io/File;

    sget-object v3, Lhuawei/cust/HwCustUtils;->FILE_ONLY_IN_CUST:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lhuawei/cust/HwCustUtils;->CUST_VERSION:Z

    .line 255
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lhuawei/cust/HwCustUtils;->mClassCache:Ljava/util/HashMap;

    .line 257
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lhuawei/cust/HwCustUtils;->mConstructorCache:Ljava/util/HashMap;

    .line 259
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    .line 261
    sget-object v2, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v2, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v2, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Character;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v2, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Short;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v2, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v2, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v2, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v2, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v2, "cust.cls.suffixes"

    const-string v3, "Impl:-"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "cust_suffix":Ljava/lang/String;
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lhuawei/cust/HwCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    .line 272
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lhuawei/cust/HwCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 273
    sget-object v2, Lhuawei/cust/HwCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Lhuawei/cust/HwCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    aget-object v2, v2, v1

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    :cond_0
    sget-object v2, Lhuawei/cust/HwCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v1

    .line 272
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method public static varargs createObj(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "classClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lhuawei/cust/HwCustUtils;->createObj(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs createObj(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 81
    sget-object v6, Lhuawei/cust/HwCustUtils;->FACTORY_ARRAY:[Ljava/lang/String;

    invoke-static {p0, p1, v6}, Lhuawei/cust/HwCustUtils;->getClassByName(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/String;)Lhuawei/cust/HwCustUtils$ClassInfo;

    move-result-object v0

    .line 82
    .local v0, "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    if-nez v0, :cond_0

    move-object v3, v5

    .line 111
    :goto_0
    return-object v3

    .line 86
    :cond_0
    invoke-static {v0, p2}, Lhuawei/cust/HwCustUtils;->findConstructor(Lhuawei/cust/HwCustUtils$ClassInfo;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    .line 87
    .local v4, "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-nez v4, :cond_1

    .line 88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "constructor not found for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lhuawei/cust/HwCustUtils$ClassInfo;->mCls:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v6, v7}, Lhuawei/cust/HwCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v5

    .line 90
    goto :goto_0

    .line 95
    :cond_1
    :try_start_0
    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 96
    .local v3, "obj":Ljava/lang/Object;
    const-string v6, "HwCust"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Create obj success use "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lhuawei/cust/HwCustUtils$ClassInfo;->mCls:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 98
    .end local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/InstantiationException;
    move-object v2, v1

    .line 109
    .end local v1    # "e":Ljava/lang/InstantiationException;
    .local v2, "ex":Ljava/lang/Throwable;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "create cust obj fail. Class = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lhuawei/cust/HwCustUtils$ClassInfo;->mCls:Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", constructor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Lhuawei/cust/HwCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v3, v5

    .line 111
    goto :goto_0

    .line 100
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v2, v1

    .line 108
    .restart local v2    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 102
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v2, v1

    .line 108
    .restart local v2    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 104
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    move-object v2, v1

    .line 108
    .restart local v2    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 106
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "ex":Ljava/lang/Throwable;
    :catch_4
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/ExceptionInInitializerError;
    move-object v2, v1

    .restart local v2    # "ex":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method static varargs declared-synchronized findConstructor(Lhuawei/cust/HwCustUtils$ClassInfo;[Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 14
    .param p0, "info"    # Lhuawei/cust/HwCustUtils$ClassInfo;
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhuawei/cust/HwCustUtils$ClassInfo;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 165
    const-class v12, Lhuawei/cust/HwCustUtils;

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Lhuawei/cust/HwCustUtils$ClassInfo;->mOrgClsName:Ljava/lang/String;

    invoke-static {v11, p1}, Lhuawei/cust/HwCustUtils;->getArgsType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "tag":Ljava/lang/String;
    sget-object v11, Lhuawei/cust/HwCustUtils;->mConstructorCache:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Constructor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .local v9, "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz v9, :cond_0

    move-object v10, v9

    .line 207
    .end local v9    # "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v10, "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    monitor-exit v12

    return-object v10

    .line 170
    .end local v10    # "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v9    # "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :try_start_1
    iget-object v1, p0, Lhuawei/cust/HwCustUtils$ClassInfo;->mCs:[Ljava/lang/reflect/Constructor;

    .local v1, "arr$":[Ljava/lang/reflect/Constructor;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_4

    aget-object v2, v1, v4

    .line 171
    .local v2, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 172
    .local v7, "ptcs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v11

    invoke-static {v11}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 170
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 174
    :cond_2
    array-length v11, v7

    array-length v13, p1

    if-ne v11, v13, :cond_1

    .line 176
    array-length v11, v7

    if-nez v11, :cond_5

    .line 177
    move-object v9, v2

    .line 201
    :cond_3
    :goto_2
    if-eqz v9, :cond_1

    .line 202
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Constructor found for "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, p0, Lhuawei/cust/HwCustUtils$ClassInfo;->mCls:Ljava/lang/Class;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lhuawei/cust/HwCustUtils;->log_info(Ljava/lang/String;)V

    .line 206
    .end local v2    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v7    # "ptcs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    sget-object v11, Lhuawei/cust/HwCustUtils;->mConstructorCache:Ljava/util/HashMap;

    invoke-virtual {v11, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v9

    .line 207
    .end local v9    # "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v10    # "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    goto :goto_0

    .line 179
    .end local v10    # "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v7    # "ptcs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v9    # "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v11, p1

    if-ge v3, v11, :cond_3

    .line 180
    aget-object v11, p1, v3

    if-nez v11, :cond_8

    .line 182
    aget-object v11, v7, v3

    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-nez v11, :cond_3

    .line 195
    :cond_6
    array-length v11, p1

    add-int/lit8 v11, v11, -0x1

    if-ne v3, v11, :cond_7

    .line 196
    move-object v9, v2

    .line 179
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 186
    :cond_8
    aget-object v11, p1, v3

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 187
    .local v0, "argCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v6, v7, v3

    .line 188
    .local v6, "ptcCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_9

    sget-object v11, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    move-object v0, v11

    .line 189
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v11

    if-eqz v11, :cond_a

    sget-object v11, Lhuawei/cust/HwCustUtils;->mPrimitiveMap:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Class;

    move-object v6, v11

    .line 190
    :cond_a
    invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    if-nez v11, :cond_6

    goto :goto_2

    .line 165
    .end local v0    # "argCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "arr$":[Ljava/lang/reflect/Constructor;
    .end local v2    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "i":I
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "ptcCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "ptcs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "useConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11
.end method

.method static varargs getArgsType(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "clsName"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 214
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 215
    .local v0, "arg":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 216
    const-string v5, ":null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 221
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static declared-synchronized getClassByName(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/String;)Lhuawei/cust/HwCustUtils$ClassInfo;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "allSuffix"    # [Ljava/lang/String;

    .prologue
    .line 125
    const-class v5, Lhuawei/cust/HwCustUtils;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lhuawei/cust/HwCustUtils;->mClassCache:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuawei/cust/HwCustUtils$ClassInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .local v0, "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    if-eqz v0, :cond_0

    move-object v4, v0

    .line 152
    :goto_0
    monitor-exit v5

    return-object v4

    .line 129
    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "$"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ".HwCust"

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 131
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createCustImpl obj, className invalid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v6}, Lhuawei/cust/HwCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    const/4 v4, 0x0

    goto :goto_0

    .line 135
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v1, v0

    .end local v0    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    .local v1, "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    :goto_1
    array-length v4, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v3, v4, :cond_7

    .line 137
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, p2, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    invoke-static {v4, v6, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 138
    .local v2, "dstClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lhuawei/cust/HwCustUtils$ClassInfo;

    invoke-direct {v0, p0, v2}, Lhuawei/cust/HwCustUtils$ClassInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .end local v1    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    .restart local v0    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    :try_start_3
    sget-object v4, Lhuawei/cust/HwCustUtils;->mClassCache:Ljava/util/HashMap;

    invoke-virtual {v4, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-boolean v4, Lhuawei/cust/HwCustUtils;->CUST_VERSION:Z

    if-eqz v4, :cond_3

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_4

    :cond_3
    sget-boolean v4, Lhuawei/cust/HwCustUtils;->CUST_VERSION:Z

    if-nez v4, :cond_5

    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_5

    .line 142
    :cond_4
    const-string v4, "HwCust"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CUST VERSION = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lhuawei/cust/HwCustUtils;->CUST_VERSION:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", use class = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    .end local v2    # "dstClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 149
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Class / custClass not found for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/ClassNotFoundException;

    invoke-direct {v6}, Ljava/lang/ClassNotFoundException;-><init>()V

    invoke-static {v4, v6}, Lhuawei/cust/HwCustUtils;->handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_6
    move-object v4, v0

    .line 152
    goto/16 :goto_0

    .line 145
    .end local v0    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    .restart local v1    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 135
    .end local v1    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    .restart local v0    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    :goto_3
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    .end local v0    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    .restart local v1    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    goto :goto_1

    .line 125
    .end local v1    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 145
    .restart local v0    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    .restart local v2    # "dstClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "i":I
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v0    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    .end local v2    # "dstClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v1    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    :cond_7
    move-object v0, v1

    .end local v1    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    .restart local v0    # "clsInfo":Lhuawei/cust/HwCustUtils$ClassInfo;
    goto :goto_2
.end method

.method static handle_exception(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 231
    sget-boolean v0, Lhuawei/cust/HwCustUtils;->EXCEPTION_WHEN_ERROR:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 234
    :cond_0
    const-string v0, "HwCust"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    return-void
.end method

.method static log_info(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v0, "HwCust"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method
