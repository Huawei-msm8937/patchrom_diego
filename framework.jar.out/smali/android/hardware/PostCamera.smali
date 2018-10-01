.class public Landroid/hardware/PostCamera;
.super Ljava/lang/Object;
.source "PostCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/PostCamera$PostErrorCallback;,
        Landroid/hardware/PostCamera$PostPictureCallback;,
        Landroid/hardware/PostCamera$EventHandler;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PostCamera"


# instance fields
.field private mErrorCallback:Landroid/hardware/PostCamera$PostErrorCallback;

.field private mEventHandler:Landroid/hardware/PostCamera$EventHandler;

.field private mJpegCallback:Landroid/hardware/PostCamera$PostPictureCallback;

.field private mJpegCallbackLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOneShot:Z

.field private mWithBuffer:Z


# direct methods
.method constructor <init>(Landroid/hardware/PostCamera$PostPictureCallback;Landroid/hardware/PostCamera$PostErrorCallback;)V
    .locals 3
    .param p1, "jpeg"    # Landroid/hardware/PostCamera$PostPictureCallback;
    .param p2, "error"    # Landroid/hardware/PostCamera$PostErrorCallback;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/PostCamera;->mJpegCallbackLock:Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Landroid/hardware/PostCamera;->mJpegCallback:Landroid/hardware/PostCamera$PostPictureCallback;

    .line 39
    iput-object p2, p0, Landroid/hardware/PostCamera;->mErrorCallback:Landroid/hardware/PostCamera$PostErrorCallback;

    .line 41
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 42
    new-instance v2, Landroid/hardware/PostCamera$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/hardware/PostCamera$EventHandler;-><init>(Landroid/hardware/PostCamera;Landroid/hardware/PostCamera;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/PostCamera;->mEventHandler:Landroid/hardware/PostCamera$EventHandler;

    .line 49
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v1}, Landroid/hardware/PostCamera;->native_setup(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    return-void

    .line 43
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v2, Landroid/hardware/PostCamera$EventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/hardware/PostCamera$EventHandler;-><init>(Landroid/hardware/PostCamera;Landroid/hardware/PostCamera;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/PostCamera;->mEventHandler:Landroid/hardware/PostCamera$EventHandler;

    goto :goto_0

    .line 46
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/hardware/PostCamera;->mEventHandler:Landroid/hardware/PostCamera$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/PostCamera;)Landroid/hardware/PostCamera$PostPictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/PostCamera;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/PostCamera;->mJpegCallback:Landroid/hardware/PostCamera$PostPictureCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/PostCamera;)Landroid/hardware/PostCamera$PostErrorCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/PostCamera;

    .prologue
    .line 15
    iget-object v0, p0, Landroid/hardware/PostCamera;->mErrorCallback:Landroid/hardware/PostCamera$PostErrorCallback;

    return-object v0
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public static open(Landroid/hardware/PostCamera$PostPictureCallback;Landroid/hardware/PostCamera$PostErrorCallback;)Landroid/hardware/PostCamera;
    .locals 1
    .param p0, "jpeg"    # Landroid/hardware/PostCamera$PostPictureCallback;
    .param p1, "error"    # Landroid/hardware/PostCamera$PostErrorCallback;

    .prologue
    .line 34
    new-instance v0, Landroid/hardware/PostCamera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/PostCamera;-><init>(Landroid/hardware/PostCamera$PostPictureCallback;Landroid/hardware/PostCamera$PostErrorCallback;)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/PostCamera;

    .line 111
    .local v0, "c":Landroid/hardware/PostCamera;
    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v2, v0, Landroid/hardware/PostCamera;->mEventHandler:Landroid/hardware/PostCamera$EventHandler;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, v0, Landroid/hardware/PostCamera;->mEventHandler:Landroid/hardware/PostCamera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/PostCamera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 118
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/PostCamera;->mEventHandler:Landroid/hardware/PostCamera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/PostCamera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final native lock()V
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/hardware/PostCamera;->native_release()V

    .line 65
    return-void
.end method

.method public final native unlock()V
.end method
