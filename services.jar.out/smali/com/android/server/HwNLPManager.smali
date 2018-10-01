.class public interface abstract Lcom/android/server/HwNLPManager;
.super Ljava/lang/Object;
.source "HwNLPManager.java"


# virtual methods
.method public abstract setHwMultiNlpPolicy(Landroid/content/Context;)V
.end method

.method public abstract setLocationManagerService(Lcom/android/server/LocationManagerService;Landroid/content/Context;)V
.end method

.method public abstract setPidGoogleLocation(ILjava/lang/String;)V
.end method

.method public abstract shouldSkipGoogleNlp(I)Z
.end method

.method public abstract shouldSkipGoogleNlp(Landroid/content/Intent;Ljava/lang/String;)Z
.end method

.method public abstract skipForeignNlpPackage(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract useCivilNlpPackage(Ljava/lang/String;Ljava/lang/String;)Z
.end method
