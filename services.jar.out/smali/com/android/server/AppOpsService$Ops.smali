.class public final Lcom/android/server/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ops"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray",
        "<",
        "Lcom/android/server/AppOpsService$Op;",
        ">;"
    }
.end annotation


# instance fields
.field public isPrivileged:Z

.field protected needSyncPriv:Z

.field public final packageName:Ljava/lang/String;

.field public final uidState:Lcom/android/server/AppOpsService$UidState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/AppOpsService$UidState;ZZ)V
    .locals 0
    .param p1, "_packageName"    # Ljava/lang/String;
    .param p2, "_uidState"    # Lcom/android/server/AppOpsService$UidState;
    .param p3, "_isPrivileged"    # Z
    .param p4, "sync"    # Z

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/android/server/AppOpsService$Ops;->packageName:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/android/server/AppOpsService$Ops;->uidState:Lcom/android/server/AppOpsService$UidState;

    .line 145
    iput-boolean p3, p0, Lcom/android/server/AppOpsService$Ops;->isPrivileged:Z

    .line 146
    iput-boolean p4, p0, Lcom/android/server/AppOpsService$Ops;->needSyncPriv:Z

    .line 147
    return-void
.end method
