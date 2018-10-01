.class final Lcom/android/server/content/SyncManager$1;
.super Ljava/util/ArrayList;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    const-string v0, "com.android.email"

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$1;->add(Ljava/lang/Object;)Z

    .line 255
    const-string v0, "com.android.exchange"

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$1;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v0, "com.google.android.gm"

    invoke-virtual {p0, v0}, Lcom/android/server/content/SyncManager$1;->add(Ljava/lang/Object;)Z

    .line 257
    return-void
.end method
