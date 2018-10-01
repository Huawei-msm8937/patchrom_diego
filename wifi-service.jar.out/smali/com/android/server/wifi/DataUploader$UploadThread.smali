.class Lcom/android/server/wifi/DataUploader$UploadThread;
.super Ljava/lang/Object;
.source "DataUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/DataUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/DataUploader;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/DataUploader;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/wifi/DataUploader$UploadThread;->this$0:Lcom/android/server/wifi/DataUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/DataUploader;Lcom/android/server/wifi/DataUploader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wifi/DataUploader;
    .param p2, "x1"    # Lcom/android/server/wifi/DataUploader$1;

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/wifi/DataUploader$UploadThread;-><init>(Lcom/android/server/wifi/DataUploader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/DataUploader$UploadThread;->this$0:Lcom/android/server/wifi/DataUploader;

    # invokes: Lcom/android/server/wifi/DataUploader;->uploadData()V
    invoke-static {v0}, Lcom/android/server/wifi/DataUploader;->access$100(Lcom/android/server/wifi/DataUploader;)V

    .line 136
    return-void
.end method
