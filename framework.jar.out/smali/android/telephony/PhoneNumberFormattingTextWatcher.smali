.class public Landroid/telephony/PhoneNumberFormattingTextWatcher;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

.field private mSelfChange:Z

.field private mStopFormatting:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 73
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 74
    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    .line 75
    return-void
.end method

.method private getFormattedNumber(CZ)Ljava/lang/String;
    .locals 1
    .param p1, "lastNonSeparator"    # C
    .param p2, "hasCursor"    # Z

    .prologue
    .line 183
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigitAndRememberPosition(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->inputDigit(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private hasSeparator(Ljava/lang/CharSequence;II)Z
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 193
    move v2, p2

    .local v2, "i":I
    :goto_0
    add-int v4, p2, p3

    if-ge v2, v4, :cond_1

    .line 196
    :try_start_0
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 197
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    .line 205
    .end local v0    # "c":C
    :goto_1
    return v3

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_1

    .line 193
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "c":C
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .prologue
    .line 157
    add-int/lit8 v1, p2, -0x1

    .line 158
    .local v1, "curIndex":I
    const/4 v2, 0x0

    .line 159
    .local v2, "formatted":Ljava/lang/String;
    iget-object v7, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 160
    const/4 v5, 0x0

    .line 161
    .local v5, "lastNonSeparator":C
    const/4 v3, 0x0

    .line 162
    .local v3, "hasCursor":Z
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 163
    .local v6, "len":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v6, :cond_3

    .line 164
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 165
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 166
    if-eqz v5, :cond_0

    .line 167
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 168
    const/4 v3, 0x0

    .line 170
    :cond_0
    move v5, v0

    .line 172
    :cond_1
    if-ne v4, v1, :cond_2

    .line 173
    const/4 v3, 0x1

    .line 163
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "c":C
    :cond_3
    if-eqz v5, :cond_4

    .line 177
    invoke-direct {p0, v5, v3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->getFormattedNumber(CZ)Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_4
    return-object v2
.end method

.method private stopFormatting()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    .line 189
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->clear()V

    .line 190
    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v2, :cond_2

    .line 104
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    move v0, v1

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    .line 111
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->reformat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "formatted":Ljava/lang/String;
    if-eqz v3, :cond_a

    .line 113
    iget-object v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mFormatter:Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;->getRememberedPosition()I

    move-result v8

    .line 115
    .local v8, "rememberedPos":I
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->isCustomProcess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, "numBrackts":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v8, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 118
    const/16 v0, 0x28

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_3

    const/16 v0, 0x29

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v0, v1, :cond_4

    .line 119
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 117
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 123
    :cond_5
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/telephony/HwInnerTelephonyManager;->stripBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    sub-int/2addr v8, v7

    .line 130
    .end local v6    # "i":I
    .end local v7    # "numBrackts":I
    :cond_6
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->isCustRemoveSep()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/telephony/HwInnerTelephonyManager;->isRemoveSeparateOnSK()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    :cond_7
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0, v8, v3}, Landroid/telephony/HwInnerTelephonyManager;->getNewRememberedPos(ILjava/lang/String;)I

    move-result v8

    .line 133
    invoke-static {}, Landroid/common/HwFrameworkFactory;->getHwInnerTelephonyManager()Landroid/telephony/HwInnerTelephonyManager;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/telephony/HwInnerTelephonyManager;->removeAllSeparate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 139
    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 143
    invoke-static {p1, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 145
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    .line 147
    .end local v8    # "rememberedPos":I
    :cond_a
    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/telephony/PhoneNumberUtils;->ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 102
    .end local v3    # "formatted":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 80
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-lez p3, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 91
    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mSelfChange:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;->mStopFormatting:Z

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    if-lez p4, :cond_0

    invoke-direct {p0, p1, p2, p4}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->hasSeparator(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->stopFormatting()V

    goto :goto_0
.end method
