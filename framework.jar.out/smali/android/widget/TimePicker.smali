.class public Landroid/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePicker$AbstractTimePickerDelegate;,
        Landroid/widget/TimePicker$ValidationCallback;,
        Landroid/widget/TimePicker$TimePickerDelegate;,
        Landroid/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# static fields
.field private static final MODE_CLOCK:I = 0x2

.field private static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    const v0, 0x101049d

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    sget-object v0, Lcom/android/internal/R$styleable;->TimePicker:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 80
    .local v6, "a":Landroid/content/res/TypedArray;
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 81
    .local v7, "mode":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    packed-switch v7, :pswitch_data_0

    .line 90
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    .line 94
    :goto_0
    return-void

    .line 85
    :pswitch_0
    new-instance v0, Landroid/widget/TimePickerClockDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/TimePickerClockDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 263
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 257
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAmPmSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    instance-of v0, v0, Landroid/widget/TimePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->getAmPmSpinner()Landroid/widget/NumberPicker;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getCurrentHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getCurrentMinute()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getHour()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getCurrentHour()I

    move-result v0

    return v0
.end method

.method protected getHourSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    instance-of v0, v0, Landroid/widget/TimePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourSpinner()Landroid/widget/NumberPicker;

    move-result-object v0

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->getCurrentMinute()I

    move-result v0

    return v0
.end method

.method protected getMinuteSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    instance-of v0, v0, Landroid/widget/TimePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->getMinuteSpinner()Landroid/widget/NumberPicker;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hwValueChange()Z
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x0

    return v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->is24HourView()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0}, Landroid/widget/TimePicker$TimePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 238
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 240
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 250
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 251
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 252
    iget-object v1, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/TimePicker$TimePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 253
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 245
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/TimePicker$TimePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method protected onTimeChangedOuter()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    instance-of v0, v0, Landroid/widget/TimePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChangedOuter()V

    .line 364
    :cond_0
    return-void
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TimePicker;->setHour(I)V

    .line 144
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/TimePicker$TimePickerDelegate;->setCurrentMinute(I)V

    .line 164
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setEnabled(Z)V

    .line 224
    return-void
.end method

.method public setHour(I)V
    .locals 1
    .param p1, "hour"    # I

    .prologue
    .line 103
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setCurrentHour(I)V

    .line 104
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/TimePicker$TimePickerDelegate;->setIs24HourView(Z)V

    goto :goto_0
.end method

.method public setMinute(I)V
    .locals 1
    .param p1, "minute"    # I

    .prologue
    .line 123
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setCurrentMinute(I)V

    .line 124
    return-void
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 1
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 207
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 208
    return-void
.end method

.method public setValidationCallback(Landroid/widget/TimePicker$ValidationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/widget/TimePicker$ValidationCallback;

    .prologue
    .line 217
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$TimePickerDelegate;->setValidationCallback(Landroid/widget/TimePicker$ValidationCallback;)V

    .line 218
    return-void
.end method

.method protected updateAmPmControl()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    instance-of v0, v0, Landroid/widget/TimePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 392
    :cond_0
    return-void
.end method

.method protected updateAmPmStart(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "amPmParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 359
    return-void
.end method

.method protected updateInputStateOuter()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    instance-of v0, v0, Landroid/widget/TimePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/widget/TimePicker;->mDelegate:Landroid/widget/TimePicker$TimePickerDelegate;

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate;->updateInputStateOuter()V

    .line 369
    :cond_0
    return-void
.end method
