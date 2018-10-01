.class public Landroid/telecom/VideoProfile$VideoState;
.super Ljava/lang/Object;
.source "VideoProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/VideoProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoState"
.end annotation


# static fields
.field public static final AUDIO_ONLY:I = 0x0

.field public static final BIDIRECTIONAL:I = 0x3

.field public static final PAUSED:I = 0x4

.field public static final RX_ENABLED:I = 0x2

.field public static final TX_ENABLED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
