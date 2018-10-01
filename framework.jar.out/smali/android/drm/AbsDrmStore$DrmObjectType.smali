.class public Landroid/drm/AbsDrmStore$DrmObjectType;
.super Ljava/lang/Object;
.source "AbsDrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/AbsDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmObjectType"
.end annotation


# static fields
.field public static final DRM_COMBINED_DELIVERY:I = 0x6

.field public static final DRM_FORWARD_LOCK:I = 0x5

.field public static final DRM_SEPARATE_DELIVERY:I = 0x7

.field public static final DRM_SEPARATE_DELIVERY_SF:I = 0x8

.field public static final DRM_UNKNOWN:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
