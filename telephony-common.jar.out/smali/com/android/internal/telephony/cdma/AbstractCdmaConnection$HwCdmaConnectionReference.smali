.class public interface abstract Lcom/android/internal/telephony/cdma/AbstractCdmaConnection$HwCdmaConnectionReference;
.super Ljava/lang/Object;
.source "AbstractCdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/AbstractCdmaConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HwCdmaConnectionReference"
.end annotation


# virtual methods
.method public abstract compareToNumber(Ljava/lang/String;)Z
.end method

.method public abstract hasRevFWIM()Z
.end method

.method public abstract isEncryptCall()Z
.end method

.method public abstract onLineControlInfo()V
.end method

.method public abstract setEncryptCall(Z)V
.end method
