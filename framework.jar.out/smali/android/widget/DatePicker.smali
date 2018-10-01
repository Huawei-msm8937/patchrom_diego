.class public Landroid/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$1;,
        Landroid/widget/DatePicker$SavedState;,
        Landroid/widget/DatePicker$DatePickerSpinnerDelegate;,
        Landroid/widget/DatePicker$ValidationCallback;,
        Landroid/widget/DatePicker$AbstractDatePickerDelegate;,
        Landroid/widget/DatePicker$DatePickerDelegate;,
        Landroid/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MODE_CALENDAR:I = 0x2

.field private static final MODE_SPINNER:I = 0x1


# instance fields
.field private final mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    .line 101
    const-string v0, "Arab"

    sput-object v0, Landroid/widget/DatePicker;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 102
    const-string v0, "Hebr"

    sput-object v0, Landroid/widget/DatePicker;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 129
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 137
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 139
    sget-object v3, Lcom/android/internal/R$styleable;->DatePicker:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 141
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 142
    .local v2, "mode":I
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 143
    .local v1, "firstDayOfWeek":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 145
    packed-switch v2, :pswitch_data_0

    .line 151
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    .line 155
    :goto_0
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0, v1}, Landroid/widget/DatePicker;->setFirstDayOfWeek(I)V

    .line 158
    :cond_0
    return-void

    .line 147
    :pswitch_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/DatePicker;->createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$1400([CLjava/util/Locale;)V
    .locals 0
    .param p0, "x0"    # [C
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 95
    invoke-static {p0, p1}, Landroid/widget/DatePicker;->getDirectionFromLocale([CLjava/util/Locale;)V

    return-void
.end method

.method static synthetic access$1500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createCalendarUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 167
    new-instance v0, Landroid/widget/DatePickerCalendarDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePickerCalendarDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private createSpinnerUIDelegate(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/widget/DatePicker$DatePickerDelegate;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 162
    new-instance v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private static getDirectionFromLocale([CLjava/util/Locale;)V
    .locals 4
    .param p0, "order"    # [C
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 1266
    invoke-static {p1}, Landroid/widget/DatePicker;->isRightToLeft(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1267
    array-length v1, p0

    .line 1268
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    div-int/lit8 v3, v1, 0x2

    if-ge v0, v3, :cond_0

    .line 1269
    aget-char v2, p0, v0

    .line 1270
    .local v2, "temp":C
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v0

    aget-char v3, p0, v3

    aput-char v3, p0, v0

    .line 1271
    add-int/lit8 v3, v1, -0x1

    sub-int/2addr v3, v0

    aput-char v2, p0, v3

    .line 1268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1274
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v2    # "temp":C
    :cond_0
    return-void
.end method

.method private static isRightToLeft(Ljava/util/Locale;)Z
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1277
    if-eqz p0, :cond_2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1278
    invoke-static {p0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1279
    .local v0, "scriptSubtag":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1280
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 1296
    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 1291
    .restart local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/widget/DatePicker;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/widget/DatePicker;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_2
    move v1, v2

    .line 1296
    goto :goto_0

    .line 1280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 295
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 429
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 307
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarView()Landroid/widget/CalendarView;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getCalendarViewShown()Z

    move-result v0

    return v0
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method protected getDaySpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    instance-of v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    check-cast v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$300(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    .line 1242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMaxDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMinDate()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getMonth()I

    move-result v0

    return v0
.end method

.method protected getMonthSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    instance-of v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    check-cast v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$400(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    .line 1248
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSpinners()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    instance-of v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    check-cast v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mSpinners:Landroid/widget/LinearLayout;
    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$1700(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1236
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getSpinnersShown()Z

    move-result v0

    return v0
.end method

.method protected getTempDate()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    instance-of v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 1259
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    check-cast v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v0

    .line 1260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->getYear()I

    move-result v0

    return v0
.end method

.method protected getYearSpinner()Landroid/widget/NumberPicker;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    instance-of v0, v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    if-eqz v0, :cond_0

    .line 1253
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    check-cast v0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->access$500(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v0

    .line 1254
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hwValueChange(Landroid/widget/NumberPicker;II)Z
    .locals 1
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 1230
    const/4 v0, 0x0

    return v0
.end method

.method public init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DatePicker$OnDateChangedListener;

    .prologue
    .line 183
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/DatePicker$DatePickerDelegate;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 184
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 313
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 314
    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 301
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 302
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 303
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 439
    move-object v0, p1

    check-cast v0, Landroid/view/View$BaseSavedState;

    .line 440
    .local v0, "ss":Landroid/view/View$BaseSavedState;
    invoke-virtual {v0}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 441
    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 442
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 433
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 434
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v1, v0}, Landroid/widget/DatePicker$DatePickerDelegate;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    return-object v1
.end method

.method public setCalendarViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 396
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setCalendarViewShown(Z)V

    .line 397
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0}, Landroid/widget/DatePicker$DatePickerDelegate;->isEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 284
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 332
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x7

    if-le p1, v0, :cond_1

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "firstDayOfWeek must be between 1 and 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_1
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setFirstDayOfWeek(I)V

    .line 336
    return-void
.end method

.method public setMaxDate(J)V
    .locals 1
    .param p1, "maxDate"    # J

    .prologue
    .line 265
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMaxDate(J)V

    .line 266
    return-void
.end method

.method public setMinDate(J)V
    .locals 1
    .param p1, "minDate"    # J

    .prologue
    .line 240
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2}, Landroid/widget/DatePicker$DatePickerDelegate;->setMinDate(J)V

    .line 241
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 423
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setSpinnersShown(Z)V

    .line 424
    return-void
.end method

.method public setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/widget/DatePicker$ValidationCallback;

    .prologue
    .line 275
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$DatePickerDelegate;->setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V

    .line 276
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 194
    iget-object v0, p0, Landroid/widget/DatePicker;->mDelegate:Landroid/widget/DatePicker$DatePickerDelegate;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/DatePicker$DatePickerDelegate;->updateDate(III)V

    .line 195
    return-void
.end method
