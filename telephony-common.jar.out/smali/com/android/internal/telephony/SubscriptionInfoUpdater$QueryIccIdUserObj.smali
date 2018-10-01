.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
.super Ljava/lang/Object;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryIccIdUserObj"
.end annotation


# instance fields
.field public slotId:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    .line 361
    return-void
.end method
