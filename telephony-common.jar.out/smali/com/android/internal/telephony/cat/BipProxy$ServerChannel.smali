.class Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;
.super Ljava/lang/Object;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServerChannel"
.end annotation


# instance fields
.field mServerSocket:Ljava/net/ServerSocket;

.field port:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2268
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ServerChannel;->port:I

    return-void
.end method
