.class public Landroid/hsm/HwSystemManager;
.super Ljava/lang/Object;
.source "HwSystemManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hsm/HwSystemManager$HsmDefImpl;,
        Landroid/hsm/HwSystemManager$HsmInterface;
    }
.end annotation


# static fields
.field public static final ACTION_PTIVATE_DELETE:I = 0x3

.field public static final ACTION_PTIVATE_NONE:I = 0x0

.field public static final ACTION_PTIVATE_READ:I = 0x1

.field public static final ACTION_PTIVATE_WRITE:I = 0x2

.field public static final CMD_ADD:I = 0x0

.field public static final CMD_CHECK:I = 0x2

.field public static final CMD_REMOVE:I = 0x1

.field public static final PERMISSION_BLUETOOTH:I = 0x800000

.field public static final PERMISSION_CAMERA:I = 0x400

.field public static final PERMISSION_GET_APP_LIST:I = 0x2000000

.field public static final PERMISSION_LOCATION:I = 0x8

.field public static final PERMISSION_MOBILEDATE:I = 0x400000

.field public static final PERMISSION_RECORD:I = 0x80

.field public static final PERMISSION_WIFI:I = 0x200000

.field public static final PRIVATE_FLAG_COMMON_SHOW_DIALOG:I = 0x400

.field public static final RHD_PERMISSION_CODE:I = 0x8000000

.field public static final RMD_PERMISSION_CODE:I = 0x4000000

.field private static final TAG:Ljava/lang/String;

.field public static final mPermissionEnabled:I

.field private static sInstance:Landroid/hsm/HwSystemManager$HsmInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-class v0, Landroid/hsm/HwSystemManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hsm/HwSystemManager;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Landroid/hsm/HwSystemManager;->sInstance:Landroid/hsm/HwSystemManager$HsmInterface;

    .line 82
    const-string/jumbo v0, "ro.config.hw_rightsmgr"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/hsm/HwSystemManager;->mPermissionEnabled:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    return-void
.end method

.method public static allowOp(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 136
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hsm/HwSystemManager$HsmInterface;->allowOp(I)Z

    move-result v0

    return v0
.end method

.method public static allowOp(Landroid/content/Context;I)Z
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 143
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hsm/HwSystemManager$HsmInterface;->allowOp(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static allowOp(Landroid/content/Context;IZ)Z
    .locals 1
    .param p0, "cxt"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 150
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hsm/HwSystemManager$HsmInterface;->allowOp(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public static allowOp(Landroid/net/Uri;I)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "action"    # I

    .prologue
    .line 129
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hsm/HwSystemManager$HsmInterface;->allowOp(Landroid/net/Uri;I)Z

    move-result v0

    return v0
.end method

.method public static allowOp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "smsBody"    # Ljava/lang/String;
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 164
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/hsm/HwSystemManager$HsmInterface;->allowOp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method public static allowOp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "smsBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 157
    .local p2, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/hsm/HwSystemManager$HsmInterface;->allowOp(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static allowOp(Ljava/lang/String;[BLandroid/app/PendingIntent;)Z
    .locals 3
    .param p0, "destAddr"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "sentIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 172
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {p0, v1, p2}, Landroid/hsm/HwSystemManager;->allowOp(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 174
    :goto_0
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static canSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hsm/HwSystemManager$HsmInterface;->canSendBroadcast(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 113
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hsm/HwSystemManager$HsmInterface;->canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static checkWindowType(I)Z
    .locals 1
    .param p0, "flag"    # I

    .prologue
    .line 249
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAllowedApplyBatchOp(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, "allowedOperations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v4, "authmap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    const/4 v3, 0x0

    .line 187
    .local v3, "authStr":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentProviderOperation;

    .line 188
    .local v6, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    .line 189
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->getType()I

    move-result v7

    .line 190
    .local v7, "type":I
    const/4 v0, 0x0

    .line 191
    .local v0, "action":I
    packed-switch v7, :pswitch_data_0

    .line 204
    :goto_1
    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 205
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 206
    .local v1, "actionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 208
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 193
    .end local v1    # "actionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :pswitch_0
    const/4 v0, 0x1

    .line 194
    goto :goto_1

    .line 197
    :pswitch_1
    const/4 v0, 0x2

    .line 198
    goto :goto_1

    .line 200
    :pswitch_2
    const/4 v0, 0x3

    .line 201
    goto :goto_1

    .line 211
    .restart local v1    # "actionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_1
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/hsm/HwSystemManager;->allowOp(Landroid/net/Uri;I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 215
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 219
    .end local v1    # "actionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 220
    .restart local v1    # "actionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8, v0}, Landroid/hsm/HwSystemManager;->allowOp(Landroid/net/Uri;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 221
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_2
    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 224
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 229
    .end local v0    # "action":I
    .end local v1    # "actionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v6    # "operation":Landroid/content/ContentProviderOperation;
    .end local v7    # "type":I
    :cond_5
    return-object v2

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static getDummyCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 238
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/hsm/HwSystemManager$HsmInterface;->getDummyCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getFakeApplications(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hsm/HwSystemManager$HsmInterface;->getFakeApplications(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFakeLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hsm/HwSystemManager$HsmInterface;->getFakeLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public static getFakePackages(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hsm/HwSystemManager$HsmInterface;->getFakePackages(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getFakeResolveInfoList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "originalList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hsm/HwSystemManager$HsmInterface;->getFakeResolveInfoList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;
    .locals 4

    .prologue
    .line 88
    sget-object v2, Landroid/hsm/HwSystemManager;->sInstance:Landroid/hsm/HwSystemManager$HsmInterface;

    if-eqz v2, :cond_0

    .line 89
    sget-object v2, Landroid/hsm/HwSystemManager;->sInstance:Landroid/hsm/HwSystemManager$HsmInterface;

    .line 104
    .local v0, "instance":Landroid/hsm/HwSystemManager$HsmInterface;
    .local v1, "obj":Landroid/common/HwFrameworkFactory$IHwSystemManager;
    :goto_0
    return-object v2

    .line 92
    .end local v0    # "instance":Landroid/hsm/HwSystemManager$HsmInterface;
    .end local v1    # "obj":Landroid/common/HwFrameworkFactory$IHwSystemManager;
    :cond_0
    const/4 v0, 0x0

    .line 93
    .restart local v0    # "instance":Landroid/hsm/HwSystemManager$HsmInterface;
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwSystemManager()Landroid/common/HwFrameworkFactory$IHwSystemManager;

    move-result-object v1

    .line 94
    .restart local v1    # "obj":Landroid/common/HwFrameworkFactory$IHwSystemManager;
    if-eqz v1, :cond_1

    .line 95
    invoke-interface {v1}, Landroid/common/HwFrameworkFactory$IHwSystemManager;->getHsmInstance()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    .line 97
    :cond_1
    if-eqz v0, :cond_2

    .line 99
    sput-object v0, Landroid/hsm/HwSystemManager;->sInstance:Landroid/hsm/HwSystemManager$HsmInterface;

    .line 104
    :goto_1
    sget-object v2, Landroid/hsm/HwSystemManager;->sInstance:Landroid/hsm/HwSystemManager$HsmInterface;

    goto :goto_0

    .line 101
    :cond_2
    sget-object v2, Landroid/hsm/HwSystemManager;->TAG:Ljava/lang/String;

    const-string v3, "can\'t get impl object from vendor, use default implemention"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v2, Landroid/hsm/HwSystemManager$HsmDefImpl;

    invoke-direct {v2}, Landroid/hsm/HwSystemManager$HsmDefImpl;-><init>()V

    sput-object v2, Landroid/hsm/HwSystemManager;->sInstance:Landroid/hsm/HwSystemManager$HsmInterface;

    goto :goto_1
.end method

.method public static setOutputFile(Landroid/media/MediaRecorder;JJ)V
    .locals 7
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "offset"    # J
    .param p3, "len"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/hsm/HwSystemManager$HsmInterface;->setOutputFile(Landroid/media/MediaRecorder;JJ)V

    .line 259
    return-void
.end method

.method public static shouldInterceptAudience([Ljava/lang/String;)Z
    .locals 2
    .param p0, "people"    # [Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/hsm/HwSystemManager$HsmInterface;->shouldInterceptAudience([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static shouldInterceptAudience([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "people"    # [Ljava/lang/String;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 272
    invoke-static {}, Landroid/hsm/HwSystemManager;->getImplObject()Landroid/hsm/HwSystemManager$HsmInterface;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/hsm/HwSystemManager$HsmInterface;->shouldInterceptAudience([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
