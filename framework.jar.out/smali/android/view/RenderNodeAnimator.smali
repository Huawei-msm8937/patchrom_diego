.class public Landroid/view/RenderNodeAnimator;
.super Landroid/animation/Animator;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xb

.field public static final LAST_VALUE:I = 0xb

.field public static final PAINT_ALPHA:I = 0x1

.field public static final PAINT_STROKE_WIDTH:I = 0x0

.field public static final ROTATION:I = 0x5

.field public static final ROTATION_X:I = 0x6

.field public static final ROTATION_Y:I = 0x7

.field public static final SCALE_X:I = 0x3

.field public static final SCALE_Y:I = 0x4

.field private static final STATE_DELAYED:I = 0x1

.field private static final STATE_FINISHED:I = 0x3

.field private static final STATE_PREPARE:I = 0x0

.field private static final STATE_RUNNING:I = 0x2

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1

.field public static final TRANSLATION_Z:I = 0x2

.field public static final X:I = 0x8

.field public static final Y:I = 0x9

.field public static final Z:I = 0xa

.field private static sAnimationHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;


# instance fields
.field private mFinalValue:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderProperty:I

.field private mStartDelay:J

.field private mStartTime:J

.field private mState:I

.field private mTarget:Landroid/view/RenderNode;

.field private final mUiThreadHandlesDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mViewTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/view/RenderNodeAnimator$1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/view/RenderNodeAnimator$1;-><init>(I)V

    sput-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    .line 424
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "property"    # I
    .param p2, "finalValue"    # F

    .prologue
    const-wide/16 v2, 0x0

    .line 108
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 93
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 94
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 101
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 109
    iput p1, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 110
    iput p2, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 112
    invoke-static {p1, p2}, Landroid/view/RenderNodeAnimator;->nCreateAnimator(IF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 113
    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    const-wide/16 v2, 0x0

    .line 135
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 93
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 94
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 101
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 136
    invoke-static {p1, p2, p3, p4}, Landroid/view/RenderNodeAnimator;->nCreateRevealAnimator(IIFF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;F)V
    .locals 6
    .param p2, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 91
    iput v2, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 93
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 94
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 101
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 116
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyFloatAnimator(JF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 118
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;IF)V
    .locals 6
    .param p2, "paintField"    # I
    .param p3, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 91
    iput v2, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 93
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 94
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 101
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 130
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyPaintAnimator(JIF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 132
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 133
    return-void
.end method

.method static synthetic access$000(Landroid/view/RenderNodeAnimator;J)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/RenderNodeAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->processDelayed(J)Z

    move-result v0

    return v0
.end method

.method private applyInterpolator()V
    .locals 6

    .prologue
    .line 159
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v4, :cond_0

    .line 169
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v4}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 163
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    check-cast v4, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    invoke-interface {v4}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    move-result-wide v2

    .line 168
    .local v2, "ni":J
    :goto_1
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetInterpolator(JJ)V

    goto :goto_0

    .line 165
    .end local v2    # "ni":J
    :cond_1
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/RenderNodeAnimator;->nGetDuration(J)J

    move-result-wide v0

    .line 166
    .local v0, "duration":J
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v0, v1}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v2

    .restart local v2    # "ni":J
    goto :goto_1
.end method

.method private static callOnFinished(Landroid/view/RenderNodeAnimator;)V
    .locals 0
    .param p0, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    .line 481
    return-void
.end method

.method private checkMutable()V
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator has already started, cannot change it now!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Animator\'s target has been destroyed (trying to modify an animation after activity destroy?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_1
    return-void
.end method

.method private cloneListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 392
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 395
    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-object v0
.end method

.method private doStart()V
    .locals 3

    .prologue
    .line 199
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    iput v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 205
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    .line 207
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 211
    :cond_1
    return-void
.end method

.method private static getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    .locals 2

    .prologue
    .line 416
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 417
    .local v0, "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    if-nez v0, :cond_0

    .line 418
    new-instance v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .end local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    invoke-direct {v0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;-><init>()V

    .line 419
    .restart local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 421
    :cond_0
    return-object v0
.end method

.method private init(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 141
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 142
    return-void
.end method

.method public static isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z
    .locals 2
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/view/animation/HasNativeInterpolator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static mapViewPropertyToRenderProperty(I)I
    .locals 1
    .param p0, "viewProperty"    # I

    .prologue
    .line 105
    sget-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private moveToRunningState()V
    .locals 2

    .prologue
    .line 214
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 215
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nStart(J)V

    .line 218
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 219
    return-void
.end method

.method private static native nCreateAnimator(IF)J
.end method

.method private static native nCreateCanvasPropertyFloatAnimator(JF)J
.end method

.method private static native nCreateCanvasPropertyPaintAnimator(JIF)J
.end method

.method private static native nCreateRevealAnimator(IIFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nGetDuration(J)J
.end method

.method private static native nSetAllowRunningAsync(JZ)V
.end method

.method private static native nSetDuration(JJ)V
.end method

.method private static native nSetInterpolator(JJ)V
.end method

.method private static native nSetListener(JLandroid/view/RenderNodeAnimator;)V
.end method

.method private static native nSetStartDelay(JJ)V
.end method

.method private static native nSetStartValue(JF)V
.end method

.method private static native nStart(J)V
.end method

.method private notifyStartListeners()V
    .locals 4

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 223
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 224
    .local v2, "numListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 225
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 223
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    .line 227
    .restart local v0    # "i":I
    .restart local v2    # "numListeners":I
    :cond_1
    return-void
.end method

.method private processDelayed(J)Z
    .locals 5
    .param p1, "frameTimeMs"    # J

    .prologue
    .line 406
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 407
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    .line 412
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 408
    :cond_1
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 409
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 410
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private releaseNativePtr()V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 385
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 387
    :cond_0
    return-void
.end method

.method private setTarget(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 292
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroid/view/RenderNodeAnimator;->nSetListener(JLandroid/view/RenderNodeAnimator;)V

    .line 296
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    .line 297
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->addAnimator(Landroid/view/RenderNodeAnimator;)V

    .line 298
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 231
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 232
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 233
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 234
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    .line 237
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 238
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 239
    .local v2, "numListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    .line 243
    .restart local v0    # "i":I
    .restart local v2    # "numListeners":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->end()V

    .line 245
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "numListeners":I
    :cond_3
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot clone this animator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->clone()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 3

    .prologue
    .line 249
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 250
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 251
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 252
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 254
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_2

    .line 255
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nEnd(J)V

    .line 256
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 265
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 333
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNativeAnimator()J
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 317
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 338
    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinished()V
    .locals 5

    .prologue
    .line 358
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-nez v3, :cond_0

    .line 361
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    .line 380
    :goto_0
    return-void

    .line 364
    :cond_0
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 365
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 366
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 368
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 370
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 371
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 372
    .local v2, "numListeners":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 373
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 371
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    .line 379
    .restart local v0    # "i":I
    .restart local v2    # "numListeners":I
    :cond_3
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 269
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 2
    .param p1, "mayRunAsync"    # Z

    .prologue
    .line 493
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 494
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetAllowRunningAsync(JZ)V

    .line 495
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "x0"    # J

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/view/RenderNodeAnimator;
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 322
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 323
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duration must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 327
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    long-to-float v2, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetDuration(JJ)V

    .line 328
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 348
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 349
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 350
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 307
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 308
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDelay must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 312
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 313
    return-void
.end method

.method public setStartValue(F)V
    .locals 2
    .param p1, "startValue"    # F

    .prologue
    .line 301
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 302
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetStartValue(JF)V

    .line 303
    return-void
.end method

.method public setTarget(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 283
    instance-of v1, p1, Landroid/view/DisplayListCanvas;

    if-nez v1, :cond_0

    .line 284
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not a GLES20RecordingCanvas"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 286
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 287
    .local v0, "recordingCanvas":Landroid/view/DisplayListCanvas;
    iget-object v1, v0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    invoke-direct {p0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    .line 288
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 278
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 279
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    .line 280
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 182
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->applyInterpolator()V

    .line 184
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_2

    .line 186
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->cancel()V

    .line 193
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    if-nez v0, :cond_4

    .line 188
    :cond_3
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetStartDelay(JJ)V

    .line 189
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    goto :goto_0

    .line 191
    :cond_4
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    goto :goto_0
.end method
