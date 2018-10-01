.class public Landroid/media/session/HwMediaSessionManagerDummy;
.super Ljava/lang/Object;
.source "HwMediaSessionManagerDummy.java"

# interfaces
.implements Landroid/media/session/HwMediaSessionManager;


# static fields
.field private static mInstance:Landroid/media/session/HwMediaSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Landroid/media/session/HwMediaSessionManagerDummy;

    invoke-direct {v0}, Landroid/media/session/HwMediaSessionManagerDummy;-><init>()V

    sput-object v0, Landroid/media/session/HwMediaSessionManagerDummy;->mInstance:Landroid/media/session/HwMediaSessionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefault()Landroid/media/session/HwMediaSessionManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/media/session/HwMediaSessionManagerDummy;->mInstance:Landroid/media/session/HwMediaSessionManager;

    return-object v0
.end method


# virtual methods
.method public updateTargetInService(Landroid/app/PendingIntent;Landroid/content/Context;)V
    .locals 0
    .param p1, "mbr"    # Landroid/app/PendingIntent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    return-void
.end method
