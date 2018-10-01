.class public Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;
.super Ljava/lang/Object;
.source "ImsPhoneFactory.java"


# static fields
.field private static final IMS_SERVICE_CLASS_NAME:Ljava/lang/String;

.field private static final IMS_SERVICE_PKG_NAME:Ljava/lang/String;

.field private static final isImsAsNormal:Z

.field private static final volte:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    const-string v0, "ro.config.hw_ims_as_normal"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->isImsAsNormal:Z

    .line 34
    const-string v0, "ro.config.hw_volte_on"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->volte:Z

    .line 36
    const-string v0, "ro.config.hw_ims_pkg"

    const-string v1, "com.huawei.ims"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->IMS_SERVICE_PKG_NAME:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->IMS_SERVICE_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ImsService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->IMS_SERVICE_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isimsAsNormalCon()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->isImsAsNormal:Z

    return v0
.end method

.method public static makePhone(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/imsphone/ImsPhone;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNotifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p2, "defaultPhone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/Phone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VoltePhoneFactory"

    const-string v2, "makePhone"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startImsService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-boolean v2, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->volte:Z

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "ImsPhoneFactory"

    const-string v3, "startImsService"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->IMS_SERVICE_PKG_NAME:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneFactory;->IMS_SERVICE_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/lang/SecurityException;
    const-string v2, "ImsPhoneFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startImsService: exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
