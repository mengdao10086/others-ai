.class public Lmiuix/pickerwidget/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;,
        Lmiuix/pickerwidget/widget/DatePicker$SavedState;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DatePicker"

.field private static sChineseDays:[Ljava/lang/String;

.field private static sChineseLeapMonthMark:Ljava/lang/String;

.field private static sChineseLeapYearMonths:[Ljava/lang/String;

.field private static sChineseMonths:[Ljava/lang/String;


# instance fields
.field private mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private mDateFormatOrder:[C

.field private final mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mIsEnabled:Z

.field private mIsLunarMode:Z

.field private mMaxDate:Lmiuix/pickerwidget/date/Calendar;

.field private mMinDate:Lmiuix/pickerwidget/date/Calendar;

.field private final mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

.field private mNumberOfMonths:I

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Lmiuix/pickerwidget/date/Calendar;

.field private final mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 120
    sget v0, Lmiuix/pickerwidget/R$attr;->datePickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 124
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 v2, 0x1

    .line 94
    iput-boolean v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    const/4 v3, 0x0

    .line 96
    iput-boolean v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 126
    invoke-direct/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->initChineseDaysIfNeeded()V

    .line 128
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    .line 129
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    .line 130
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    .line 131
    new-instance v4, Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v4}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    .line 133
    sget-object v4, Lmiuix/pickerwidget/R$styleable;->DatePicker:[I

    sget v5, Lmiuix/pickerwidget/R$style;->Widget_DatePicker:I

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual {v1, v6, v4, v7, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 135
    sget v5, Lmiuix/pickerwidget/R$styleable;->DatePicker_spinnersShown:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 137
    sget v6, Lmiuix/pickerwidget/R$styleable;->DatePicker_startYear:I

    const/16 v7, 0x76c

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 139
    sget v6, Lmiuix/pickerwidget/R$styleable;->DatePicker_endYear:I

    const/16 v7, 0x834

    invoke-virtual {v4, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 140
    sget v7, Lmiuix/pickerwidget/R$styleable;->DatePicker_minDate:I

    invoke-virtual {v4, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 141
    sget v8, Lmiuix/pickerwidget/R$styleable;->DatePicker_maxDate:I

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 142
    sget v8, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_date_picker:I

    .line 143
    sget v10, Lmiuix/pickerwidget/R$styleable;->DatePicker_lunarCalendar:I

    invoke-virtual {v4, v10, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 144
    sget v10, Lmiuix/pickerwidget/R$styleable;->DatePicker_showYear:I

    invoke-virtual {v4, v10, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 145
    sget v11, Lmiuix/pickerwidget/R$styleable;->DatePicker_showMonth:I

    invoke-virtual {v4, v11, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 146
    sget v12, Lmiuix/pickerwidget/R$styleable;->DatePicker_showDay:I

    invoke-virtual {v4, v12, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 147
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v4}, Lmiuix/pickerwidget/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    .line 152
    const-string v4, "layout_inflater"

    .line 153
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 154
    invoke-virtual {v1, v8, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    new-instance v1, Lmiuix/pickerwidget/widget/DatePicker$1;

    invoke-direct {v1, v0}, Lmiuix/pickerwidget/widget/DatePicker$1;-><init>(Lmiuix/pickerwidget/widget/DatePicker;)V

    .line 179
    sget v4, Lmiuix/pickerwidget/R$id;->pickers:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 182
    sget v4, Lmiuix/pickerwidget/R$id;->day:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const-wide/16 v13, 0x64

    .line 183
    invoke-virtual {v4, v13, v14}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 184
    invoke-virtual {v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    const/16 v8, 0x8

    if-nez v12, :cond_bc

    .line 186
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    :cond_bc
    sget v4, Lmiuix/pickerwidget/R$id;->month:I

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v4, v0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 191
    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 192
    iget v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mNumberOfMonths:I

    sub-int/2addr v3, v2

    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 193
    iget-object v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    invoke-virtual {v4, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    .line 194
    invoke-virtual {v4, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 195
    invoke-virtual {v4, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v11, :cond_e1

    .line 197
    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    :cond_e1
    sget v2, Lmiuix/pickerwidget/R$id;->year:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiuix/pickerwidget/widget/NumberPicker;

    iput-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    .line 202
    invoke-virtual {v2, v13, v14}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 203
    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V

    if-nez v10, :cond_f6

    .line 205
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    :cond_f6
    invoke-direct/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateFormatters()V

    if-nez v5, :cond_100

    const/4 v1, 0x1

    .line 213
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/DatePicker;->setSpinnersShown(Z)V

    goto :goto_104

    :cond_100
    const/4 v1, 0x1

    .line 215
    invoke-virtual {v0, v5}, Lmiuix/pickerwidget/widget/DatePicker;->setSpinnersShown(Z)V

    .line 219
    :goto_104
    iget-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-boolean v5, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 220
    iget-object v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v2

    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    iget-object v3, v0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0x9

    .line 221
    invoke-virtual {v3, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x0

    .line 220
    invoke-virtual {v0, v2, v1, v3, v4}, Lmiuix/pickerwidget/widget/DatePicker;->init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V

    .line 224
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v2, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 225
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_150

    .line 226
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0, v7, v1}, Lmiuix/pickerwidget/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_14e

    .line 227
    iget-object v8, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xc

    const/4 v13, 0x0

    move-object v2, v15

    move v15, v1

    invoke-virtual/range {v8 .. v15}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_167

    :cond_14e
    move-object v2, v15

    goto :goto_167

    :cond_150
    move-object v2, v15

    .line 232
    const-string v1, "1/31/1900"

    iget-object v5, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0, v1, v5}, Lmiuix/pickerwidget/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_167

    .line 233
    iget-object v8, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0xc

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v15}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 236
    :cond_167
    :goto_167
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Lmiuix/pickerwidget/widget/DatePicker;->setMinDate(J)V

    .line 239
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v5, v0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 240
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_197

    .line 241
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {v0, v2, v1}, Lmiuix/pickerwidget/widget/DatePicker;->parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1a8

    .line 242
    iget-object v10, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v12, 0xb

    const/16 v13, 0x1f

    const/16 v14, 0xc

    const/4 v15, 0x0

    move v11, v6

    invoke-virtual/range {v10 .. v17}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_1a8

    .line 245
    :cond_197
    iget-object v10, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v12, 0xb

    const/16 v13, 0x1f

    const/16 v14, 0xc

    const/4 v15, 0x0

    move v11, v6

    invoke-virtual/range {v10 .. v17}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 247
    :cond_1a8
    :goto_1a8
    iget-object v1, v0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setMaxDate(J)V

    .line 250
    invoke-direct/range {p0 .. p0}, Lmiuix/pickerwidget/widget/DatePicker;->reorderSpinners()V

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_1be

    const/4 v1, 0x1

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_1be
    return-void
.end method

.method static synthetic access$000(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;
    .registers 1

    .line 39
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/pickerwidget/widget/DatePicker;)Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    return p0
.end method

.method static synthetic access$200(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/date/Calendar;
    .registers 1

    .line 39
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .registers 1

    .line 39
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .registers 1

    .line 39
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/pickerwidget/widget/DatePicker;)Lmiuix/pickerwidget/widget/NumberPicker;
    .registers 1

    .line 39
    iget-object p0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    return-object p0
.end method

.method static synthetic access$600(Lmiuix/pickerwidget/widget/DatePicker;III)V
    .registers 4

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Lmiuix/pickerwidget/widget/DatePicker;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    return-void
.end method

.method static synthetic access$800(Lmiuix/pickerwidget/widget/DatePicker;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method static synthetic access$900(Lmiuix/pickerwidget/widget/DatePicker;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->notifyDateChanged()V

    return-void
.end method

.method private getMonthDisplayValueIndex(Lmiuix/pickerwidget/date/Calendar;Z)I
    .registers 4

    if-eqz p2, :cond_18

    const/4 p2, 0x6

    .line 706
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p2

    .line 707
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    if-ltz v0, :cond_1d

    .line 709
    invoke-virtual {p1}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    move-result p1

    if-nez p1, :cond_15

    if-le p2, v0, :cond_1d

    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_1d

    :cond_18
    const/4 p2, 0x5

    .line 719
    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result p2

    :cond_1d
    :goto_1d
    return p2
.end method

.method private initChineseDaysIfNeeded()V
    .registers 7

    .line 259
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    if-nez v0, :cond_12

    .line 260
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseDays()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    .line 262
    :cond_12
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_57

    .line 263
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseMonths()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    .line 264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    .line 265
    :goto_2e
    sget-object v3, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_51

    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lmiuix/pickerwidget/R$string;->chinese_month:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 268
    :cond_51
    array-length v0, v3

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    .line 270
    :cond_57
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    if-nez v0, :cond_6b

    .line 271
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getChineseLeapMonths()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    sput-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    :cond_6b
    return-void
.end method

.method private notifyDateChanged()V
    .registers 2

    const/4 v0, 0x4

    .line 758
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private parseDate(Ljava/lang/String;Lmiuix/pickerwidget/date/Calendar;)Z
    .registers 6

    .line 605
    :try_start_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-boolean v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_f} :catch_11

    const/4 p1, 0x1

    return p1

    .line 608
    :catch_11
    sget-object p2, Lmiuix/pickerwidget/widget/DatePicker;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not in format: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MM/dd/yyyy"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method private reorderSpinners()V
    .registers 6

    .line 508
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 510
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormatOrder:[C

    if-nez v0, :cond_11

    .line 511
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 515
    :cond_11
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_52

    .line 517
    aget-char v3, v0, v2

    const/16 v4, 0x4d

    if-eq v3, v4, :cond_43

    const/16 v4, 0x64

    if-eq v3, v4, :cond_36

    const/16 v4, 0x79

    if-ne v3, v4, :cond_30

    .line 527
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 528
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    goto :goto_4f

    .line 531
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 519
    :cond_36
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    goto :goto_4f

    .line 523
    :cond_43
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 524
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-direct {p0, v3, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_52
    return-void
.end method

.method private resetMonthsDisplayedValues()V
    .registers 6

    .line 479
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    .line 480
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getChineseLeapMonth()I

    move-result v0

    if-gez v0, :cond_12

    .line 482
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iput-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_78

    .line 484
    :cond_12
    sget-object v2, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapYearMonths:[Ljava/lang/String;

    iput-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 485
    sget-object v3, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v3, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    sget-object v1, Lmiuix/pickerwidget/widget/DatePicker;->sChineseMonths:[Ljava/lang/String;

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-static {v1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lmiuix/pickerwidget/widget/DatePicker;->sChineseLeapMonthMark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_78

    .line 491
    :cond_40
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 492
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getOrCreate(Landroid/content/Context;)Lmiuix/pickerwidget/date/CalendarFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/CalendarFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_78

    :cond_61
    const/16 v0, 0xc

    .line 494
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 495
    :goto_67
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_78

    .line 496
    sget-object v2, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_67

    :cond_78
    :goto_78
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .registers 3

    .line 467
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 471
    :cond_9
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 473
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mNumberOfMonths:I

    .line 474
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 475
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateFormatters()V

    return-void
.end method

.method private setDate(III)V
    .registers 12

    .line 620
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v4, 0xc

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lmiuix/pickerwidget/date/Calendar;->set(IIIIIII)Lmiuix/pickerwidget/date/Calendar;

    .line 621
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->before(Lmiuix/pickerwidget/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 622
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {p1, p2, p3, v0}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    goto :goto_3c

    .line 623
    :cond_25
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->after(Lmiuix/pickerwidget/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 624
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide p2

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {p1, p2, p3, v0}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    :cond_3c
    :goto_3c
    return-void
.end method

.method private setImeOptions(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 4

    add-int/lit8 p2, p2, -0x1

    if-ge p3, p2, :cond_6

    const/4 p2, 0x5

    goto :goto_7

    :cond_6
    const/4 p2, 0x6

    .line 778
    :goto_7
    sget p3, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 779
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setImeOptions(I)V

    return-void
.end method

.method private updateFormatters()V
    .registers 3

    .line 276
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    if-nez v1, :cond_9

    goto :goto_18

    .line 279
    :cond_9
    sget-object v1, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    .line 280
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    invoke-direct {v1}, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;-><init>()V

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private updateSpinners()V
    .registers 13

    .line 629
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 630
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    goto :goto_42

    .line 634
    :cond_15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/pickerwidget/R$string;->date_picker_label_day:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/pickerwidget/R$string;->date_picker_label_month:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/pickerwidget/R$string;->date_picker_label_year:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setLabel(Ljava/lang/String;)V

    .line 638
    :goto_42
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 640
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/16 v4, 0x9

    const/16 v5, 0xa

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v3, v5}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v3

    goto :goto_64

    .line 641
    :cond_5e
    iget-object v3, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v3, v4}, Lmiuix/pickerwidget/date/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 640
    :goto_64
    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 642
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 643
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 644
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 645
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v6, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/16 v7, 0xb

    if-eqz v6, :cond_89

    iget-object v6, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v6}, Lmiuix/pickerwidget/date/Calendar;->getChineseLeapMonth()I

    move-result v6

    if-ltz v6, :cond_89

    const/16 v7, 0xc

    :cond_89
    invoke-virtual {v0, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 646
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 649
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/4 v6, 0x2

    if-eqz v0, :cond_98

    move v0, v6

    goto :goto_99

    :cond_98
    move v0, v2

    .line 650
    :goto_99
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    const/4 v9, 0x6

    const/4 v10, 0x5

    if-ne v7, v8, :cond_eb

    .line 651
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v11, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-direct {p0, v8, v11}, Lmiuix/pickerwidget/widget/DatePicker;->getMonthDisplayValueIndex(Lmiuix/pickerwidget/date/Calendar;Z)I

    move-result v8

    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 652
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 654
    iget-boolean v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v7, :cond_c1

    move v7, v9

    goto :goto_c2

    :cond_c1
    move v7, v10

    .line 655
    :goto_c2
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    iget-object v11, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v11, v7}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    if-ne v8, v7, :cond_eb

    .line 656
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v8, :cond_dd

    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    goto :goto_e3

    .line 657
    :cond_dd
    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v8

    .line 656
    :goto_e3
    invoke-virtual {v7, v8}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 658
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v7, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 662
    :cond_eb
    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    iget-object v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v8, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    if-ne v7, v0, :cond_13f

    .line 663
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v8, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-direct {p0, v7, v8}, Lmiuix/pickerwidget/widget/DatePicker;->getMonthDisplayValueIndex(Lmiuix/pickerwidget/date/Calendar;Z)I

    move-result v7

    invoke-virtual {v0, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 664
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 665
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 667
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_115

    goto :goto_116

    :cond_115
    move v9, v10

    .line 668
    :goto_116
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v9}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v9}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_13f

    .line 669
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_131

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    goto :goto_137

    .line 670
    :cond_131
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    .line 669
    :goto_137
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 671
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 677
    :cond_13f
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v1

    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 679
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 680
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_170

    .line 681
    sget-object v0, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v1

    sub-int/2addr v1, v2

    sget-object v7, Lmiuix/pickerwidget/widget/DatePicker;->sChineseDays:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v0, v1, v7}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 682
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 686
    :cond_170
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/DatePicker;->isLunarMode()Z

    move-result v0

    if-eqz v0, :cond_178

    move v0, v6

    goto :goto_179

    :cond_178
    move v0, v2

    .line 687
    :goto_179
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v1, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->setMinValue(I)V

    .line 688
    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v7, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v7, v0}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setMaxValue(I)V

    .line 689
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 692
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_1ba

    .line 693
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v6}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 694
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-direct {p0, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->getMonthDisplayValueIndex(Lmiuix/pickerwidget/date/Calendar;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 695
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v5}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    goto :goto_1db

    .line 697
    :cond_1ba
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 698
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v10}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    .line 699
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValue(I)V

    :goto_1db
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 2

    .line 372
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 555
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getDayOfMonth()I
    .registers 3

    .line 744
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    goto :goto_b

    :cond_9
    const/16 v1, 0x9

    :goto_b
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    .line 329
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    .line 294
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .registers 3

    .line 735
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0}, Lmiuix/pickerwidget/date/Calendar;->isChineseLeapMonth()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_16

    .line 736
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    goto :goto_24

    :cond_16
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    goto :goto_24

    .line 737
    :cond_1d
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    :goto_24
    return v0
.end method

.method public getSpinnersShown()Z
    .registers 2

    .line 409
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .registers 3

    .line 728
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILmiuix/pickerwidget/widget/DatePicker$OnDateChangedListener;)V
    .registers 5

    .line 592
    invoke-direct {p0, p1, p2, p3}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 593
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public isEnabled()Z
    .registers 2

    .line 367
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    return v0
.end method

.method public isLunarMode()Z
    .registers 2

    .line 751
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 399
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 400
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/DatePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 387
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 388
    const-class v0, Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 3

    .line 393
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 394
    const-class v0, Lmiuix/pickerwidget/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6

    .line 378
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 381
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v1}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x380

    invoke-static {v0, v1, v2, v3}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 382
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    .line 569
    check-cast p1, Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    .line 570
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 571
    # getter for: Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mYear:I
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1100(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I

    move-result v0

    # getter for: Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mMonth:I
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1200(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I

    move-result v1

    # getter for: Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mDay:I
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1300(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lmiuix/pickerwidget/widget/DatePicker;->setDate(III)V

    .line 573
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    # getter for: Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1400(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)Z

    move-result v1

    if-eq v0, v1, :cond_29

    .line 574
    # getter for: Lmiuix/pickerwidget/widget/DatePicker$SavedState;->mIsLunar:Z
    invoke-static {p1}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;->access$1400(Lmiuix/pickerwidget/widget/DatePicker$SavedState;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 575
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 577
    :cond_29
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .line 560
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 561
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v2

    .line 562
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v3

    .line 563
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v4

    .line 564
    new-instance v7, Lmiuix/pickerwidget/widget/DatePicker$SavedState;

    iget-boolean v5, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lmiuix/pickerwidget/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZLmiuix/pickerwidget/widget/DatePicker$1;)V

    return-object v7
.end method

.method public setDateFormatOrder([C)V
    .registers 2

    .line 789
    iput-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDateFormatOrder:[C

    .line 790
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->reorderSpinners()V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 355
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 358
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 359
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mDaySpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMonthSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 361
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mYearSpinner:Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 362
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsEnabled:Z

    return-void
.end method

.method public setLunarMode(Z)V
    .registers 3

    .line 427
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    if-eq p1, v0, :cond_c

    .line 428
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    .line 429
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 430
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    :cond_c
    return-void
.end method

.method public setMaxDate(J)V
    .registers 6

    .line 340
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 341
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v1, 0xc

    .line 342
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_27

    return-void

    .line 345
    :cond_27
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 346
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->after(Lmiuix/pickerwidget/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 347
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMaxDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {p1, v0, v1, p2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 348
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 350
    :cond_48
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .registers 6

    .line 305
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 306
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mTempDate:Lmiuix/pickerwidget/date/Calendar;

    const/16 v1, 0xc

    .line 307
    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v0

    iget-object v2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {v2, v1}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_27

    return-void

    .line 310
    :cond_27
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {v0, p1, p2, v1}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 311
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p1, p2}, Lmiuix/pickerwidget/date/Calendar;->before(Lmiuix/pickerwidget/date/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 312
    iget-object p1, p0, Lmiuix/pickerwidget/widget/DatePicker;->mCurrentDate:Lmiuix/pickerwidget/date/Calendar;

    iget-object p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mMinDate:Lmiuix/pickerwidget/date/Calendar;

    invoke-virtual {p2}, Lmiuix/pickerwidget/date/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/DatePicker;->mIsLunarMode:Z

    invoke-virtual {p1, v0, v1, p2}, Lmiuix/pickerwidget/date/Calendar;->setSafeTimeInMillis(JZ)Lmiuix/pickerwidget/date/Calendar;

    .line 313
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->resetMonthsDisplayedValues()V

    .line 315
    :cond_48
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/DatePicker;->updateSpinners()V

    return-void
.end method

.method public setSpinnersShown(Z)V
    .registers 3

    .line 418
    iget-object v0, p0, Lmiuix/pickerwidget/widget/DatePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
