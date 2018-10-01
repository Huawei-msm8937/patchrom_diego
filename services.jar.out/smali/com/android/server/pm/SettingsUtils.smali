.class public Lcom/android/server/pm/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSharedUserLPw(Ljava/lang/Object;Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .locals 1
    .param p0, "settings"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pkgFlags"    # I
    .param p4, "pkgPrivateFlags"    # I

    .prologue
    .line 7
    instance-of v0, p0, Lcom/android/server/pm/Settings;

    if-eqz v0, :cond_0

    .line 8
    check-cast p0, Lcom/android/server/pm/Settings;

    .end local p0    # "settings":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    .line 10
    :goto_0
    return-object v0

    .restart local p0    # "settings":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
