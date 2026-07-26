.class public Lmiuix/preference/GalleryPreference;
.super Lmiuix/preference/BasePreference;
.source "GalleryPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;,
        Lmiuix/preference/GalleryPreference$LayoutHolder;
    }
.end annotation


# instance fields
.field private mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

.field private mCardEnable:Z

.field private mContentDescription:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIndicator:Lmiuix/miuixbasewidget/widget/PageIndicator;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayoutArray:[I

.field private mLayoutId:I

.field private mOnPageChangeCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

.field private mRoot:Landroid/widget/LinearLayout;

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryArray:[Ljava/lang/CharSequence;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleArray:[Ljava/lang/CharSequence;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mViewPager:Lmiuix/viewpager2/widget/ViewPager2;


# direct methods
.method public static synthetic $r8$lambda$emI2eGQ9oBA24XEDbUwO0uJ5_rE(Landroid/widget/TextView;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 0
    invoke-static/range {p0 .. p9}, Lmiuix/preference/GalleryPreference;->lambda$autoAdjustTextViewGravity$0(Landroid/widget/TextView;Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/GalleryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 63
    sget v0, Lmiuix/preference/R$style;->Miuix_Preference_GalleryPreference:I

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/GalleryPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lmiuix/preference/BasePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/GalleryPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    sget-object v0, Lmiuix/preference/R$styleable;->GalleryPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 72
    sget p2, Lmiuix/preference/R$styleable;->GalleryPreference_galleryLayout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lmiuix/preference/GalleryPreference;->mLayoutId:I

    .line 73
    sget p2, Lmiuix/preference/R$styleable;->BasePreference_cardEnable:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lmiuix/preference/GalleryPreference;->mCardEnable:Z

    .line 74
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/GalleryPreference;->mTitle:Ljava/lang/CharSequence;

    .line 75
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/preference/GalleryPreference;->mSummary:Ljava/lang/CharSequence;

    .line 76
    sget p2, Lmiuix/preference/R$styleable;->GalleryPreference_galleryLayoutArray:I

    .line 77
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 78
    sget p4, Lmiuix/preference/R$styleable;->GalleryPreference_galleryTitleArray:I

    .line 79
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 80
    sget v0, Lmiuix/preference/R$styleable;->GalleryPreference_gallerySummaryArray:I

    .line 81
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    invoke-direct {p0, p2}, Lmiuix/preference/GalleryPreference;->createLayoutArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mLayoutArray:[I

    .line 84
    invoke-direct {p0, p4}, Lmiuix/preference/GalleryPreference;->createTitleOrSummaryArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mTitleArray:[Ljava/lang/CharSequence;

    .line 85
    invoke-direct {p0, p3}, Lmiuix/preference/GalleryPreference;->createTitleOrSummaryArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mSummaryArray:[Ljava/lang/CharSequence;

    return-void
.end method

.method static synthetic access$000(Lmiuix/preference/GalleryPreference;)[Ljava/lang/CharSequence;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/preference/GalleryPreference;->mTitleArray:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/preference/GalleryPreference;)Ljava/lang/String;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/preference/GalleryPreference;->mContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lmiuix/preference/GalleryPreference;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 34
    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mContentDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$184(Lmiuix/preference/GalleryPreference;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiuix/preference/GalleryPreference;->mContentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mContentDescription:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lmiuix/preference/GalleryPreference;)[Ljava/lang/CharSequence;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/preference/GalleryPreference;->mSummaryArray:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/preference/GalleryPreference;)Landroid/widget/LinearLayout;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/preference/GalleryPreference;->mRoot:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/preference/GalleryPreference;)Lmiuix/viewpager2/widget/ViewPager2;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/preference/GalleryPreference;)Lmiuix/miuixbasewidget/widget/PageIndicator;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/preference/GalleryPreference;->mIndicator:Lmiuix/miuixbasewidget/widget/PageIndicator;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/preference/GalleryPreference;)Landroid/view/LayoutInflater;
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/preference/GalleryPreference;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/preference/GalleryPreference;)[I
    .registers 1

    .line 34
    iget-object p0, p0, Lmiuix/preference/GalleryPreference;->mLayoutArray:[I

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/preference/GalleryPreference;Landroid/widget/TextView;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lmiuix/preference/GalleryPreference;->autoAdjustTextViewGravity(Landroid/widget/TextView;)V

    return-void
.end method

.method private autoAdjustTextViewGravity(Landroid/widget/TextView;)V
    .registers 3

    if-eqz p1, :cond_a

    .line 256
    new-instance v0, Lmiuix/preference/GalleryPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lmiuix/preference/GalleryPreference$$ExternalSyntheticLambda0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_a
    return-void
.end method

.method private createContentDescription(Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/String;
    .registers 5

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_14

    .line 234
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_14
    if-eqz p2, :cond_2e

    .line 240
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2e

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-lez p2, :cond_2b

    .line 243
    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_2b
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 248
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createLayoutArray(I)[I
    .registers 7

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 277
    :cond_4
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 279
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v0, :cond_21

    .line 281
    invoke-virtual {p1, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 283
    :cond_21
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private createTitleOrSummaryArray(I)[Ljava/lang/CharSequence;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 291
    :cond_4
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createViewPager2()Lmiuix/viewpager2/widget/ViewPager2;
    .registers 4

    .line 266
    new-instance v0, Lmiuix/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lmiuix/preference/GalleryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance v1, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmiuix/preference/GalleryPreference$GalleryPreferenceAdapter;-><init>(Lmiuix/preference/GalleryPreference;Lmiuix/preference/GalleryPreference$1;)V

    .line 268
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/OriginalViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x0

    .line 269
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/OriginalViewPager2;->setOrientation(I)V

    return-object v0
.end method

.method private static synthetic lambda$autoAdjustTextViewGravity$0(Landroid/widget/TextView;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 258
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    const/4 p2, 0x1

    if-le p1, p2, :cond_b

    const p1, 0x800003

    goto :goto_d

    :cond_b
    const/16 p1, 0x11

    .line 259
    :goto_d
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    return-void
.end method

.method private setMarginTop(Landroid/view/View;I)V
    .registers 6

    .line 223
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mContext:Landroid/content/Context;

    int-to-float p2, p2

    invoke-static {v0, p2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 225
    instance-of v1, v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_19

    .line 226
    move-object v1, v0

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public enabledCardStyle()Z
    .registers 2

    .line 297
    iget-boolean v0, p0, Lmiuix/preference/GalleryPreference;->mCardEnable:Z

    return v0
.end method

.method public isTouchAnimationEnable()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 5

    .line 96
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mRoot:Landroid/widget/LinearLayout;

    if-nez v0, :cond_11b

    .line 97
    sget v0, Lmiuix/preference/R$id;->miuix_gallery_preference_layout_root:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lmiuix/preference/GalleryPreference;->mRoot:Landroid/widget/LinearLayout;

    .line 98
    sget v0, Lmiuix/preference/R$id;->miuix_gallery_preference_external_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    .line 99
    sget v0, Lmiuix/preference/R$id;->miuix_gallery_preference_external_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mSummaryTextView:Landroid/widget/TextView;

    .line 100
    invoke-direct {p0, p1}, Lmiuix/preference/GalleryPreference;->autoAdjustTextViewGravity(Landroid/widget/TextView;)V

    .line 102
    iget-object p1, p0, Lmiuix/preference/GalleryPreference;->mLayoutArray:[I

    const/4 v0, 0x0

    if-eqz p1, :cond_81

    .line 103
    invoke-direct {p0}, Lmiuix/preference/GalleryPreference;->createViewPager2()Lmiuix/viewpager2/widget/ViewPager2;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;

    .line 104
    invoke-virtual {p0}, Lmiuix/preference/BasePreference;->isAccessibilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 105
    new-instance p1, Lmiuix/preference/GalleryPreference$1;

    invoke-direct {p1, p0}, Lmiuix/preference/GalleryPreference$1;-><init>(Lmiuix/preference/GalleryPreference;)V

    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mOnPageChangeCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    .line 120
    iget-object v1, p0, Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;)V

    .line 122
    :cond_42
    iget-object p1, p0, Lmiuix/preference/GalleryPreference;->mRoot:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 123
    new-instance p1, Lmiuix/miuixbasewidget/widget/PageIndicator;

    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lmiuix/miuixbasewidget/widget/PageIndicator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mIndicator:Lmiuix/miuixbasewidget/widget/PageIndicator;

    .line 124
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/OriginalViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/PageIndicator;->setIndicatorCount(I)V

    .line 125
    iget-object p1, p0, Lmiuix/preference/GalleryPreference;->mIndicator:Lmiuix/miuixbasewidget/widget/PageIndicator;

    new-instance v0, Lmiuix/preference/GalleryPreference$2;

    invoke-direct {v0, p0}, Lmiuix/preference/GalleryPreference$2;-><init>(Lmiuix/preference/GalleryPreference;)V

    invoke-virtual {p1, v0}, Lmiuix/miuixbasewidget/widget/PageIndicator;->setOnPageChangeListener(Lmiuix/miuixbasewidget/widget/PageIndicator$OnPageChangeListener;)V

    .line 131
    iget-object p1, p0, Lmiuix/preference/GalleryPreference;->mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    if-nez p1, :cond_79

    .line 132
    new-instance p1, Lmiuix/preference/GalleryPreference$3;

    invoke-direct {p1, p0}, Lmiuix/preference/GalleryPreference$3;-><init>(Lmiuix/preference/GalleryPreference;)V

    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    .line 140
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/OriginalViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;)V

    .line 142
    :cond_79
    iget-object p1, p0, Lmiuix/preference/GalleryPreference;->mRoot:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mIndicator:Lmiuix/miuixbasewidget/widget/PageIndicator;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_93

    .line 143
    :cond_81
    iget p1, p0, Lmiuix/preference/GalleryPreference;->mLayoutId:I

    if-eqz p1, :cond_93

    .line 144
    iget-object v1, p0, Lmiuix/preference/GalleryPreference;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lmiuix/preference/GalleryPreference;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 145
    iget-object v1, p0, Lmiuix/preference/GalleryPreference;->mRoot:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_94

    :cond_93
    :goto_93
    const/4 p1, 0x0

    .line 148
    :goto_94
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_a4

    .line 149
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_ab

    .line 151
    :cond_a4
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lmiuix/preference/GalleryPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_ab
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 154
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c0

    .line 156
    :cond_b9
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mSummaryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/preference/GalleryPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    :goto_c0
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mSummaryArray:[Ljava/lang/CharSequence;

    if-nez v0, :cond_dc

    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mIndicator:Lmiuix/miuixbasewidget/widget/PageIndicator;

    if-eqz v0, :cond_dc

    const/4 v1, 0x4

    .line 161
    invoke-direct {p0, v0, v1}, Lmiuix/preference/GalleryPreference;->setMarginTop(Landroid/view/View;I)V

    .line 163
    :cond_dc
    invoke-virtual {p0}, Lmiuix/preference/BasePreference;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_11b

    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11b

    .line 164
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mRoot:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 165
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 166
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 167
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lmiuix/preference/GalleryPreference;->mSummaryTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lmiuix/preference/GalleryPreference;->createContentDescription(Landroid/widget/TextView;Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiuix/preference/GalleryPreference;->mContentDescription:Ljava/lang/String;

    if-eqz p1, :cond_10a

    .line 169
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 171
    :cond_10a
    iget-object p1, p0, Lmiuix/preference/GalleryPreference;->mIndicator:Lmiuix/miuixbasewidget/widget/PageIndicator;

    if-eqz p1, :cond_111

    .line 172
    invoke-virtual {p1, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 174
    :cond_111
    iget-object p1, p0, Lmiuix/preference/GalleryPreference;->mRoot:Landroid/widget/LinearLayout;

    new-instance v0, Lmiuix/preference/GalleryPreference$4;

    invoke-direct {v0, p0}, Lmiuix/preference/GalleryPreference$4;-><init>(Lmiuix/preference/GalleryPreference;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_11b
    return-void
.end method

.method public onDetached()V
    .registers 4

    .line 390
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 391
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    iget-object v2, p0, Lmiuix/preference/GalleryPreference;->mOnPageChangeCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    if-eqz v2, :cond_11

    .line 392
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/OriginalViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;)V

    .line 393
    iput-object v1, p0, Lmiuix/preference/GalleryPreference;->mOnPageChangeCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    .line 395
    :cond_11
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mViewPager:Lmiuix/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_1e

    iget-object v2, p0, Lmiuix/preference/GalleryPreference;->mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    if-eqz v2, :cond_1e

    .line 396
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/OriginalViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;)V

    .line 397
    iput-object v1, p0, Lmiuix/preference/GalleryPreference;->mCallback:Landroidx/viewpager2/widget/OriginalViewPager2$OnPageChangeCallback;

    :cond_1e
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4

    .line 347
    iput-object p1, p0, Lmiuix/preference/GalleryPreference;->mTitle:Ljava/lang/CharSequence;

    .line 348
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_f

    .line 349
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmiuix/preference/GalleryPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    .line 351
    :cond_f
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/16 v1, 0x8

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lmiuix/preference/GalleryPreference;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
