.class Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"


# instance fields
.field private mAsyncFontPending:Z

.field private final mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field private mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTint:Landroidx/appcompat/widget/TintInfo;

.field private mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

.field private mFontTypeface:Landroid/graphics/Typeface;

.field private mFontWeight:I

.field private mStyle:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    const/4 v0, -0x1

    .line 74
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 79
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 80
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    return-void
.end method

.method private applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .registers 4

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 542
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    :cond_d
    return-void
.end method

.method private static createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .registers 3

    .line 548
    invoke-virtual {p1, p0, p2}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 550
    new-instance p1, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p1}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    const/4 p2, 0x1

    .line 551
    iput-boolean p2, p1, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 552
    iput-object p0, p1, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    return-object p1

    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method private setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 12

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez p5, :cond_52

    if-eqz p6, :cond_9

    goto :goto_52

    :cond_9
    if-nez p1, :cond_11

    if-nez p2, :cond_11

    if-nez p3, :cond_11

    if-eqz p4, :cond_71

    .line 684
    :cond_11
    iget-object p5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 685
    aget-object p6, p5, v2

    if-nez p6, :cond_40

    aget-object v4, p5, v3

    if-eqz v4, :cond_20

    goto :goto_40

    .line 696
    :cond_20
    iget-object p5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {p5}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    .line 697
    iget-object p6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_2b

    goto :goto_2d

    .line 698
    :cond_2b
    aget-object p1, p5, v2

    :goto_2d
    if-eqz p2, :cond_30

    goto :goto_32

    .line 699
    :cond_30
    aget-object p2, p5, v1

    :goto_32
    if-eqz p3, :cond_35

    goto :goto_37

    .line 700
    :cond_35
    aget-object p3, p5, v3

    :goto_37
    if-eqz p4, :cond_3a

    goto :goto_3c

    .line 701
    :cond_3a
    aget-object p4, p5, v0

    .line 697
    :goto_3c
    invoke-virtual {p6, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_71

    .line 686
    :cond_40
    :goto_40
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p2, :cond_45

    goto :goto_47

    .line 688
    :cond_45
    aget-object p2, p5, v1

    :goto_47
    aget-object p3, p5, v3

    if-eqz p4, :cond_4c

    goto :goto_4e

    .line 690
    :cond_4c
    aget-object p4, p5, v0

    .line 686
    :goto_4e
    invoke-virtual {p1, p6, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 673
    :cond_52
    :goto_52
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 674
    iget-object p3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    if-eqz p5, :cond_5d

    goto :goto_5f

    .line 675
    :cond_5d
    aget-object p5, p1, v2

    :goto_5f
    if-eqz p2, :cond_62

    goto :goto_64

    .line 676
    :cond_62
    aget-object p2, p1, v1

    :goto_64
    if-eqz p6, :cond_67

    goto :goto_69

    .line 677
    :cond_67
    aget-object p6, p1, v3

    :goto_69
    if-eqz p4, :cond_6c

    goto :goto_6e

    .line 678
    :cond_6c
    aget-object p4, p1, v0

    .line 674
    :goto_6e
    invoke-virtual {p3, p5, p2, p6, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_71
    :goto_71
    return-void
.end method

.method private setCompoundTints()V
    .registers 2

    .line 660
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 661
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 662
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 663
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 664
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 665
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    return-void
.end method

.method private setTextSizeInternal(IF)V
    .registers 4

    .line 589
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setTextSizeInternal(IF)V

    return-void
.end method

.method private updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .registers 11

    .line 342
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 345
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1b

    .line 348
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/2addr v0, v2

    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 352
    :cond_1b
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_53

    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 353
    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_53

    .line 415
    :cond_2e
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 417
    iput-boolean v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    .line 418
    invoke-virtual {p2, p1, v4}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p1

    if-eq p1, v4, :cond_4e

    if-eq p1, v2, :cond_49

    const/4 p2, 0x3

    if-eq p1, p2, :cond_44

    goto :goto_52

    .line 429
    :cond_44
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_52

    .line 425
    :cond_49
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_52

    .line 421
    :cond_4e
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    :cond_52
    :goto_52
    return-void

    :cond_53
    :goto_53
    const/4 v3, 0x0

    .line 354
    iput-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 355
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5f

    move v0, v3

    .line 358
    :cond_5f
    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    .line 359
    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 360
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result p1

    if-nez p1, :cond_a1

    .line 361
    new-instance p1, Ljava/lang/ref/WeakReference;

    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-direct {p1, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 362
    new-instance v7, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    invoke-direct {v7, p0, v3, v6, p1}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    .line 381
    :try_start_75
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, v0, p1, v7}, Landroidx/appcompat/widget/TintTypedArray;->getFont(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    move-result-object p1

    if-eqz p1, :cond_98

    .line 383
    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq v3, v1, :cond_96

    .line 386
    invoke-static {p1, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v6, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_8e

    move v6, v4

    goto :goto_8f

    :cond_8e
    move v6, v5

    .line 385
    :goto_8f
    invoke-static {p1, v3, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_98

    .line 389
    :cond_96
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 393
    :cond_98
    :goto_98
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_9e

    move p1, v4

    goto :goto_9f

    :cond_9e
    move p1, v5

    :goto_9f
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z
    :try_end_a1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_75 .. :try_end_a1} :catch_a1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_75 .. :try_end_a1} :catch_a1

    .line 398
    :catch_a1
    :cond_a1
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-nez p1, :cond_cb

    .line 400
    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_cb

    .line 402
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-eq p2, v1, :cond_c3

    .line 405
    invoke-static {p1, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_bb

    goto :goto_bc

    :cond_bb
    move v4, v5

    .line 404
    :goto_bc
    invoke-static {p1, p2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    goto :goto_cb

    .line 408
    :cond_c3
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    :cond_cb
    :goto_cb
    return-void
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .registers 6

    .line 523
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_12

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_36

    .line 525
    :cond_12
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 526
    aget-object v3, v0, v2

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    const/4 v3, 0x1

    .line 527
    aget-object v3, v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 528
    aget-object v3, v0, v1

    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v3, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    const/4 v3, 0x3

    .line 529
    aget-object v0, v0, v3

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v0, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 532
    :cond_36
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_3e

    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_52

    .line 533
    :cond_3e
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 534
    aget-object v2, v0, v2

    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 535
    aget-object v0, v0, v1

    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    :cond_52
    return-void
.end method

.method autoSizeText()V
    .registers 2

    .line 579
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->autoSizeText()V

    return-void
.end method

.method getAutoSizeMaxTextSize()I
    .registers 2

    .line 624
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeMinTextSize()I
    .registers 2

    .line 620
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v0

    return v0
.end method

.method getAutoSizeStepGranularity()I
    .registers 2

    .line 616
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v0

    return v0
.end method

.method getAutoSizeTextAvailableSizes()[I
    .registers 2

    .line 628
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    return-object v0
.end method

.method getAutoSizeTextType()I
    .registers 2

    .line 612
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    return v0
.end method

.method getCompoundDrawableTintList()Landroid/content/res/ColorStateList;
    .registers 2

    .line 633
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2

    .line 647
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-eqz v0, :cond_7

    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method isAutoSizeEnabled()Z
    .registers 2

    .line 585
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->isAutoSizeEnabled()Z

    move-result v0

    return v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    .line 85
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 86
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->get()Landroidx/appcompat/widget/AppCompatDrawableManager;

    move-result-object v11

    .line 89
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    const/4 v12, 0x0

    invoke-static {v10, v8, v2, v9, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v13

    .line 91
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->getWrappedTypeArray()Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v3, p1

    move/from16 v5, p2

    .line 91
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 95
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    const/4 v14, -0x1

    invoke-virtual {v13, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    .line 97
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 99
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 98
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroidx/appcompat/widget/TintInfo;

    .line 101
    :cond_42
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 103
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 102
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTopTint:Landroidx/appcompat/widget/TintInfo;

    .line 105
    :cond_54
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 107
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 106
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableRightTint:Landroidx/appcompat/widget/TintInfo;

    .line 109
    :cond_66
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 111
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 110
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroidx/appcompat/widget/TintInfo;

    .line 115
    :cond_78
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 117
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 116
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableStartTint:Landroidx/appcompat/widget/TintInfo;

    .line 119
    :cond_8a
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    invoke-virtual {v13, v1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 121
    invoke-virtual {v13, v1, v12}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v1

    .line 120
    invoke-static {v10, v11, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    move-result-object v1

    iput-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableEndTint:Landroidx/appcompat/widget/TintInfo;

    .line 125
    :cond_9c
    invoke-virtual {v13}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 130
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    const/4 v2, 0x1

    const/4 v13, 0x0

    if-eq v0, v14, :cond_e6

    .line 142
    sget-object v3, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v10, v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    if-nez v1, :cond_c1

    .line 143
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 145
    invoke-virtual {v0, v3, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    move v4, v2

    goto :goto_c3

    :cond_c1
    move v3, v12

    move v4, v3

    .line 148
    :goto_c3
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 164
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_d3

    .line 165
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_d4

    :cond_d3
    move-object v5, v13

    .line 167
    :goto_d4
    sget v6, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 168
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_e1

    .line 169
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e2

    :cond_e1
    move-object v6, v13

    .line 171
    :goto_e2
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    goto :goto_ea

    :cond_e6
    move v3, v12

    move v4, v3

    move-object v5, v13

    move-object v6, v5

    .line 175
    :goto_ea
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {v10, v8, v0, v9, v12}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v0

    if-nez v1, :cond_ff

    .line 177
    sget v15, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v16

    if-eqz v16, :cond_ff

    .line 179
    invoke-virtual {v0, v15, v12}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v3

    goto :goto_100

    :cond_ff
    move v2, v4

    .line 196
    :goto_100
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_10c

    .line 197
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 200
    :cond_10c
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 201
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_118

    .line 202
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 205
    :cond_118
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 206
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v15

    if-eqz v15, :cond_12c

    .line 207
    invoke-virtual {v0, v4, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v4

    if-nez v4, :cond_12c

    .line 208
    iget-object v4, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v4, v12, v15}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    :cond_12c
    invoke-direct {v7, v10, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 213
    invoke-virtual {v0}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    if-nez v1, :cond_139

    if-eqz v2, :cond_139

    .line 225
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 227
    :cond_139
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_14e

    .line 228
    iget v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontWeight:I

    if-ne v1, v14, :cond_149

    .line 229
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_14e

    .line 231
    :cond_149
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_14e
    :goto_14e
    if-eqz v6, :cond_155

    .line 235
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    :cond_155
    if-eqz v5, :cond_160

    .line 239
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v5}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocales(Landroid/os/LocaleList;)V

    .line 247
    :cond_160
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, v8, v9}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 249
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-eqz v0, :cond_1a4

    .line 251
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextType()I

    move-result v0

    if-eqz v0, :cond_1a4

    .line 253
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 254
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeTextAvailableSizes()[I

    move-result-object v0

    .line 255
    array-length v1, v0

    if-lez v1, :cond_1a4

    .line 256
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_19f

    .line 259
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 260
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMinTextSize()I

    move-result v1

    iget-object v2, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 261
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeMaxTextSize()I

    move-result v2

    iget-object v3, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 262
    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->getAutoSizeStepGranularity()I

    move-result v3

    .line 259
    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    goto :goto_1a4

    .line 265
    :cond_19f
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v12}, Landroid/widget/TextView;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    .line 273
    :cond_1a4
    :goto_1a4
    sget-object v0, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    invoke-static {v10, v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v8

    .line 278
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v14, :cond_1b8

    .line 281
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    goto :goto_1b9

    :cond_1b8
    move-object v1, v13

    .line 283
    :goto_1b9
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v14, :cond_1c7

    .line 286
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v2, v0

    goto :goto_1c8

    :cond_1c7
    move-object v2, v13

    .line 288
    :goto_1c8
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v14, :cond_1d6

    .line 291
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v0

    goto :goto_1d7

    :cond_1d6
    move-object v3, v13

    .line 293
    :goto_1d7
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v14, :cond_1e5

    .line 296
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_1e6

    :cond_1e5
    move-object v4, v13

    .line 298
    :goto_1e6
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v14, :cond_1f4

    .line 301
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v5, v0

    goto :goto_1f5

    :cond_1f4
    move-object v5, v13

    .line 303
    :goto_1f5
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v0

    if-eq v0, v14, :cond_203

    .line 306
    invoke-virtual {v11, v10, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v6, v0

    goto :goto_204

    :cond_203
    move-object v6, v13

    :goto_204
    move-object/from16 v0, p0

    .line 308
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 311
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_21a

    .line 312
    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 314
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintList(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 316
    :cond_21a
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    invoke-virtual {v8, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_22f

    .line 318
    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v0

    .line 317
    invoke-static {v0, v13}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 319
    iget-object v1, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/widget/TextViewCompat;->setCompoundDrawableTintMode(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 322
    :cond_22f
    sget v0, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    invoke-virtual {v8, v0, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 324
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    invoke-virtual {v8, v1, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 326
    sget v2, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    invoke-virtual {v8, v2, v14}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 329
    invoke-virtual {v8}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    if-eq v0, v14, :cond_24b

    .line 331
    iget-object v3, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v3, v0}, Landroidx/core/widget/TextViewCompat;->setFirstBaselineToTopHeight(Landroid/widget/TextView;I)V

    :cond_24b
    if-eq v1, v14, :cond_252

    .line 334
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Landroidx/core/widget/TextViewCompat;->setLastBaselineToBottomHeight(Landroid/widget/TextView;I)V

    :cond_252
    if-eq v2, v14, :cond_259

    .line 337
    iget-object v0, v7, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-static {v0, v2}, Landroidx/core/widget/TextViewCompat;->setLineHeight(Landroid/widget/TextView;I)V

    :cond_259
    return-void
.end method

.method onAsyncTypefaceReceived(Ljava/lang/ref/WeakReference;Landroid/graphics/Typeface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/graphics/Typeface;",
            ")V"
        }
    .end annotation

    .line 437
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAsyncFontPending:Z

    if-eqz v0, :cond_24

    .line 438
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    .line 439
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_24

    .line 441
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 442
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    .line 443
    new-instance v1, Landroidx/appcompat/widget/AppCompatTextHelper$2;

    invoke-direct {v1, p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextHelper$2;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_24

    .line 450
    :cond_1f
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_24
    :goto_24
    return-void
.end method

.method onLayout(ZIIII)V
    .registers 6

    .line 561
    sget-boolean p1, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez p1, :cond_7

    .line 562
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->autoSizeText()V

    :cond_7
    return-void
.end method

.method onSetCompoundDrawables()V
    .registers 1

    .line 519
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    return-void
.end method

.method onSetTextAppearance(Landroid/content/Context;I)V
    .registers 6

    .line 457
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p2

    .line 459
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 464
    invoke-virtual {p2, v0, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setAllCaps(Z)V

    .line 492
    :cond_16
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, -0x1

    .line 493
    invoke-virtual {p2, v0, v1}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-nez v0, :cond_2b

    .line 494
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 498
    :cond_2b
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->updateTypefaceAndStyle(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 500
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 501
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 502
    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/TintTypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_41

    .line 505
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFontVariationSettings(Ljava/lang/String;)Z

    .line 508
    :cond_41
    invoke-virtual {p2}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 509
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mFontTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_4f

    .line 510
    iget-object p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mStyle:I

    invoke-virtual {p2, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_4f
    return-void
.end method

.method populateSurroundingTextIfNeeded(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .registers 6

    .line 722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_f

    if-eqz p2, :cond_f

    .line 723
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p3, p1}, Landroidx/core/view/inputmethod/EditorInfoCompat;->setInitialSurroundingText(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method

.method setAllCaps(Z)V
    .registers 3

    .line 515
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAllCaps(Z)V

    return-void
.end method

.method setAutoSizeTextTypeUniformWithConfiguration(IIII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 601
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithConfiguration(IIII)V

    return-void
.end method

.method setAutoSizeTextTypeUniformWithPresetSizes([II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 607
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeUniformWithPresetSizes([II)V

    return-void
.end method

.method setAutoSizeTextTypeWithDefaults(I)V
    .registers 3

    .line 593
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mAutoSizeTextHelper:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->setAutoSizeTextTypeWithDefaults(I)V

    return-void
.end method

.method setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 637
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 638
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 640
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 641
    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintList:Z

    .line 642
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    return-void
.end method

.method setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    .line 651
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    if-nez v0, :cond_b

    .line 652
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    invoke-direct {v0}, Landroidx/appcompat/widget/TintInfo;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    .line 654
    :cond_b
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->mDrawableTint:Landroidx/appcompat/widget/TintInfo;

    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    .line 655
    :goto_14
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->mHasTintMode:Z

    .line 656
    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->setCompoundTints()V

    return-void
.end method

.method setTextSize(IF)V
    .registers 4

    .line 569
    sget-boolean v0, Landroidx/core/widget/AutoSizeableTextView;->PLATFORM_SUPPORTS_AUTOSIZE:Z

    if-nez v0, :cond_d

    .line 570
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextHelper;->isAutoSizeEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 571
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextHelper;->setTextSizeInternal(IF)V

    :cond_d
    return-void
.end method
