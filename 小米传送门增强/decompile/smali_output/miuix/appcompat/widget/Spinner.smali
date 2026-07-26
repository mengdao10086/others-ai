.class public Lmiuix/appcompat/widget/Spinner;
.super Landroid/widget/Spinner;
.source "Spinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/Spinner$SpinnerPopup;,
        Lmiuix/appcompat/widget/Spinner$DialogPopup;,
        Lmiuix/appcompat/widget/Spinner$DropdownPopup;,
        Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;,
        Lmiuix/appcompat/widget/Spinner$DialogPopupAdapter;,
        Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;,
        Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;,
        Lmiuix/appcompat/widget/Spinner$SavedState;,
        Lmiuix/appcompat/widget/Spinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static FORWARDING_LISTENER:Ljava/lang/reflect/Field;


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownMaxWidth:I

.field mDropDownMinWidth:I

.field mDropDownWidth:I

.field private mLastDensity:F

.field private mOnSpinnerDismissListener:Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;

.field private mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

.field private final mPopupContext:Landroid/content/Context;

.field private final mPopupSet:Z

.field private mSelectedPosition:I

.field private mTempAdapter:Landroid/widget/SpinnerAdapter;

.field final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$5swu7Eq-R0TirgTe_pBuESLcSOM(Lmiuix/appcompat/widget/Spinner;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->lambda$setAdapter$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 103
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string v1, "mForwardingListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lmiuix/appcompat/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    .line 106
    const-string v1, "Spinner"

    const-string v2, "static initializer: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 166
    sget v0, Lmiuix/appcompat/R$attr;->miuiSpinnerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, -0x1

    .line 181
    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 200
    invoke-direct/range {v0 .. v5}, Lmiuix/appcompat/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .registers 12

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 130
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lmiuix/appcompat/widget/Spinner;->mLastDensity:F

    .line 231
    sget-object v0, Lmiuix/appcompat/R$styleable;->Spinner:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    if-eqz p5, :cond_27

    .line 235
    new-instance v3, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v3, p1, p5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v3, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_39

    .line 237
    :cond_27
    sget p5, Lmiuix/appcompat/R$styleable;->Spinner_popupTheme:I

    invoke-virtual {v2, p5, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p5

    if-eqz p5, :cond_37

    .line 239
    new-instance v3, Landroidx/appcompat/view/ContextThemeWrapper;

    invoke-direct {v3, p1, p5}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    goto :goto_39

    .line 241
    :cond_37
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    :goto_39
    const/4 p5, -0x1

    if-ne p4, p5, :cond_42

    .line 246
    sget p4, Lmiuix/appcompat/R$styleable;->Spinner_spinnerModeCompat:I

    invoke-virtual {v2, p4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    :cond_42
    const/4 p5, 0x0

    const/4 v3, 0x1

    if-eqz p4, :cond_91

    if-eq p4, v3, :cond_49

    goto :goto_a1

    .line 256
    :cond_49
    new-instance v4, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;-><init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;)V

    .line 257
    iget-object v5, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v5, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 259
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_dropDownWidth:I

    const/4 v0, -0x2

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    .line 261
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_dropDownMinWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownMinWidth:I

    .line 263
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_dropDownMaxWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p3

    iput p3, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownMaxWidth:I

    .line 265
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_popupBackground:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_7b

    .line 267
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->setPopupBackgroundResource(I)V

    goto :goto_82

    .line 270
    :cond_7b
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 269
    invoke-virtual {v4, p3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :goto_82
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 273
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    iput-object v4, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    goto :goto_a1

    .line 251
    :cond_91
    new-instance p2, Lmiuix/appcompat/widget/Spinner$DialogPopup;

    invoke-direct {p2, p0, p5}, Lmiuix/appcompat/widget/Spinner$DialogPopup;-><init>(Lmiuix/appcompat/widget/Spinner;Lmiuix/appcompat/widget/Spinner$1;)V

    iput-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    .line 252
    sget p3, Lmiuix/appcompat/R$styleable;->Spinner_android_prompt:I

    invoke-virtual {v2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 278
    :goto_a1
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->makeSupperForwardingListenerInvalid()V

    .line 280
    sget p2, Lmiuix/appcompat/R$styleable;->Spinner_android_entries:I

    invoke-virtual {v2, p2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_c6

    .line 282
    new-instance p3, Landroid/widget/ArrayAdapter;

    sget v0, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_layout:I

    const v4, 0x1020014

    invoke-direct {p3, p1, v0, v4, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    if-nez p4, :cond_be

    .line 285
    sget p1, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_dialog_item:I

    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto :goto_c3

    .line 287
    :cond_be
    sget p1, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_dropdown_item:I

    invoke-virtual {p3, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 289
    :goto_c3
    invoke-virtual {p0, p3}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 291
    :cond_c6
    sget p1, Lmiuix/appcompat/R$styleable;->Spinner_disableChildrenWhenDisabled:I

    invoke-virtual {v2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    .line 293
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 295
    iput-boolean v3, p0, Lmiuix/appcompat/widget/Spinner;->mPopupSet:Z

    .line 299
    iget-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz p1, :cond_dc

    .line 300
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 301
    iput-object p5, p0, Lmiuix/appcompat/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    .line 303
    :cond_dc
    invoke-static {p0, v1}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$100(Lmiuix/appcompat/widget/Spinner;)I
    .registers 1

    .line 88
    iget p0, p0, Lmiuix/appcompat/widget/Spinner;->mSelectedPosition:I

    return p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/widget/Spinner;)Lmiuix/appcompat/widget/Spinner$SpinnerPopup;
    .registers 1

    .line 88
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/widget/Spinner;)V
    .registers 1

    .line 88
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->onSpinnerDismiss()V

    return-void
.end method

.method static synthetic access$600(Lmiuix/appcompat/widget/Spinner;)V
    .registers 1

    .line 88
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->vibrate()V

    return-void
.end method

.method private compatMeasureSelectItemWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_5b

    .line 684
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_5b

    .line 690
    :cond_a
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 692
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 694
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    .line 695
    invoke-interface {p1, v3, v4, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-nez v3, :cond_40

    .line 697
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 701
    :cond_40
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    if-eqz p2, :cond_5a

    .line 706
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 707
    iget-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p2

    add-int/2addr p1, v0

    :cond_5a
    return p1

    :cond_5b
    :goto_5b
    return v0
.end method

.method private synthetic lambda$setAdapter$0()V
    .registers 2

    .line 505
    invoke-virtual {p0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/widget/Spinner;->setChildEnabled(Z)V

    return-void
.end method

.method private makeSupperForwardingListenerInvalid()V
    .registers 4

    .line 368
    sget-object v0, Lmiuix/appcompat/widget/Spinner;->FORWARDING_LISTENER:Ljava/lang/reflect/Field;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    .line 372
    :try_start_6
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_12

    :catch_a
    move-exception v0

    .line 374
    const-string v1, "Spinner"

    const-string v2, "makeSupperForwardingListenerInvalid: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    const/4 v0, 0x0

    .line 376
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setLongClickable(Z)V

    return-void
.end method

.method private notifySpinnerDismiss()V
    .registers 2

    .line 559
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mOnSpinnerDismissListener:Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;

    if-eqz v0, :cond_7

    .line 560
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;->onSpinnerDismiss()V

    :cond_7
    return-void
.end method

.method private onSpinnerDismiss()V
    .registers 2

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->enableActivatedState(Z)V

    .line 364
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->notifySpinnerDismiss()V

    return-void
.end method

.method private setChildEnabled(Z)V
    .registers 4

    const v0, 0x1020014

    .line 336
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020007

    .line 337
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_13

    .line 339
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_13
    if-eqz v1, :cond_18

    .line 342
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_18
    return-void
.end method

.method private superViewPerformClick()Z
    .registers 2

    const/4 v0, 0x1

    .line 639
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->sendAccessibilityEvent(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private vibrate()V
    .registers 3

    .line 632
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    return-void
.end method


# virtual methods
.method public enableActivatedState(Z)V
    .registers 2

    if-eqz p1, :cond_d

    .line 307
    invoke-virtual {p0}, Landroid/widget/Spinner;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p1, 0x1

    .line 308
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setActivated(Z)V

    goto :goto_11

    :cond_d
    const/4 p1, 0x0

    .line 310
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setActivated(Z)V

    :goto_11
    return-void
.end method

.method public getDropDownHorizontalOffset()I
    .registers 2

    .line 458
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_9

    .line 459
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getHorizontalOffset()I

    move-result v0

    return v0

    .line 461
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .registers 2

    .line 421
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_9

    .line 422
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getVerticalOffset()I

    move-result v0

    return v0

    .line 424
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .registers 2

    .line 476
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_7

    .line 477
    iget v0, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    return v0

    .line 479
    :cond_7
    invoke-super {p0}, Landroid/widget/Spinner;->getDropDownWidth()I

    move-result v0

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 403
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_9

    .line 404
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 406
    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupContext()Landroid/content/Context;
    .registers 2

    .line 384
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .registers 2

    .line 654
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-super {p0}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getWindowManagerFlag()I
    .registers 3

    .line 526
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_d

    .line 527
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/PopupWindow;->getWindowManagerFlags()I

    move-result v0

    return v0

    :cond_d
    const/4 v0, -0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 567
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 568
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 569
    iget v0, p0, Lmiuix/appcompat/widget/Spinner;->mLastDensity:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_30

    .line 570
    iput p1, p0, Lmiuix/appcompat/widget/Spinner;->mLastDensity:F

    .line 571
    invoke-virtual {p0}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object p1

    const/4 v0, 0x0

    .line 572
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 573
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 575
    new-instance v0, Lmiuix/appcompat/widget/Spinner$1;

    invoke-direct {v0, p0, p1}, Lmiuix/appcompat/widget/Spinner$1;-><init>(Lmiuix/appcompat/widget/Spinner;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    :cond_30
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 534
    invoke-super {p0}, Landroid/widget/Spinner;->onDetachedFromWindow()V

    .line 536
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 537
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->dismiss()V

    :cond_12
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 543
    invoke-super {p0, p1, p2}, Landroid/widget/Spinner;->onMeasure(II)V

    .line 545
    iget-object p2, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz p2, :cond_32

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, -0x80000000

    if-ne p2, v0, :cond_32

    .line 546
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result p2

    .line 548
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/widget/Spinner;->compatMeasureSelectItemWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 547
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 549
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 547
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 550
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result p2

    .line 547
    invoke-virtual {p0, p1, p2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    :cond_32
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3

    .line 734
    check-cast p1, Lmiuix/appcompat/widget/Spinner$SavedState;

    .line 736
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Spinner;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 738
    iget-boolean p1, p1, Lmiuix/appcompat/widget/Spinner$SavedState;->mShowDropdown:Z

    if-eqz p1, :cond_1b

    .line 739
    invoke-virtual {p0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 741
    new-instance v0, Lmiuix/appcompat/widget/Spinner$2;

    invoke-direct {v0, p0}, Lmiuix/appcompat/widget/Spinner$2;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    .line 753
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1b
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 727
    new-instance v0, Lmiuix/appcompat/widget/Spinner$SavedState;

    invoke-super {p0}, Landroid/widget/Spinner;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/widget/Spinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 728
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    iput-boolean v1, v0, Lmiuix/appcompat/widget/Spinner$SavedState;->mShowDropdown:Z

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 348
    invoke-super {p0, p1}, Landroid/widget/Spinner;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_e

    .line 350
    invoke-virtual {p0, v2}, Lmiuix/appcompat/widget/Spinner;->enableActivatedState(Z)V

    .line 354
    :cond_e
    invoke-virtual {p0}, Landroid/widget/Spinner;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_33

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_28

    invoke-virtual {p0}, Landroid/widget/Spinner;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 356
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_33

    :cond_2f
    const/4 p1, 0x0

    .line 357
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->enableActivatedState(Z)V

    :cond_33
    return v0
.end method

.method public performClick()Z
    .registers 2

    const/4 v0, 0x0

    .line 617
    invoke-virtual {p0, v0, v0}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    move-result v0

    return v0
.end method

.method public performClick(FF)Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    invoke-virtual {p0}, Landroid/widget/Spinner;->isClickable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner;->superViewPerformClick()Z

    move-result v0

    if-eqz v0, :cond_e

    return v1

    .line 601
    :cond_e
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_2c

    .line 603
    invoke-interface {v0}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 604
    invoke-virtual {p0}, Landroid/widget/Spinner;->isActivated()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0, v1}, Lmiuix/appcompat/widget/Spinner;->enableActivatedState(Z)V

    .line 605
    :cond_21
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner;->showPopup(FF)V

    .line 606
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_BUTTON_SMALL:I

    sget p2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_LIGHT:I

    invoke-static {p0, p1, p2}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    :cond_2b
    return v1

    .line 612
    :cond_2c
    invoke-super {p0}, Landroid/widget/Spinner;->performClick()Z

    move-result p1

    return p1
.end method

.method public setActivated(Z)V
    .registers 3

    .line 321
    invoke-virtual {p0}, Landroid/widget/Spinner;->isClickable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 324
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setActivated(Z)V

    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .line 88
    check-cast p1, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5

    .line 492
    iget-boolean v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopupSet:Z

    if-nez v0, :cond_7

    .line 493
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mTempAdapter:Landroid/widget/SpinnerAdapter;

    return-void

    .line 497
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 499
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DialogPopup;

    if-eqz v1, :cond_21

    .line 500
    new-instance v1, Lmiuix/appcompat/widget/Spinner$DialogPopupAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiuix/appcompat/widget/Spinner$DialogPopupAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v0, v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_35

    .line 501
    :cond_21
    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_35

    .line 502
    new-instance v1, Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;

    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lmiuix/appcompat/widget/Spinner$DropDownPopupAdapter;-><init>(Landroid/widget/SpinnerAdapter;Landroid/content/res/Resources$Theme;)V

    invoke-interface {v0, v1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 504
    :cond_35
    :goto_35
    new-instance p1, Lmiuix/appcompat/widget/Spinner$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lmiuix/appcompat/widget/Spinner$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setDimAmount(F)V
    .registers 4

    .line 514
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_b

    .line 515
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setDimAmount(F)V

    :cond_b
    return-void
.end method

.method public setDoubleLineContentAdapter(Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;)V
    .registers 6

    .line 484
    new-instance v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiuix/appcompat/R$layout;->miuix_appcompat_simple_spinner_layout:I

    new-instance v3, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;

    invoke-direct {v3, p0}, Lmiuix/appcompat/widget/Spinner$SpinnerCheckedProvider;-><init>(Lmiuix/appcompat/widget/Spinner;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setDropDownGravity(I)V
    .registers 3

    .line 439
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_7

    .line 440
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setDropDownGravity(I)V

    :cond_7
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .registers 3

    .line 430
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_d

    .line 431
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setHorizontalOriginalOffset(I)V

    .line 432
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setHorizontalOffset(I)V

    goto :goto_10

    .line 434
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    :goto_10
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .registers 3

    .line 412
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_8

    .line 413
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setVerticalOffset(I)V

    goto :goto_b

    .line 415
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    :goto_b
    return-void
.end method

.method public setDropDownWidth(I)V
    .registers 3

    .line 467
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_7

    .line 468
    iput p1, p0, Lmiuix/appcompat/widget/Spinner;->mDropDownWidth:I

    goto :goto_a

    .line 470
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    :goto_a
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .line 329
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 330
    iget-boolean v0, p0, Lmiuix/appcompat/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v0, :cond_a

    .line 331
    invoke-direct {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setChildEnabled(Z)V

    :cond_a
    return-void
.end method

.method public setFenceView(Landroid/view/View;)V
    .registers 4

    .line 626
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_b

    .line 627
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceView(Landroid/view/View;)V

    :cond_b
    return-void
.end method

.method public setOnDialogPopupItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 4

    .line 678
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DialogPopup;

    if-eqz v1, :cond_b

    .line 679
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DialogPopup;

    # invokes: Lmiuix/appcompat/widget/Spinner$DialogPopup;->setOnPopupItemClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    invoke-static {v0, p1}, Lmiuix/appcompat/widget/Spinner$DialogPopup;->access$300(Lmiuix/appcompat/widget/Spinner$DialogPopup;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_b
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 4

    .line 669
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_b

    .line 670
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    # invokes: Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setOnPopupItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    invoke-static {v0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->access$200(Lmiuix/appcompat/widget/Spinner$DropdownPopup;Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_b
    return-void
.end method

.method public setOnSpinnerDismissListener(Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;)V
    .registers 2

    .line 555
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner;->mOnSpinnerDismissListener:Lmiuix/appcompat/widget/Spinner$OnSpinnerDismissListener;

    return-void
.end method

.method public setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    .line 389
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_8

    .line 390
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_b

    .line 392
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_b
    return-void
.end method

.method public setPopupBackgroundResource(I)V
    .registers 3

    .line 398
    invoke-virtual {p0}, Lmiuix/appcompat/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .registers 3

    .line 645
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_8

    .line 646
    invoke-interface {v0, p1}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 648
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    :goto_b
    return-void
.end method

.method public setSelection(I)V
    .registers 2

    .line 659
    iput p1, p0, Lmiuix/appcompat/widget/Spinner;->mSelectedPosition:I

    .line 660
    invoke-super {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 p1, 0x0

    .line 661
    invoke-virtual {p0, p1}, Lmiuix/appcompat/widget/Spinner;->enableActivatedState(Z)V

    return-void
.end method

.method public setWindowManagerFlags(I)V
    .registers 4

    .line 520
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    instance-of v1, v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    if-eqz v1, :cond_b

    .line 521
    check-cast v0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;

    invoke-virtual {v0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setWindowManagerFlags(I)V

    :cond_b
    return-void
.end method

.method showPopup()V
    .registers 4

    .line 714
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->show(II)V

    return-void
.end method

.method showPopup(FF)V
    .registers 6

    .line 718
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner;->mPopup:Lmiuix/appcompat/widget/Spinner$SpinnerPopup;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextDirection()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getTextAlignment()I

    move-result v2

    invoke-interface {v0, v1, v2, p1, p2}, Lmiuix/appcompat/widget/Spinner$SpinnerPopup;->show(IIFF)V

    return-void
.end method
