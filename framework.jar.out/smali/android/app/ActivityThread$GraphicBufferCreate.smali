.class Landroid/app/ActivityThread$GraphicBufferCreate;
.super Ljava/lang/Object;
.source "ActivityThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GraphicBufferCreate"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread$1;

    .prologue
    .line 4533
    invoke-direct {p0}, Landroid/app/ActivityThread$GraphicBufferCreate;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x10

    .line 4538
    const/4 v2, 0x1

    const/16 v3, 0x100

    invoke-static {v4, v4, v2, v3}, Landroid/view/GraphicBuffer;->create(IIII)Landroid/view/GraphicBuffer;

    move-result-object v0

    .line 4540
    .local v0, "buf":Landroid/view/GraphicBuffer;
    if-eqz v0, :cond_0

    .line 4541
    invoke-virtual {v0}, Landroid/view/GraphicBuffer;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 4542
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, v1}, Landroid/view/GraphicBuffer;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 4544
    .end local v1    # "c":Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method
