.class public interface abstract Lcom/android/server/location/IHwLocalLocationProvider;
.super Ljava/lang/Object;
.source "IHwLocalLocationProvider.java"


# static fields
.field public static final LOCAL_PROVIDER:Ljava/lang/String; = "local_database"


# virtual methods
.method public abstract enable()V
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract requestLocation()V
.end method
