.class final Landroid/app/ActivityThread$AcquiringProviderRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AcquiringProviderRecord"
.end annotation


# instance fields
.field acquiring:Z

.field requests:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-boolean v0, p0, Landroid/app/ActivityThread$AcquiringProviderRecord;->acquiring:Z

    .line 283
    iput v0, p0, Landroid/app/ActivityThread$AcquiringProviderRecord;->requests:I

    return-void
.end method
