.class Lcom/android/server/pm/PackageManagerService$6;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->scanDirLI(Ljava/io/File;IIJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$currentTime:J

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$hwFlags:I

.field final synthetic val$parseFlags:I

.field final synthetic val$scanFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJI)V
    .locals 1

    .prologue
    .line 5974
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$file:Ljava/io/File;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$parseFlags:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$scanFlags:I

    iput-wide p5, p0, Lcom/android/server/pm/PackageManagerService$6;->val$currentTime:J

    iput p7, p0, Lcom/android/server/pm/PackageManagerService$6;->val$hwFlags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 5977
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->val$file:Ljava/io/File;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$parseFlags:I

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$scanFlags:I

    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$currentTime:J

    iget v6, p0, Lcom/android/server/pm/PackageManagerService$6;->val$hwFlags:I

    # invokes: Lcom/android/server/pm/PackageManagerService;->scanFileLI(Ljava/io/File;IIJI)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJI)V

    .line 5978
    return-void
.end method
