.class Lmiuix/appcompat/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;,
        Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field iconHeight:I

.field iconWidth:I

.field mAdapter:Landroid/widget/ListAdapter;

.field mAsyncInflatePanelEnabled:Z

.field mButtonForceVertical:Z

.field mCancelable:Z

.field mCheckBoxMessage:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field mCheckedItems:[Z

.field mComment:Ljava/lang/CharSequence;

.field mConfigurationChangedListener:Lmiuix/appcompat/app/AlertDialog$OnConfigurationChangedListener;

.field final mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mCustomTitleView:Landroid/view/View;

.field mDiscardImeAnimEnabled:Z

.field mEnableDialogImmersive:Z

.field mEnableEnterAnim:Z

.field mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHapticFeedbackEnabled:Z

.field mIcon:Landroid/graphics/drawable/Drawable;

.field mIconAttrId:I

.field mIconId:I

.field final mInflater:Landroid/view/LayoutInflater;

.field mIsChecked:Z

.field mIsCheckedColumn:Ljava/lang/String;

.field mIsMultiChoice:Z

.field mIsSingleChoice:Z

.field mItems:[Ljava/lang/CharSequence;

.field mItemsProvider:Lmiuix/appcompat/app/AccessibilityDelegateProvider;

.field mLabelColumn:Ljava/lang/String;

.field mLiteVersion:I

.field mMessage:Ljava/lang/CharSequence;

.field mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNegativeButtonText:Ljava/lang/CharSequence;

.field mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mNeutralButtonText:Ljava/lang/CharSequence;

.field mNonImmersiveDialogHeight:I

.field mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field mOnDialogShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field mOnPrepareListViewListener:Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

.field mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

.field mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

.field mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field mPositiveButtonText:Ljava/lang/CharSequence;

.field mPreferLandscape:Z

.field mPrimaryButtonFirstEnabled:Z

.field mSmallIcon:Z

.field mTitle:Ljava/lang/CharSequence;

.field mUseForceFlipCutout:Z

.field mView:Landroid/view/View;

.field mViewLayoutResId:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 3164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3084
    iput v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 3086
    iput v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    const/4 v1, -0x1

    .line 3114
    iput v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    .line 3145
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPrimaryButtonFirstEnabled:Z

    .line 3165
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 3166
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    .line 3167
    sget-boolean v2, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz v2, :cond_1e

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    move v2, v1

    goto :goto_1f

    :cond_1e
    move v2, v0

    .line 3168
    :goto_1f
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    move-result v3

    if-nez v3, :cond_29

    if-nez v2, :cond_29

    move v2, v1

    goto :goto_2a

    :cond_29
    move v2, v0

    :goto_2a
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableDialogImmersive:Z

    const/4 v2, -0x2

    .line 3169
    iput v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNonImmersiveDialogHeight:I

    .line 3170
    invoke-static {}, Lmiuix/device/DeviceUtils;->getMiuiLiteVersion()I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLiteVersion:I

    if-gez v2, :cond_39

    .line 3172
    iput v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLiteVersion:I

    .line 3174
    :cond_39
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableEnterAnim:Z

    .line 3175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    .line 3176
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Lmiuix/appcompat/app/AlertController;)V
    .registers 14

    .line 3303
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p1, Lmiuix/appcompat/app/AlertController;->mListLayout:I

    const/4 v2, 0x0

    .line 3304
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 3307
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_34

    .line 3308
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_25

    .line 3309
    new-instance v1, Lmiuix/appcompat/app/AlertController$AlertParams$2;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v6, p1, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    const v7, 0x1020014

    iget-object v8, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v3, v1

    move-object v4, p0

    move-object v9, v0

    invoke-direct/range {v3 .. v9}, Lmiuix/appcompat/app/AlertController$AlertParams$2;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/widget/ListView;)V

    goto :goto_75

    .line 3326
    :cond_25
    new-instance v1, Lmiuix/appcompat/app/AlertController$AlertParams$3;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v8, v0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lmiuix/appcompat/app/AlertController$AlertParams$3;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/widget/ListView;Lmiuix/appcompat/app/AlertController;)V

    goto :goto_75

    .line 3360
    :cond_34
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_3f

    .line 3361
    iget v1, p1, Lmiuix/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 3362
    sget-object v3, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->CHOICE_SINGLE:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    :goto_3c
    move v7, v1

    move-object v11, v3

    goto :goto_44

    .line 3364
    :cond_3f
    iget v1, p1, Lmiuix/appcompat/app/AlertController;->mListItemLayout:I

    .line 3365
    sget-object v3, Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;->DEFAULT:Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;

    goto :goto_3c

    .line 3368
    :goto_44
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v3, 0x1020014

    if-eqz v1, :cond_61

    .line 3369
    new-instance v1, Lmiuix/appcompat/app/AlertController$AlertParams$4;

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    filled-new-array {v3}, [I

    move-result-object v10

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lmiuix/appcompat/app/AlertController$AlertParams$4;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILmiuix/appcompat/app/AlertController$AlertParams$ItemType;)V

    goto :goto_75

    .line 3382
    :cond_61
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_66

    goto :goto_75

    .line 3385
    :cond_66
    new-instance v1, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v1, v4, v7, v3, v5}, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 3386
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;->setItemsProvider(Lmiuix/appcompat/app/AccessibilityDelegateProvider;)V

    .line 3387
    invoke-virtual {v1, v11}, Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;->setItemType(Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;)V

    .line 3392
    :goto_75
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v2, :cond_7c

    .line 3393
    invoke-interface {v2, v0}, Lmiuix/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 3399
    :cond_7c
    iput-object v1, p1, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    .line 3400
    iget v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    iput v1, p1, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    .line 3402
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_8f

    .line 3403
    new-instance v1, Lmiuix/appcompat/app/AlertController$AlertParams$5;

    invoke-direct {v1, p0, p1}, Lmiuix/appcompat/app/AlertController$AlertParams$5;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_9b

    .line 3412
    :cond_8f
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_9b

    .line 3413
    new-instance v1, Lmiuix/appcompat/app/AlertController$AlertParams$6;

    invoke-direct {v1, p0, v0, p1}, Lmiuix/appcompat/app/AlertController$AlertParams$6;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams;Landroid/widget/ListView;Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3426
    :cond_9b
    :goto_9b
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_a2

    .line 3427
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3430
    :cond_a2
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_ab

    const/4 v1, 0x1

    .line 3431
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    goto :goto_b3

    .line 3432
    :cond_ab
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_b3

    const/4 v1, 0x2

    .line 3433
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 3435
    :cond_b3
    :goto_b3
    iput-object v0, p1, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method private static getDefaultAccessibilityDelegateCompat(Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;)Landroidx/core/view/AccessibilityDelegateCompat;
    .registers 2

    .line 3271
    new-instance v0, Lmiuix/appcompat/app/AlertController$AlertParams$1;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertController$AlertParams$1;-><init>(Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;)V

    return-object v0
.end method

.method static setAccessibilityDelegate(Landroid/view/View;Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;Lmiuix/appcompat/app/AccessibilityDelegateProvider;)V
    .registers 4

    if-eqz p2, :cond_7

    .line 3255
    invoke-interface {p2}, Lmiuix/appcompat/app/AccessibilityDelegateProvider;->getAccessibilityDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object p1

    goto :goto_21

    .line 3257
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AlertController"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    invoke-static {p1}, Lmiuix/appcompat/app/AlertController$AlertParams;->getDefaultAccessibilityDelegateCompat(Lmiuix/appcompat/app/AlertController$AlertParams$ItemType;)Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object p1

    :goto_21
    if-eqz p1, :cond_26

    .line 3261
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_26
    return-void
.end method


# virtual methods
.method apply(Lmiuix/appcompat/app/AlertController;)V
    .registers 6

    .line 3180
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 3181
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto :goto_3b

    .line 3183
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_f

    .line 3184
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 3186
    :cond_f
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 3187
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 3189
    :cond_16
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_1d

    .line 3190
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setIcon(I)V

    .line 3192
    :cond_1d
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_28

    .line 3193
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setIcon(I)V

    .line 3195
    :cond_28
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mSmallIcon:Z

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    .line 3196
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setUseSmallIcon(Z)V

    .line 3198
    :cond_30
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->iconWidth:I

    if-eqz v0, :cond_3b

    iget v1, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->iconHeight:I

    if-eqz v1, :cond_3b

    .line 3199
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertController;->setIconSize(II)V

    .line 3202
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_42

    .line 3203
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 3205
    :cond_42
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mComment:Ljava/lang/CharSequence;

    if-eqz v0, :cond_49

    .line 3206
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setComment(Ljava/lang/CharSequence;)V

    .line 3208
    :cond_49
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    const/4 v2, -0x1

    .line 3209
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 3212
    :cond_54
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5e

    const/4 v2, -0x2

    .line 3213
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 3216
    :cond_5e
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_68

    const/4 v2, -0x3

    .line 3217
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v2, v0, v3, v1}, Lmiuix/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 3220
    :cond_68
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_76

    .line 3221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mExtraButtonList:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    # setter for: Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;
    invoke-static {p1, v0}, Lmiuix/appcompat/app/AlertController;->access$502(Lmiuix/appcompat/app/AlertController;Ljava/util/List;)Ljava/util/List;

    .line 3225
    :cond_76
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_82

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_82

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_85

    .line 3226
    :cond_82
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController$AlertParams;->createListView(Lmiuix/appcompat/app/AlertController;)V

    .line 3228
    :cond_85
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8d

    .line 3229
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_94

    .line 3230
    :cond_8d
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_94

    .line 3231
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setView(I)V

    .line 3234
    :cond_94
    :goto_94
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9d

    .line 3235
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mIsChecked:Z

    invoke-virtual {p1, v2, v0}, Lmiuix/appcompat/app/AlertController;->setCheckBox(ZLjava/lang/CharSequence;)V

    .line 3237
    :cond_9d
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mHapticFeedbackEnabled:Z

    iput-boolean v0, p1, Lmiuix/appcompat/app/AlertController;->mHapticFeedbackEnabled:Z

    .line 3238
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableDialogImmersive:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setEnableImmersive(Z)V

    .line 3239
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mNonImmersiveDialogHeight:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setNonImmersiveDialogHeight(I)V

    .line 3240
    iget v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mLiteVersion:I

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setLiteVersion(I)V

    .line 3241
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPreferLandscape:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setPreferLandscape(Z)V

    .line 3242
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mButtonForceVertical:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setButtonForceVertical(Z)V

    .line 3243
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mPrimaryButtonFirstEnabled:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setPrimaryButtonFirstEnabled(Z)V

    .line 3244
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mAsyncInflatePanelEnabled:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setAsyncInflatePanelEnable(Z)V

    .line 3245
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mDiscardImeAnimEnabled:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setDiscardImeAnimEnabled(Z)V

    .line 3246
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertController;->setPanelSizeChangedListener(Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;)V

    .line 3247
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertController;->setConfigurationChangedListener(Lmiuix/appcompat/app/AlertDialog$OnConfigurationChangedListener;)V

    .line 3248
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mEnableEnterAnim:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setEnableEnterAnim(Z)V

    .line 3249
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController$AlertParams;->mUseForceFlipCutout:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertController;->setUseForceFlipCutout(Z)V

    return-void
.end method
