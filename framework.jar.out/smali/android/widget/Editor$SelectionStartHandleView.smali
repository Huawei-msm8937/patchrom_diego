.class public Landroid/widget/Editor$SelectionStartHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 4191
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    .line 4192
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4177
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    .line 4183
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    .line 4188
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    .line 4193
    iget-object v1, p1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4195
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    .line 4196
    iget-object v1, p1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextViewOrientation()I

    move-result v1

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mOri:I

    .line 4197
    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    const/4 v2, 0x0

    .line 4380
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 4381
    .local v0, "selectionEnd":I
    if-lt p1, v0, :cond_0

    .line 4383
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getNextCursorOffset(IZ)I
    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 4384
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4386
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/widget/Editor$SelectionStartHandleView;->positionAtCursorOffset(IZ)V

    .line 4387
    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4415
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4417
    if-eqz p2, :cond_1

    .line 4418
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v4, v4, v3

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 4420
    .local v2, "rightEdge":I
    int-to-float v4, v2

    iget v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v4, v5

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    .line 4425
    .end local v2    # "rightEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .end local v1    # "nearEdge":Z
    .restart local v2    # "rightEdge":I
    :cond_0
    move v1, v3

    .line 4420
    goto :goto_0

    .line 4422
    .end local v2    # "rightEdge":I
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewLocation:[I

    aget v4, v4, v3

    iget-object v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v0, v4, v5

    .line 4423
    .local v0, "leftEdge":I
    int-to-float v4, v0

    iget v5, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    .restart local v1    # "nearEdge":Z
    :goto_1
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4220
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4215
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4206
    if-eqz p2, :cond_0

    .line 4207
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 4209
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4404
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4405
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 4408
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4409
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    .line 4411
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 4396
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->resetOffsetForImageSpan(IZ)I
    invoke-static {v1, p1, v0}, Landroid/widget/Editor;->access$4200(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 4398
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4399
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;
    invoke-static {v1}, Landroid/widget/Editor;->access$4300(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    .line 4400
    return-void

    .line 4399
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setHanldeReadyFlag()V
    .locals 2

    .prologue
    .line 4200
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x1

    # setter for: Landroid/widget/Editor;->mLeftHandleReady:Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3302(Landroid/widget/Editor;Z)Z

    .line 4201
    return-void
.end method

.method public updatePosition(FF)V
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4235
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 4236
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_0

    .line 4239
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4377
    :goto_0
    return-void

    .line 4243
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 4244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    .line 4247
    :cond_1
    const/4 v15, 0x0

    .line 4248
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 4249
    .local v16, "selectionEnd":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v0, v11, v1, v2}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v6

    .line 4250
    .local v6, "currLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4252
    .local v8, "initialOffset":I
    move/from16 v0, v16

    if-lt v8, v0, :cond_2

    .line 4255
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4256
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4259
    :cond_2
    move v13, v8

    .line 4260
    .local v13, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordEnd(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;I)I

    move-result v7

    .line 4261
    .local v7, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordStart(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;I)I

    move-result v19

    .line 4263
    .local v19, "start":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    move/from16 v22, v0

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v22, v22, v23

    if-nez v22, :cond_3

    .line 4264
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    .line 4267
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v17

    .line 4268
    .local v17, "selectionStart":I
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v18

    .line 4269
    .local v18, "selectionStartRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 4270
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    .line 4276
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_5

    if-eqz v18, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    if-nez v18, :cond_6

    if-eqz v5, :cond_6

    .line 4279
    :cond_5
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    .line 4280
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4281
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 4283
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    if-nez v10, :cond_7

    .line 4286
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4287
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4288
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mLanguageDirectionChanged:Z

    goto/16 :goto_0

    .line 4291
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    move/from16 v22, v0

    sub-float v21, p1, v22

    .line 4292
    .local v21, "xDiff":F
    if-eqz v5, :cond_c

    .line 4293
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-gtz v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_b

    :cond_8
    const/4 v9, 0x1

    .line 4299
    .local v9, "isExpanding":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 4300
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/widget/Editor$SelectionStartHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v22

    if-eqz v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getScrollX()I

    move-result v22

    if-eqz v22, :cond_10

    if-eqz v9, :cond_9

    move/from16 v0, v17

    if-lt v13, v0, :cond_a

    :cond_9
    if-nez v9, :cond_10

    .line 4306
    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4307
    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v12

    .line 4309
    .local v12, "nextOffset":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 4293
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    .line 4295
    :cond_c
    const/16 v22, 0x0

    cmpg-float v22, v21, v22

    if-ltz v22, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_e

    :cond_d
    const/4 v9, 0x1

    .restart local v9    # "isExpanding":Z
    :goto_3
    goto :goto_1

    .end local v9    # "isExpanding":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_3

    .line 4307
    .restart local v9    # "isExpanding":Z
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v12

    goto :goto_2

    .line 4314
    :cond_10
    if-eqz v9, :cond_19

    .line 4316
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mInWord:Z

    move/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_14

    .line 4320
    :cond_11
    move/from16 v20, v19

    .line 4321
    .local v20, "wordStartOnCurrLine":I
    if-eqz v11, :cond_12

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v6, :cond_12

    .line 4322
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineStart(I)I

    move-result v20

    .line 4324
    :cond_12
    sub-int v22, v7, v20

    div-int/lit8 v22, v22, 0x2

    sub-int v14, v7, v22

    .line 4325
    .local v14, "offsetThresholdToSnap":I
    if-le v13, v14, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_17

    .line 4328
    :cond_13
    move/from16 v13, v19

    .line 4333
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordStartOnCurrLine":I
    :cond_14
    :goto_4
    if-eqz v11, :cond_18

    if-ge v13, v8, :cond_18

    .line 4334
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4335
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v22, v4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4340
    .end local v4    # "adjustedX":F
    :goto_5
    const/4 v15, 0x1

    .line 4372
    :cond_15
    :goto_6
    if-eqz v15, :cond_16

    .line 4373
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousLineTouched:I

    .line 4374
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionStartHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4376
    :cond_16
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mPrevX:F

    goto/16 :goto_0

    .line 4330
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v20    # "wordStartOnCurrLine":I
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    goto :goto_4

    .line 4338
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordStartOnCurrLine":I
    :cond_18
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    goto :goto_5

    .line 4342
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    move/from16 v23, v0

    sub-float v23, p1, v23

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    .line 4344
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-gt v3, v0, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_1e

    .line 4346
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_1d

    .line 4349
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v22

    move/from16 v0, v22

    if-lt v0, v6, :cond_1b

    .line 4350
    move/from16 v13, v19

    .line 4353
    :cond_1b
    if-eqz v11, :cond_1c

    if-ge v13, v8, :cond_1c

    .line 4354
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4355
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v22, v4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    .line 4363
    .end local v4    # "adjustedX":F
    :goto_7
    const/4 v15, 0x1

    goto/16 :goto_6

    .line 4358
    :cond_1c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    goto :goto_7

    .line 4361
    :cond_1d
    move v13, v3

    goto :goto_7

    .line 4364
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_15

    .line 4367
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionStartHandleView;->mPreviousOffset:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionStartHandleView;->mTouchWordDelta:F

    goto/16 :goto_6
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 4225
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4227
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartHandleView;->updateDrawable()V

    .line 4228
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 4229
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4231
    :cond_0
    return-void
.end method
