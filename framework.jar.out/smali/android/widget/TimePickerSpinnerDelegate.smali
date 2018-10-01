.class Landroid/widget/TimePickerSpinnerDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourFormat:C

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 71
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 81
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v12, v0, v13, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 83
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v12, 0xc

    const v13, 0x10900f1

    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 85
    .local v9, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 87
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 88
    .local v8, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v13, 0x1

    invoke-virtual {v8, v9, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 91
    const v12, 0x10203e7

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 92
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$1;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v13, 0x1020378

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 106
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 109
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v13, 0x10203ea

    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    .line 110
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v12, :cond_0

    .line 111
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setDividerText()V

    .line 115
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v13, 0x10203e8

    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v13, 0x3b

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v12, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 119
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$2;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v13, 0x1020378

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 148
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 151
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v13, 0x10203e9

    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 155
    .local v6, "amPmView":Landroid/view/View;
    instance-of v12, v6, Landroid/widget/Button;

    if-eqz v12, :cond_4

    .line 156
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 157
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v12, v6

    .line 158
    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$3;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 188
    const v12, 0x10203e6

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 189
    .local v5, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v12, v5}, Landroid/widget/TimePicker;->updateAmPmStart(Landroid/view/ViewGroup;)V

    .line 193
    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 196
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 198
    .local v10, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v11

    .line 199
    .local v11, "startMargin":I
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    .line 200
    .local v7, "endMargin":I
    if-eq v11, v7, :cond_1

    .line 201
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 202
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 206
    .end local v5    # "amPmParent":Landroid/view/ViewGroup;
    .end local v7    # "endMargin":I
    .end local v10    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "startMargin":I
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 209
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 210
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 211
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 214
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(I)V

    .line 217
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_2

    .line 218
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 222
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setContentDescriptions()V

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v12}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result v12

    if-nez v12, :cond_3

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 228
    :cond_3
    return-void

    .line 168
    :cond_4
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    move-object v12, v6

    .line 169
    check-cast v12, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$4;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v13, 0x1020378

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 46
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 46
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 613
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v1, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    return-object v1
.end method

.method private getHourFormatData()V
    .locals 7

    .prologue
    .line 231
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_2

    const-string v5, "Hm"

    :goto_0
    invoke-static {v6, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 234
    .local v4, "lengthPattern":I
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 235
    const/4 v2, 0x0

    .line 238
    .local v2, "hourFormat":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 239
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 240
    .local v1, "c":C
    const/16 v5, 0x48

    if-eq v1, v5, :cond_0

    const/16 v5, 0x68

    if-eq v1, v5, :cond_0

    const/16 v5, 0x4b

    if-eq v1, v5, :cond_0

    const/16 v5, 0x6b

    if-ne v1, v5, :cond_3

    .line 241
    :cond_0
    iput-char v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    .line 242
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v1, v5, :cond_1

    .line 243
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 248
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 231
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourFormat":C
    .end local v3    # "i":I
    .end local v4    # "lengthPattern":I
    :cond_2
    const-string v5, "hm"

    goto :goto_0

    .line 238
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v2    # "hourFormat":C
    .restart local v3    # "i":I
    .restart local v4    # "lengthPattern":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 251
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v4, "hm"

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 257
    .local v1, "defaultLocale":Ljava/util/Locale;
    const-string v3, "ur"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 261
    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "a"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    if-eq v3, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 499
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 500
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 504
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x1020379

    const v2, 0x1020377

    .line 539
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040467

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 541
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040468

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 544
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x1040469

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 546
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104046a

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 549
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104046b

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 552
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, 0x104046c

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    .line 555
    :cond_0
    return-void
.end method

.method private setCurrentHour(IZ)V
    .locals 2
    .param p1, "currentHour"    # I
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 304
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 309
    if-lt p1, v1, :cond_4

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 311
    if-le p1, v1, :cond_2

    .line 312
    add-int/lit8 p1, p1, -0xc

    .line 320
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 322
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 323
    if-eqz p2, :cond_0

    .line 324
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0

    .line 315
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 316
    if-nez p1, :cond_2

    .line 317
    const/16 p1, 0xc

    goto :goto_1
.end method

.method private setDividerText()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 275
    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_1

    const-string v4, "Hm"

    .line 276
    .local v4, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 280
    .local v1, "hourIndex":I
    if-ne v1, v7, :cond_0

    .line 281
    const/16 v5, 0x68

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 283
    :cond_0
    if-ne v1, v7, :cond_2

    .line 285
    const-string v3, ":"

    .line 294
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    return-void

    .line 275
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hourIndex":I
    .end local v3    # "separatorText":Ljava/lang/String;
    .end local v4    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v4, "hm"

    goto :goto_0

    .line 287
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hourIndex":I
    .restart local v4    # "skeleton":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x6d

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 288
    .local v2, "minuteIndex":I
    if-ne v2, v7, :cond_3

    .line 289
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 291
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 558
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 559
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 560
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 562
    :cond_0
    return-void
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 507
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 510
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 511
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 526
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 527
    return-void

    .line 513
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 514
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 518
    :cond_1
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 519
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 520
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 522
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 523
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 526
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 451
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 452
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 454
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 457
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 458
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 460
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    .prologue
    .line 530
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 535
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 426
    const/4 v0, 0x1

    return v0
.end method

.method protected getAmPmSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()I
    .locals 2

    .prologue
    .line 330
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 331
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    .end local v0    # "currentHour":I
    :goto_0
    return v0

    .line 333
    .restart local v0    # "currentHour":I
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 334
    rem-int/lit8 v0, v0, 0xc

    goto :goto_0

    .line 336
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v0, v1, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    return v0
.end method

.method protected getHourSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method protected getMinuteSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 408
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 409
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 431
    const/4 v0, 0x1

    .line 432
    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 433
    or-int/lit16 v0, v0, 0x80

    .line 437
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 438
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 439
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    return-void

    .line 435
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 418
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    .line 419
    .local v0, "ss":Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(I)V

    .line 420
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(I)V

    .line 421
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 413
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method protected onTimeChangedOuter()V
    .locals 0

    .prologue
    .line 618
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    .line 619
    return-void
.end method

.method public setCurrentHour(I)V
    .locals 1
    .param p1, "currentHour"    # I

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 300
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 494
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 495
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 496
    return-void
.end method

.method public setCurrentMinute(I)V
    .locals 1
    .param p1, "currentMinute"    # I

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 346
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 387
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 388
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 393
    :goto_0
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 394
    return-void

    .line 391
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setIs24HourView(Z)V
    .locals 2
    .param p1, "is24HourView"    # Z

    .prologue
    .line 356
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-ne v1, p1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()I

    move-result v0

    .line 362
    .local v0, "currentHour":I
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 363
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 364
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 366
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(IZ)V

    .line 367
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 368
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 378
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 379
    return-void
.end method

.method protected updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 468
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 469
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 484
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 485
    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 475
    :cond_1
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 476
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v2, :cond_3

    .line 477
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 478
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .line 475
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 480
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateInputStateOuter()V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateInputState()V

    .line 623
    return-void
.end method
