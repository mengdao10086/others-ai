.class public Lmiuix/pickerwidget/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;,
        Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;,
        Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;,
        Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;,
        Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;,
        Lmiuix/pickerwidget/widget/NumberPicker$Formatter;,
        Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;,
        Lmiuix/pickerwidget/widget/NumberPicker$CustomEditText;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DIGIT_CHARACTERS:[C

.field private static final PRESSED_STATE_SET:[I

.field static final TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private MARGIN_LABEL_LEFT:I

.field private MARGIN_LABEL_TOP:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedMaxText:Ljava/lang/String;

.field private mDisplayedMaxTextWidth:F

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mId:I

.field private mIgnoreMoveEvents:Z

.field private mIncrementVirtualButtonPressed:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mLabelTextColor:I

.field private mLabelTextSize:I

.field private mLabelTextSizeThreshold:F

.field private mLabelTextSizeTrimFactor:F

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLongPressUpdateInterval:J

.field private mMaxFlingSpeedFactor:F

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMeasureBackgroundEnabled:Z

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mModDevice:Ljava/lang/String;

.field private mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

.field private mOriginLabelTextSize:I

.field private mOriginTextSizeHighlight:I

.field private mOriginTextSizeHint:I

.field private final mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

.field private mTextColorHighlight:I

.field private mTextColorHint:I

.field private mTextPadding:I

.field private final mTextSize:I

.field private mTextSizeHighlight:I

.field private mTextSizeHint:I

.field private mTextSizeThreshold:F

.field private mTextSizeTrimFactor:F

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mUpdateText:Ljava/lang/String;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 129
    sget v0, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;-><init>(I)V

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    const v0, 0x10100a7

    .line 530
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->PRESSED_STATE_SET:[I

    const/16 v0, 0xa

    .line 2205
    new-array v0, v0, [C

    fill-array-data v0, :array_28

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_28
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 634
    sget v0, Lmiuix/pickerwidget/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 645
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    const/4 v0, 0x1

    .line 143
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    const/4 v1, 0x2

    .line 144
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    const/16 v1, 0x190

    .line 291
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    const-wide/16 v1, 0x12c

    .line 346
    iput-wide v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 351
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v1, 0x3

    .line 356
    new-array v1, v1, [I

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v1, -0x80000000

    .line 371
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v1, 0x0

    .line 462
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v1, -0x1

    .line 513
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    const v2, 0x3f733333    # 0.95f

    .line 590
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeTrimFactor:F

    const v2, 0x3f4ccccd    # 0.8f

    .line 595
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 610
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 615
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    .line 646
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 648
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 649
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 651
    invoke-direct {p0, p2, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->parseStyle(Landroid/util/AttributeSet;I)V

    .line 653
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    .line 655
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 659
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    .line 657
    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 660
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    const/high16 p2, 0x42340000    # 45.0f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 662
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 664
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    const/high16 p2, 0x434a0000    # 202.0f

    mul-float/2addr v2, p2

    float-to-int p2, v2

    .line 666
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    .line 673
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 675
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 681
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 683
    new-instance p2, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    xor-int p2, v0, v0

    .line 690
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 692
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 694
    sget p3, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 697
    sget p2, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 698
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initInputText()V

    .line 699
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    .line 702
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 703
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 704
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 705
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 707
    invoke-virtual {p2}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 710
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSelectorWheelPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 711
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initLabelPaint()V

    .line 714
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 715
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 717
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 720
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_10d

    .line 721
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_10d
    return-void
.end method

.method static synthetic access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;
    .registers 1

    .line 74
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .registers 3

    .line 74
    invoke-direct {p0, p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1100(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1102(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1180(Lmiuix/pickerwidget/widget/NumberPicker;I)Z
    .registers 3

    .line 74
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .registers 1

    .line 74
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1300(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .registers 1

    .line 74
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1302(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Lmiuix/pickerwidget/widget/NumberPicker;I)Z
    .registers 3

    .line 74
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .registers 1

    .line 74
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1500(Lmiuix/pickerwidget/widget/NumberPicker;Z)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)J
    .registers 3

    .line 74
    iget-wide v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1702(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .registers 2

    .line 74
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIgnoreMoveEvents:Z

    return p1
.end method

.method static synthetic access$200(Lmiuix/pickerwidget/widget/NumberPicker;Landroid/view/View;)V
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600()[C
    .registers 1

    .line 74
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;
    .registers 1

    .line 74
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/pickerwidget/widget/NumberPicker;Ljava/lang/String;)I
    .registers 2

    .line 74
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .registers 1

    .line 74
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method private changeValueByOne(Z)V
    .registers 15

    .line 1869
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_3a

    .line 1870
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1871
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1872
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_17
    const/4 v0, 0x0

    .line 1874
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_2a

    .line 1876
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_36

    .line 1878
    :cond_2a
    iget-object v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    iget v11, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1880
    :goto_36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_4a

    :cond_3a
    const/4 v0, 0x1

    if-eqz p1, :cond_44

    .line 1883
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_4a

    .line 1885
    :cond_44
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_4a
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .registers 5

    .line 2000
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_b

    .line 2001
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2003
    :cond_b
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 2004
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_18

    .line 2005
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 2007
    :cond_18
    aput v0, p1, v2

    .line 2008
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private drawLabelText(Landroid/graphics/Canvas;FFF)V
    .registers 7

    .line 1679
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5c

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result p4

    if-nez p4, :cond_5c

    .line 1680
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    .line 1681
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_31

    .line 1682
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    sub-float/2addr p2, p4

    const/4 p4, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_43

    .line 1684
    :cond_31
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1686
    :goto_43
    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float p4, p4

    div-float/2addr p4, v1

    sub-float/2addr p3, p4

    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float p4, p4

    div-float/2addr p4, v1

    add-float/2addr p3, p4

    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    int-to-float p4, p4

    add-float/2addr p3, p4

    .line 1687
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5c
    return-void
.end method

.method private drawScrollValue(Landroid/graphics/Canvas;FF)F
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1645
    iget v3, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    .line 1646
    iget-object v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1647
    iget-object v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1648
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_10
    if-ge v8, v6, :cond_8c

    aget v9, v5, v8

    .line 1649
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sub-float v10, p3, v3

    .line 1650
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1651
    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v12, v11

    .line 1652
    iget v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    cmpl-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-lez v12, :cond_31

    float-to-int v11, v13

    goto :goto_46

    .line 1655
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    div-float/2addr v12, v13

    cmpg-float v13, v12, v14

    if-gez v13, :cond_46

    .line 1657
    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v11, v11

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1660
    :cond_46
    :goto_46
    iget v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v13, v11

    const v15, 0x3f59999a    # 0.85f

    mul-float/2addr v13, v15

    float-to-int v13, v13

    if-le v12, v13, :cond_51

    move v12, v13

    .line 1665
    :cond_51
    invoke-direct {v0, v10, v11, v12}, Lmiuix/pickerwidget/widget/NumberPicker;->getTextSize(FII)F

    move-result v11

    .line 1666
    iget-object v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1667
    iget-object v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v15, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    invoke-direct {v0, v10, v15, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v3

    .line 1668
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    cmpg-float v12, v10, v14

    if-gez v12, :cond_85

    .line 1670
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    const/4 v14, 0x1

    invoke-direct {v0, v10, v13, v14}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1671
    iget-object v10, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2, v11, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1673
    :cond_85
    iget v9, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v9, v9

    add-float/2addr v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_8c
    return v3
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .registers 5

    .line 2016
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2017
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    return-void

    .line 2021
    :cond_b
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_22

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_14

    goto :goto_22

    .line 2024
    :cond_14
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_1d

    sub-int v1, p1, v1

    .line 2026
    aget-object v1, v2, v1

    goto :goto_24

    .line 2028
    :cond_1d
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    .line 2022
    :cond_22
    :goto_22
    const-string v1, ""

    .line 2031
    :goto_24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .registers 8

    .line 2283
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 2285
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2286
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_18

    if-lez v0, :cond_17

    neg-int v2, v2

    :cond_17
    add-int/2addr v0, v2

    :cond_18
    move v5, v0

    .line 2289
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v4, 0x0

    const/16 v6, 0x320

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2290
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_28
    return v1
.end method

.method private fling(I)V
    .registers 12

    const/4 v0, 0x0

    .line 1956
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_15

    .line 1959
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_26

    .line 1961
    :cond_15
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const v9, 0x7fffffff

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1964
    :goto_26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .registers 3

    .line 2035
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :cond_9
    invoke-static {p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method private getAlphaGradient(FIZ)I
    .registers 5

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    return p2

    :cond_7
    if-eqz p3, :cond_18

    neg-float p1, p1

    .line 1713
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p1, p3

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p1, p3

    :goto_16
    float-to-int p1, p1

    goto :goto_1f

    .line 1714
    :cond_18
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p1, p3

    goto :goto_16

    :goto_1f
    const p3, 0xffffff

    and-int/2addr p2, p3

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, p2

    return p1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .registers 4

    .line 2158
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_9

    .line 2160
    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_8} :catch_2d

    return p1

    :cond_9
    const/4 v0, 0x0

    .line 2165
    :goto_a
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_28

    .line 2167
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2168
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2169
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 2178
    :cond_28
    :try_start_28
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2c} :catch_2d

    return p1

    .line 2184
    :catch_2d
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    return p1
.end method

.method private getTextSize(FII)F
    .registers 5

    .line 0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_8

    int-to-float p1, p3

    return p1

    :cond_8
    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float/2addr p1, p3

    int-to-float p2, p2

    add-float/2addr p1, p2

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .registers 4

    .line 1971
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_d

    .line 1972
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 1973
    :cond_d
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ge p1, v1, :cond_1a

    sub-int p1, v1, p1

    sub-int v1, v0, v1

    .line 1974
    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1a
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .registers 5

    .line 1984
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_b

    .line 1985
    array-length v0, p1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {p1, v1, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1987
    :cond_b
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    .line 1988
    iget-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1b

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le v0, v2, :cond_1b

    .line 1989
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 1991
    :cond_1b
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    .line 1992
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initInputText()V
    .registers 6

    .line 755
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$1;

    invoke-direct {v1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$1;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 765
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;

    invoke-direct {v1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 769
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 770
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 772
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 774
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setScaleX(F)V

    .line 775
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 776
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method

.method private initLabelPaint()V
    .registers 3

    .line 797
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 798
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 799
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 800
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 801
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private initSelectorWheelPaint()Landroid/graphics/Paint;
    .registers 5

    .line 785
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 786
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 787
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 788
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 789
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 790
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 791
    sget-object v2, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    .line 792
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private initSoundPlayer()V
    .registers 4

    .line 921
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-nez v0, :cond_1e

    .line 922
    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->acquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    .line 923
    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    invoke-direct {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 924
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    invoke-virtual {v1, v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->init(Landroid/content/Context;I)V

    :cond_1e
    return-void
.end method

.method private initThreshHolds()V
    .registers 3

    .line 780
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_label_text_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    .line 781
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_text_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    return-void
.end method

.method private initializeFadingEdges()V
    .registers 3

    const/4 v0, 0x1

    .line 1912
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 1913
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .registers 5

    .line 1891
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1892
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1893
    array-length v1, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1894
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1a

    move v1, v2

    .line 1898
    :cond_1a
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1899
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1900
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1904
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1905
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1907
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1908
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .registers 6

    .line 1821
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1822
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1823
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1824
    :goto_c
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_24

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    .line 1826
    iget-boolean v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1c

    .line 1827
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1829
    :cond_1c
    aput v3, v0, v2

    .line 1830
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_24
    return-void
.end method

.method private isInternationalBuild()Z
    .registers 6

    .line 2897
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 2898
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2899
    const-class v1, Ljava/lang/String;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ro.product.mod_device"

    const-string v4, ""

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "get"

    invoke-static {v0, v1, v4, v2, v3}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 2901
    :cond_22
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private makeMeasureSpec(II)I
    .registers 7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    return p1

    .line 1782
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1783
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_33

    if-eqz v1, :cond_2e

    if-ne v1, v3, :cond_17

    return p1

    .line 1792
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1790
    :cond_2e
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1788
    :cond_33
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .registers 8

    const/4 v0, 0x1

    .line 956
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 957
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 958
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 959
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2d

    .line 961
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_28

    if-lez v2, :cond_27

    sub-int/2addr v2, v4

    goto :goto_28

    :cond_27
    add-int/2addr v2, v4

    :cond_28
    :goto_28
    add-int/2addr v1, v2

    .line 969
    invoke-virtual {p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2d
    return p1
.end method

.method private notifyChange(I)V
    .registers 4

    const/4 v0, 0x4

    .line 2084
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 2085
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->playSound()V

    .line 2086
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 2087
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_17

    .line 2088
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    :cond_17
    return-void
.end method

.method private onScrollStateChange(I)V
    .registers 4

    .line 1936
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_28

    .line 1940
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1941
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_22
    const/4 v0, 0x0

    .line 1943
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 1944
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->stopSoundPlay()V

    .line 1946
    :cond_28
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .registers 3

    .line 1920
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_12

    .line 1921
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_d

    .line 1922
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    :cond_d
    const/4 p1, 0x0

    .line 1924
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1a

    .line 1926
    :cond_12
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    .line 1927
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method private parseStyle(Landroid/util/AttributeSet;I)V
    .registers 7

    .line 730
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 731
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/pickerwidget/R$styleable;->NumberPicker:[I

    sget v3, Lmiuix/pickerwidget/R$style;->Widget_NumberPicker_DayNight:I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 733
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 734
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHighlight:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_highlight_normal:I

    .line 735
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 734
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 736
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHint:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_hint_normal:I

    .line 737
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 736
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 738
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_labelTextSize:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_text_size:I

    .line 739
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 738
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 740
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHighlight:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_default_number_picker_highlight_color:I

    .line 741
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 740
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    .line 742
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHint:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_default_number_picker_hint_color:I

    .line 743
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 742
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    .line 744
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelTextColor:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_number_picker_label_color:I

    .line 745
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 744
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    .line 746
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelPadding:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_padding:I

    .line 747
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 746
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    .line 748
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 749
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    .line 750
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    .line 751
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    return-void
.end method

.method private playSound()V
    .registers 2

    .line 936
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_7

    .line 937
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->play()V

    :cond_7
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .registers 4

    .line 2121
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_c

    .line 2122
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_f

    .line 2124
    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2126
    :goto_f
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .registers 5

    .line 2098
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_c

    .line 2099
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_f

    .line 2101
    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2103
    :goto_f
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$300(Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2104
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .registers 4

    .line 2192
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_c

    .line 2193
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    goto :goto_f

    .line 2195
    :cond_c
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2197
    :goto_f
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$402(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2198
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    # setter for: Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$502(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2199
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshWheel()V
    .registers 1

    .line 2892
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2893
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private releaseSoundPlayer()V
    .registers 3

    .line 929
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_c

    .line 930
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->release(I)V

    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    :cond_c
    return-void
.end method

.method private removeAllCallbacks()V
    .registers 2

    .line 2142
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_7

    .line 2143
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2145
    :cond_7
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_e

    .line 2146
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2148
    :cond_e
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_15

    .line 2149
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2151
    :cond_15
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .registers 2

    .line 2133
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_7

    .line 2134
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .registers 2

    .line 2111
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_7

    .line 2112
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .registers 5

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    .line 1809
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 1810
    invoke-static {p1, p3, p2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_d
    return p2
.end method

.method private setValueInternal(IZ)V
    .registers 4

    .line 1842
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_9

    .line 1843
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_15

    .line 1845
    :cond_9
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1846
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1848
    :goto_15
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_1a

    return-void

    .line 1852
    :cond_1a
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 1853
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_24

    .line 1855
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->notifyChange(I)V

    .line 1857
    :cond_24
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1858
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private stopSoundPlay()V
    .registers 2

    .line 942
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_7

    .line 943
    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->stop()V

    :cond_7
    return-void
.end method

.method private trimLabelTextSize(F)V
    .registers 5

    .line 1692
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_42

    .line 1693
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 1694
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1695
    :goto_13
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_42

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float v1, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_42

    int-to-float v0, v0

    .line 1697
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 1698
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_13

    :cond_42
    return-void
.end method

.method private tryComputeMaxWidth()V
    .registers 8

    .line 1309
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_5

    return-void

    .line 1315
    :cond_5
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1316
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_47

    const/4 v0, 0x0

    move v2, v1

    :goto_14
    const/16 v3, 0x9

    if-ge v1, v3, :cond_2b

    .line 1319
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_28

    move v2, v1

    move v0, v3

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 1325
    :cond_2b
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-float v3, v1

    mul-float/2addr v3, v0

    float-to-int v0, v3

    int-to-float v0, v0

    .line 1327
    new-array v1, v1, [C

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    .line 1328
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1329
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_61

    .line 1331
    :cond_47
    array-length v0, v0

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    :goto_4b
    if-ge v1, v0, :cond_60

    .line 1333
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 1334
    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v6, v5, v3

    if-lez v6, :cond_5d

    move-object v2, v4

    move v3, v5

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_60
    move v0, v3

    .line 1341
    :goto_61
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 1342
    iput-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    .line 1343
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1344
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1345
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_94

    .line 1346
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_92

    float-to-int v0, v0

    .line 1347
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    goto :goto_94

    .line 1349
    :cond_92
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    :cond_94
    :goto_94
    return-void
.end method

.method private updateInputTextView()Z
    .registers 3

    .line 2066
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    move-result-object v0

    .line 2067
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 2068
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-eqz v1, :cond_11

    .line 2069
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    goto :goto_26

    .line 2070
    :cond_11
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2071
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    :goto_26
    const/4 v0, 0x1

    return v0

    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .registers 3

    .line 2039
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2040
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2042
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_20

    .line 2045
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 2046
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_20
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .registers 5

    .line 1168
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1169
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1170
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1171
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 1175
    :cond_11
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1176
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1177
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_22

    .line 1178
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1180
    :cond_22
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v2, v1, v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 1181
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1182
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1183
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_39

    .line 1185
    :cond_36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_39
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7

    .line 1119
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_19

    if-eq v0, v2, :cond_19

    const/16 v1, 0x17

    if-eq v0, v1, :cond_15

    const/16 v1, 0x42

    if-eq v0, v1, :cond_15

    goto :goto_65

    .line 1123
    :cond_15
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_65

    .line 1127
    :cond_19
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_1e

    goto :goto_65

    .line 1130
    :cond_1e
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_30

    if-eq v1, v3, :cond_28

    goto :goto_65

    .line 1144
    :cond_28
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_65

    const/4 p1, -0x1

    .line 1145
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 1132
    :cond_30
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_42

    if-ne v0, v2, :cond_37

    goto :goto_42

    .line 1133
    :cond_37
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_65

    goto :goto_4c

    :cond_42
    :goto_42
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_65

    .line 1134
    :goto_4c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 1135
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1136
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1137
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_64

    if-ne v0, v2, :cond_60

    move p1, v3

    goto :goto_61

    :cond_60
    const/4 p1, 0x0

    .line 1138
    :goto_61
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    :cond_64
    return v3

    .line 1151
    :cond_65
    :goto_65
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1106
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_12

    const/4 v1, 0x3

    if-eq v0, v1, :cond_12

    goto :goto_15

    .line 1111
    :cond_12
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1114
    :goto_15
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 1156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    goto :goto_e

    .line 1160
    :cond_b
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1163
    :goto_e
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawableStateChanged()V
    .registers 1

    .line 839
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 841
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 1727
    const-class v0, Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 2

    .line 0
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method protected getDisplayedMaxText()Ljava/lang/String;
    .registers 2

    .line 1373
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 1374
    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method protected getDisplayedMaxTextWidth()F
    .registers 4

    .line 1383
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1384
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1385
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1386
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return v1
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .registers 2

    .line 1565
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method protected getLabelWidth()F
    .registers 3

    .line 1355
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1356
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public getMarginLabelLeft()I
    .registers 2

    .line 826
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    return v0
.end method

.method public getMaxValue()I
    .registers 2

    .line 1527
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .registers 2

    .line 1489
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getOriginTextSizeHighlight()I
    .registers 2

    .line 830
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    return v0
.end method

.method public getOriginTextSizeHint()I
    .registers 2

    .line 834
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    return v0
.end method

.method public getOriginalLabelWidth()F
    .registers 4

    .line 1362
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1363
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1364
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1365
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1366
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return v1

    :cond_2e
    const/4 v0, 0x0

    return v0
.end method

.method public getTextSizeHighlight()I
    .registers 2

    .line 805
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    return v0
.end method

.method public getTextSizeHint()I
    .registers 2

    .line 817
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 2

    .line 0
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .registers 2

    .line 1480
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .registers 2

    .line 1432
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 1617
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1618
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 1705
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1706
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 1623
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1624
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->releaseSoundPlayer()V

    .line 1625
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1626
    const-string v0, "NumberPicker_sound_play"

    invoke-static {v0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1631
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 1632
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 1635
    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 1636
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    .line 1637
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 1639
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1640
    invoke-direct {p0, p1, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->drawScrollValue(Landroid/graphics/Canvas;FF)F

    move-result v2

    .line 1641
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->drawLabelText(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 7

    .line 1732
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1733
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_73

    const/4 v0, 0x1

    .line 1734
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    const/16 v1, 0x2000

    .line 1735
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x1000

    .line 1736
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1737
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1738
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1740
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-static {v4, v2, v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 1743
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_41

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_48

    :cond_41
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v2, v2, v3

    :goto_48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, ""

    goto :goto_58

    :cond_56
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    :goto_58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1746
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_73

    .line 1748
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lmiuix/pickerwidget/R$string;->miuix_access_state_desc:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_73
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 977
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_a5

    .line 980
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 983
    :cond_14
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 984
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 985
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 986
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    .line 987
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIgnoreMoveEvents:Z

    .line 988
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 990
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_44

    .line 991
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_54

    .line 992
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_54

    .line 995
    :cond_44
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_54

    .line 996
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_54

    .line 997
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 1002
    :cond_54
    :goto_54
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_6a

    .line 1003
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1004
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1005
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_a4

    .line 1006
    :cond_6a
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 1007
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1008
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_a4

    .line 1009
    :cond_7d
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8f

    .line 1011
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 1010
    invoke-direct {p0, v1, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_a4

    .line 1012
    :cond_8f
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9f

    .line 1014
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 1013
    invoke-direct {p0, v2, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_a4

    .line 1016
    :cond_9f
    iput-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 1017
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_a4
    return v2

    :cond_a5
    :goto_a5
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    .line 846
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 847
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 850
    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 851
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 854
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 855
    iget-object p5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 856
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 857
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 860
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_45

    .line 864
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 865
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeFadingEdges()V

    .line 866
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 868
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 872
    :cond_45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 873
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->trimLabelTextSize(F)V

    .line 876
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 877
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    add-int/lit8 p2, p2, 0x14

    .line 878
    iget-boolean p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    if-eqz p3, :cond_b7

    instance-of p3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p3, :cond_b7

    .line 880
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 881
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1d

    if-lt p3, p4, :cond_b7

    .line 882
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_7d
    if-ge p5, p3, :cond_b7

    .line 884
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 885
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_b4

    .line 886
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 887
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    move v2, p4

    :goto_8e
    if-ge v2, v1, :cond_b4

    .line 889
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 890
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 891
    instance-of v4, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_b1

    .line 892
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 893
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    if-le v4, p2, :cond_a6

    move v4, p2

    goto :goto_aa

    :cond_a6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    :goto_aa
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    :cond_b1
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_b4
    add-int/lit8 p5, p5, 0x1

    goto :goto_7d

    :cond_b7
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 904
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_8

    .line 905
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 909
    :cond_8
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 910
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 911
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 913
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 915
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 917
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 11

    .line 1027
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ec

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_d

    goto/16 :goto_ec

    .line 1030
    :cond_d
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_17

    .line 1031
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1033
    :cond_17
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5c

    if-eq v0, v2, :cond_2b

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5c

    goto/16 :goto_eb

    .line 1037
    :cond_2b
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIgnoreMoveEvents:Z

    if-eqz v0, :cond_31

    goto/16 :goto_eb

    .line 1040
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1041
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4d

    .line 1042
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1043
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_58

    .line 1044
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1045
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_58

    .line 1048
    :cond_4d
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 1049
    invoke-virtual {p0, v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 1050
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1052
    :cond_58
    :goto_58
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_eb

    .line 1057
    :cond_5c
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 1058
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 1059
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1060
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1061
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v4, v4

    const/16 v5, 0x3e8

    invoke-virtual {v0, v5, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1062
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 1063
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_87

    int-to-float v0, v0

    .line 1064
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1066
    :cond_87
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_96

    .line 1067
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->fling(I)V

    .line 1068
    invoke-direct {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_e3

    .line 1070
    :cond_96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 1071
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 1072
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 1073
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_dd

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_dd

    .line 1074
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_bf

    .line 1075
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    goto :goto_e0

    .line 1077
    :cond_bf
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v3

    if-lez v0, :cond_ce

    .line 1080
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1081
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_e0

    :cond_ce
    if-gez v0, :cond_d9

    .line 1084
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1085
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_e0

    .line 1088
    :cond_d9
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_e0

    .line 1092
    :cond_dd
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1094
    :goto_e0
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1096
    :goto_e3
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1097
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_eb
    return v3

    :cond_ec
    :goto_ec
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 6

    .line 1755
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    .line 1758
    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_10

    return v1

    :cond_10
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_19

    const/16 v2, 0x2000

    if-eq p1, v2, :cond_19

    return v1

    :cond_19
    if-ne p1, p2, :cond_1c

    move v1, v0

    .line 1764
    :cond_1c
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    return v0
.end method

.method public scrollBy(II)V
    .registers 7

    .line 1191
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1192
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_14

    if-lez p2, :cond_14

    aget v2, p1, v1

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-gt v2, v3, :cond_14

    .line 1194
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_14
    if-nez v0, :cond_23

    if-gez p2, :cond_23

    .line 1197
    aget v0, p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_23

    .line 1199
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1202
    :cond_23
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    :cond_28
    :goto_28
    if-lez p2, :cond_50

    .line 1204
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v0, v2

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v2, v3, :cond_50

    .line 1205
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr v0, v2

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1206
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1207
    aget v0, p1, v1

    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1208
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_28

    aget v0, p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-gt v0, v2, :cond_28

    .line 1209
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_28

    :cond_50
    :goto_50
    if-gez p2, :cond_79

    .line 1213
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v2, v0, v2

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v3, v3

    if-ge v2, v3, :cond_79

    .line 1214
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr v0, v2

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1215
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1216
    aget v0, p1, v1

    invoke-direct {p0, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1217
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_50

    aget v0, p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_50

    .line 1218
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_50

    :cond_79
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .registers 3

    .line 1578
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_5

    return-void

    .line 1581
    :cond_5
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 1584
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_18

    .line 1587
    :cond_12
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1589
    :goto_18
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 1590
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1591
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V
    .registers 3

    .line 1265
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_5

    return-void

    .line 1268
    :cond_5
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 1269
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1270
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3

    .line 1229
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    if-nez p1, :cond_e

    :cond_6
    if-eqz v0, :cond_13

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1230
    :cond_e
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 1231
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_13
    return-void
.end method

.method public setLabelTextSizeThreshold(F)V
    .registers 3

    const/4 v0, 0x0

    .line 1397
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    return-void
.end method

.method public setLabelTextSizeTrimFactor(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    .line 1408
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    :cond_d
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_7

    .line 1601
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    :cond_7
    return-void
.end method

.method public setMaxValue(I)V
    .registers 3

    .line 1541
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_2a

    .line 1547
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 1548
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_f

    .line 1549
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 1551
    :cond_f
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 1552
    :goto_1a
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1553
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1554
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 1555
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1556
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1545
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMeasureBackgroundEnabled(Z)V
    .registers 2

    .line 726
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    return-void
.end method

.method public setMinValue(I)V
    .registers 3

    .line 1503
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-ltz p1, :cond_2a

    .line 1509
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 1510
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_f

    .line 1511
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 1513
    :cond_f
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length p1, p1

    if-le v0, p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    .line 1514
    :goto_1a
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1515
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1516
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 1517
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1518
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1507
    :cond_2a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .registers 3

    .line 1471
    iput-wide p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;)V
    .registers 2

    .line 0
    return-void
.end method

.method public setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V
    .registers 2

    .line 1241
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setTextSizeHighlight(I)V
    .registers 3

    .line 809
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 810
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 811
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 812
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 813
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTextSizeHint(I)V
    .registers 2

    .line 821
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 822
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTextSizeTrimFactor(F)V
    .registers 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    .line 1420
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeTrimFactor:F

    :cond_d
    return-void
.end method

.method public setValue(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1302
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .registers 4

    .line 1453
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz p1, :cond_11

    if-eqz v0, :cond_17

    .line 1454
    :cond_11
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_17

    .line 1455
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1457
    :cond_17
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->refreshWheel()V

    return-void
.end method
