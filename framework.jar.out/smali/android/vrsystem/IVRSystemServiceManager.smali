.class public interface abstract Landroid/vrsystem/IVRSystemServiceManager;
.super Ljava/lang/Object;
.source "IVRSystemServiceManager.java"


# static fields
.field public static final VR_MANAGER:Ljava/lang/String; = "vr_system"


# virtual methods
.method public abstract acceptInCall(Landroid/content/Context;)V
.end method

.method public abstract endInCall(Landroid/content/Context;)V
.end method

.method public abstract getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract isVRApplication(Landroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract isVRMode()Z
.end method

.method public abstract registerVRListener(Landroid/content/Context;Landroid/vrsystem/IVRListener;)V
.end method

.method public abstract unregisterVRListener(Landroid/content/Context;Landroid/vrsystem/IVRListener;)V
.end method
