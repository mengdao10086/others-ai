.class Lmiuix/preference/PreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lmiuix/animation/internal/BlinkStateObserver;
.implements Lmiuix/container/ExtraPaddingObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    }
.end annotation


# static fields
.field private static final STATES_TAGS:[I

.field private static final STATE_SET_FIRST:[I

.field private static final STATE_SET_LAST:[I

.field private static final STATE_SET_MIDDLE:[I

.field private static final STATE_SET_NO_LINE:[I

.field private static final STATE_SET_NO_TITLE:[I

.field private static final STATE_SET_SINGLE:[I


# instance fields
.field private final mAnimatorPreferenceGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public mCardMarginEnd:I

.field public mCardMarginStart:I

.field private mCheckableFilterColorChecked:I

.field private mCheckableFilterColorNormal:I

.field private mClipPaint:Landroid/graphics/Paint;

.field private mCurrentItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

.field private mExtraHorizontalPadding:I

.field private mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

.field private mHighlightItemView:Landroid/view/View;

.field private mHighlightPosition:I

.field private mIsDisableAllCard:Z

.field private mIsEnableCardStyle:Z

.field private mItemSelectable:Z

.field private mItemTouchOnDownListener:Landroid/view/View$OnTouchListener;

.field private mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mMaskRadius:I

.field private mNeedCancelHighlightRequest:Z

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

.field private mPreferenceHighLightChildRadius:I

.field private mRadioSetItemPaddingEndExtra:I

.field private mRadioSetItemPaddingStartExtra:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectedPreference:Landroidx/preference/Preference;

.field private mTempBgPadding:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$U2pa2MuQFuheRexRakl3AHdQcRc(Lmiuix/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceViewHolder;I)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lmiuix/preference/PreferenceGroupAdapter;->lambda$onBindViewHolder$0(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 8

    .line 61
    sget v6, Lmiuix/preference/R$attr;->state_no_title:I

    sget v7, Lmiuix/preference/R$attr;->state_no_line:I

    const v0, 0x10100a3

    const v1, 0x10100a4

    const v2, 0x10100a5

    const v3, 0x10100a6

    move v4, v6

    move v5, v7

    filled-new-array/range {v0 .. v5}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    .line 71
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    const v0, 0x10100a3

    .line 81
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    const v0, 0x10100a4

    .line 82
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    const v0, 0x10100a5

    .line 83
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    const v0, 0x10100a6

    .line 84
    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    .line 85
    filled-new-array {v6}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    .line 86
    filled-new-array {v7}, [I

    move-result-object v0

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_LINE:[I

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;ZI)V
    .registers 6

    .line 142
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 89
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lmiuix/preference/PreferenceGroupAdapter$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingEndExtra:I

    .line 104
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    const/4 v1, -0x1

    .line 105
    iput v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v1, 0x0

    .line 106
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    .line 107
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    .line 109
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 111
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 112
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$2;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$2;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnDownListener:Landroid/view/View$OnTouchListener;

    .line 123
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemSelectable:Z

    .line 125
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    .line 126
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    .line 127
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    .line 143
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/PreferenceGroupAdapter;->init(Landroidx/preference/PreferenceGroup;ZI)V

    return-void
.end method

.method private ableToUseFolmeAnim(Landroidx/preference/Preference;)Z
    .registers 3

    .line 811
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_6

    const/4 p1, 0x0

    return p1

    .line 814
    :cond_6
    instance-of v0, p1, Lmiuix/preference/FolmeAnimationController;

    if-eqz v0, :cond_11

    .line 815
    check-cast p1, Lmiuix/preference/FolmeAnimationController;

    invoke-interface {p1}, Lmiuix/preference/FolmeAnimationController;->isTouchAnimationEnable()Z

    move-result p1

    return p1

    :cond_11
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic access$002(Lmiuix/preference/PreferenceGroupAdapter;[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;)[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    .registers 2

    .line 59
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    return-object p1
.end method

.method private getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1043
    :goto_6
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 1044
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 1045
    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1046
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1c
    return-object v0
.end method

.method private getPreferenceDescriptor(Landroidx/preference/Preference;I)I
    .registers 11

    if-ltz p2, :cond_19

    .line 829
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    array-length v1, v0

    if-ge p2, v1, :cond_19

    .line 830
    aget-object v1, v0, p2

    if-nez v1, :cond_12

    .line 831
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    aput-object v1, v0, p2

    .line 833
    :cond_12
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    if-nez v0, :cond_134

    .line 836
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_134

    .line 838
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v1

    .line 839
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 p1, -0x1

    return p1

    .line 844
    :cond_2e
    instance-of v2, v0, Landroidx/preference/PreferenceScreen;

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_7c

    invoke-static {p1}, Lmiuix/preference/utils/PreferenceLayoutUtils;->isDynamicGroupItem(Landroidx/preference/Preference;)Z

    move-result v7

    if-eqz v7, :cond_7c

    .line 845
    check-cast p1, Lmiuix/preference/PreferencedynamicGroupController;

    invoke-interface {p1}, Lmiuix/preference/PreferencedynamicGroupController;->getGroupItemType()I

    move-result p1

    if-eq p1, v6, :cond_70

    if-eq p1, v5, :cond_64

    if-eq p1, v4, :cond_58

    if-eq p1, v3, :cond_4c

    goto/16 :goto_134

    .line 859
    :cond_4c
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, p1, p2

    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    iput-object v0, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 860
    iput v3, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    goto/16 :goto_134

    .line 855
    :cond_58
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, p1, p2

    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    iput-object v0, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 856
    iput v4, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    goto/16 :goto_134

    .line 851
    :cond_64
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, p1, p2

    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    iput-object v0, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 852
    iput v5, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    goto/16 :goto_134

    .line 847
    :cond_70
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, p1, p2

    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    iput-object v0, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 848
    iput v6, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    goto/16 :goto_134

    .line 867
    :cond_7c
    instance-of v7, p1, Landroidx/preference/PreferenceGroup;

    if-nez v7, :cond_9f

    if-nez v2, :cond_94

    instance-of v2, v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-nez v2, :cond_8e

    instance-of v2, v0, Lmiuix/preference/SingleChoicePreferenceCategory;

    if-nez v2, :cond_8e

    instance-of v0, v0, Lmiuix/preference/MultiChoicePreferenceCategory;

    if-eqz v0, :cond_9f

    .line 868
    :cond_8e
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedCardGroup(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 869
    :cond_94
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    .line 871
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p2, v0, p2

    iput-object p1, p2, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 872
    iput v6, p2, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return v6

    .line 874
    :cond_9f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v6, :cond_aa

    .line 875
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    move v3, v6

    goto :goto_d1

    .line 877
    :cond_aa
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    if-nez v0, :cond_ba

    .line 878
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    move v3, v5

    goto :goto_d1

    .line 880
    :cond_ba
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    if-nez v0, :cond_ce

    .line 881
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    goto :goto_d1

    .line 884
    :cond_ce
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    move v3, v4

    .line 887
    :goto_d1
    instance-of v1, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_12c

    .line 888
    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 891
    instance-of v1, p1, Lmiuix/preference/PreferenceCategory;

    if-eqz v1, :cond_eb

    .line 892
    check-cast p1, Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->isDividerLineNeeded()Z

    move-result v1

    xor-int/2addr v1, v6

    .line 895
    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->hasTitle()Z

    move-result p1

    if-nez p1, :cond_e9

    goto :goto_f4

    :cond_e9
    move v6, v2

    goto :goto_f4

    .line 899
    :cond_eb
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    move v1, v2

    :goto_f4
    if-nez v1, :cond_f8

    if-eqz v6, :cond_12c

    :cond_f8
    if-eqz v1, :cond_104

    .line 906
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_LINE:[I

    array-length v1, p1

    new-array v1, v1, [I

    .line 907
    array-length v4, p1

    invoke-static {p1, v2, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_106

    .line 909
    :cond_104
    new-array v1, v2, [I

    :goto_106
    if-eqz v6, :cond_112

    .line 912
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    array-length v4, p1

    new-array v4, v4, [I

    .line 913
    array-length v5, p1

    invoke-static {p1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_114

    .line 915
    :cond_112
    new-array v4, v2, [I

    .line 917
    :goto_114
    array-length p1, v1

    array-length v5, v4

    add-int/2addr p1, v5

    array-length v5, v0

    add-int/2addr p1, v5

    new-array p1, p1, [I

    .line 918
    array-length v5, v1

    invoke-static {v1, v2, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    array-length v5, v1

    array-length v6, v4

    invoke-static {v4, v2, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    array-length v1, v1

    array-length v4, v4

    add-int/2addr v1, v4

    array-length v4, v0

    invoke-static {v0, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    .line 928
    :cond_12c
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, p1, p2

    iput-object v0, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 929
    iput v3, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    .line 933
    :cond_134
    :goto_134
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, p1, p2

    iget p1, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return p1
.end method

.method private handleAccessibility(Landroidx/preference/Preference;Landroidx/preference/PreferenceViewHolder;)V
    .registers 5

    .line 465
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1e

    const v0, 0x1020016

    .line 466
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_60

    .line 467
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_60

    const/4 p1, 0x1

    .line 469
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    goto :goto_60

    .line 474
    :cond_1e
    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x2

    if-eqz v0, :cond_40

    const v0, 0x1020001

    .line 476
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 478
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 480
    :cond_2f
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->isCheckBoxPreferenceExcluded(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 481
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$3;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/PreferenceGroupAdapter$3;-><init>(Lmiuix/preference/PreferenceGroupAdapter;Landroidx/preference/Preference;)V

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_60

    .line 494
    :cond_40
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_60

    const v0, 0x1020040

    .line 496
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 498
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 501
    :cond_50
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->isCheckBoxPreferenceExcluded(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 502
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$4;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/PreferenceGroupAdapter$4;-><init>(Lmiuix/preference/PreferenceGroupAdapter;Landroidx/preference/Preference;)V

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_60
    :goto_60
    return-void
.end method

.method private init(Landroidx/preference/PreferenceGroup;ZI)V
    .registers 4

    .line 147
    iput-boolean p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    const/4 p2, -0x1

    if-ne p2, p3, :cond_7

    const/4 p2, 0x1

    goto :goto_8

    :cond_7
    const/4 p2, 0x0

    .line 148
    :goto_8
    iput-boolean p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsDisableAllCard:Z

    .line 149
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result p2

    new-array p2, p2, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    iput-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 150
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->initAttr(Landroid/content/Context;)V

    return-void
.end method

.method private isArrowRightVisible(Landroidx/preference/Preference;)Z
    .registers 3

    .line 821
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 822
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 823
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1d

    :cond_16
    instance-of p1, p1, Landroidx/preference/DialogPreference;

    if-eqz p1, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p1, 0x1

    :goto_1e
    return p1
.end method

.method private isCheckBoxPreferenceExcluded(Landroidx/preference/Preference;)Z
    .registers 3

    .line 519
    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    if-nez v0, :cond_f

    instance-of v0, p1, Lmiuix/preference/SingleChoicePreference;

    if-nez v0, :cond_f

    instance-of p1, p1, Lmiuix/preference/MultiChoicePreference;

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private isNeedCardGroup(Landroidx/preference/Preference;)Z
    .registers 4

    .line 944
    iget-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-eqz v0, :cond_37

    .line 945
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    .line 946
    instance-of v1, v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-eqz v1, :cond_17

    instance-of v1, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz v1, :cond_17

    .line 947
    check-cast v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->isNeedCardGroup()Z

    move-result p1

    return p1

    .line 948
    :cond_17
    instance-of v1, v0, Lmiuix/preference/SingleChoicePreferenceCategory;

    if-eqz v1, :cond_26

    instance-of v1, p1, Lmiuix/preference/SingleChoicePreference;

    if-eqz v1, :cond_26

    .line 949
    check-cast v0, Lmiuix/preference/SingleChoicePreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory;->getCardGroupEnabled()Z

    move-result p1

    return p1

    .line 950
    :cond_26
    instance-of v1, v0, Lmiuix/preference/MultiChoicePreferenceCategory;

    if-eqz v1, :cond_35

    instance-of p1, p1, Lmiuix/preference/MultiChoicePreference;

    if-eqz p1, :cond_35

    .line 951
    check-cast v0, Lmiuix/preference/MultiChoicePreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/MultiChoicePreferenceCategory;->getCardGroupEnabled()Z

    move-result p1

    return p1

    :cond_35
    const/4 p1, 0x1

    return p1

    :cond_37
    const/4 p1, 0x0

    return p1
.end method

.method private isNeedSetOutline(ILandroidx/preference/Preference;)Z
    .registers 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_11

    .line 219
    iget-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-eqz p1, :cond_11

    instance-of p1, p2, Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_11

    .line 220
    invoke-direct {p0, p2}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedSetOutlineForItem(Landroidx/preference/Preference;)Z

    move-result p1

    if-nez p1, :cond_22

    :cond_11
    instance-of p1, p2, Lmiuix/preference/RadioButtonPreference;

    if-nez p1, :cond_22

    if-eqz p2, :cond_20

    .line 222
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    instance-of p1, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz p1, :cond_20

    goto :goto_22

    :cond_20
    const/4 p1, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p1, 0x1

    :goto_23
    return p1
.end method

.method private isNeedSetOutlineForItem(Landroidx/preference/Preference;)Z
    .registers 3

    .line 212
    instance-of v0, p1, Lmiuix/preference/PreferenceStyle;

    if-eqz v0, :cond_b

    .line 213
    check-cast p1, Lmiuix/preference/PreferenceStyle;

    invoke-interface {p1}, Lmiuix/preference/PreferenceStyle;->enabledCardStyle()Z

    move-result p1

    return p1

    .line 215
    :cond_b
    iget-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    return p1
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroidx/preference/PreferenceViewHolder;I)V
    .registers 6

    .line 408
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 409
    instance-of v1, v0, Lcom/miui/support/drawable/CardStateDrawable;

    if-eqz v1, :cond_1a

    .line 410
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/miui/support/drawable/CardStateDrawable;

    iget v2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    invoke-virtual {v1, v2, p2}, Lcom/miui/support/drawable/CardStateDrawable;->setRadiusMode(II)V

    .line 411
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    return-void
.end method

.method private setHighlightBlinkRadius(ILandroidx/preference/Preference;)V
    .registers 6

    .line 620
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-le v0, v1, :cond_d

    .line 621
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {p1, v2}, Lmiuix/animation/controller/FolmeBlink;->setBlinkRadius(F)Lmiuix/animation/IBlinkStyle;

    goto :goto_3b

    .line 623
    :cond_d
    invoke-direct {p0, p1, p2}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedSetOutline(ILandroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_36

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1d

    .line 629
    iget p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    int-to-float v2, p1

    :cond_19
    move p1, v2

    move p2, p1

    move v0, p2

    goto :goto_30

    :cond_1d
    const/4 p2, 0x2

    if-ne p1, p2, :cond_27

    .line 631
    iget p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    int-to-float p1, p1

    move p2, v2

    move v0, p2

    move v2, p1

    goto :goto_30

    :cond_27
    const/4 p2, 0x4

    if-ne p1, p2, :cond_19

    .line 633
    iget p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    int-to-float p1, p1

    move p2, p1

    move v0, p2

    move p1, v2

    .line 635
    :goto_30
    iget-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {v1, v2, p1, p2, v0}, Lmiuix/animation/controller/FolmeBlink;->setBlinkRadius(FFFF)Lmiuix/animation/IBlinkStyle;

    goto :goto_3b

    .line 637
    :cond_36
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {p1, v2}, Lmiuix/animation/controller/FolmeBlink;->setBlinkRadius(F)Lmiuix/animation/IBlinkStyle;

    :goto_3b
    return-void
.end method

.method private setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lcom/miui/support/drawable/CardStateDrawable;Landroidx/preference/Preference;)Z
    .registers 10

    .line 531
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    .line 532
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_62

    .line 533
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CardView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 534
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 535
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 537
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 538
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_48

    .line 539
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 540
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    .line 541
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v5

    .line 542
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 543
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    .line 545
    :cond_48
    instance-of v0, p3, Lmiuix/preference/PreferenceStyle;

    if-eqz v0, :cond_58

    check-cast p3, Lmiuix/preference/PreferenceStyle;

    invoke-interface {p3}, Lmiuix/preference/PreferenceStyle;->enabledCardStyle()Z

    move-result p3

    if-eqz p3, :cond_58

    .line 546
    invoke-virtual {p2, v1}, Lcom/miui/support/drawable/CardStateDrawable;->setRadius(I)V

    goto :goto_5d

    .line 548
    :cond_58
    iget p3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mPreferenceHighLightChildRadius:I

    invoke-virtual {p2, p3}, Lcom/miui/support/drawable/CardStateDrawable;->setRadius(I)V

    .line 550
    :goto_5d
    invoke-virtual {p2, v2, v3, v4, p1}, Lcom/miui/support/drawable/CardStateDrawable;->setInset(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_62
    return v1
.end method

.method private startHighlight(Landroid/view/View;ILandroidx/preference/Preference;)V
    .registers 6

    .line 604
    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 605
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-nez v0, :cond_31

    .line 606
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeBlink;

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    const/4 v1, 0x3

    .line 607
    invoke-virtual {v0, v1}, Lmiuix/animation/controller/FolmeBlink;->setTintMode(I)Lmiuix/animation/IBlinkStyle;

    .line 609
    invoke-direct {p0, p2, p3}, Lmiuix/preference/PreferenceGroupAdapter;->setHighlightBlinkRadius(ILandroidx/preference/Preference;)V

    .line 610
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {p2, p0}, Lmiuix/animation/controller/FolmeBlink;->attach(Lmiuix/animation/internal/BlinkStateObserver;)V

    .line 611
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    const/4 p3, 0x0

    new-array p3, p3, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p2, v1, p3}, Lmiuix/animation/controller/FolmeBlink;->startBlink(I[Lmiuix/animation/base/AnimConfig;)V

    .line 612
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    .line 614
    :cond_31
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3a

    .line 615
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCurrentItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_3a
    return-void
.end method


# virtual methods
.method public checkHighlight(Landroidx/preference/PreferenceViewHolder;IILandroidx/preference/Preference;)V
    .registers 6

    .line 582
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 583
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_21

    .line 584
    iget-boolean p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    if-nez p2, :cond_1d

    .line 585
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    return-void

    .line 588
    :cond_19
    invoke-direct {p0, p1, p3, p4}, Lmiuix/preference/PreferenceGroupAdapter;->startHighlight(Landroid/view/View;ILandroidx/preference/Preference;)V

    goto :goto_32

    :cond_1d
    const/4 p1, 0x0

    .line 590
    iput-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    goto :goto_32

    .line 592
    :cond_21
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget p3, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 593
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    :cond_32
    :goto_32
    return-void
.end method

.method public clearPreferenceGroups()V
    .registers 2

    .line 1001
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1002
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_d
    return-void
.end method

.method public getAnimatorPreferenceGroups()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 997
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    return-object v0
.end method

.method getPositionType(I)I
    .registers 3

    .line 973
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p1, v0, p1

    iget p1, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return p1
.end method

.method public initAttr(Landroid/content/Context;)V
    .registers 4

    .line 154
    sget v0, Lmiuix/preference/R$attr;->preferenceRadioSetChildExtraPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    .line 155
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterChecked:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    .line 156
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_high_light_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mPreferenceHighLightChildRadius:I

    .line 161
    sget v0, Lmiuix/preference/R$attr;->preferenceCardGroupMarginStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    .line 162
    sget v0, Lmiuix/preference/R$attr;->preferenceCardGroupMarginEnd:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    return-void
.end method

.method public isHighlightRequested()Z
    .registers 3

    .line 599
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 960
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 961
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 962
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 229
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v9, v1, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v9, :cond_1b

    .line 231
    check-cast v1, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout;->getTemplate()Lmiuix/flexible/template/IHyperCellTemplate;

    move-result-object v1

    .line 232
    instance-of v2, v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    if-eqz v2, :cond_1b

    .line 233
    check-cast v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    invoke-virtual {v1, v7}, Lmiuix/preference/flexible/AbstractBaseTemplate;->storeVisibilityBeforeUpdate(Landroidx/preference/PreferenceViewHolder;)V

    .line 237
    :cond_1b
    invoke-super/range {p0 .. p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 238
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v1, v10}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 239
    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v11

    .line 240
    instance-of v1, v11, Lmiuix/preference/PreferenceAccessibility;

    if-eqz v1, :cond_35

    move-object v1, v11

    check-cast v1, Lmiuix/preference/PreferenceAccessibility;

    invoke-interface {v1}, Lmiuix/preference/PreferenceAccessibility;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 241
    :cond_35
    invoke-direct {v0, v11, v7}, Lmiuix/preference/PreferenceGroupAdapter;->handleAccessibility(Landroidx/preference/Preference;Landroidx/preference/PreferenceViewHolder;)V

    .line 243
    :cond_38
    instance-of v12, v11, Lmiuix/preference/DropDownPreference;

    if-nez v12, :cond_42

    .line 245
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    :cond_42
    iget-boolean v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mItemSelectable:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_54

    .line 248
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mSelectedPreference:Landroidx/preference/Preference;

    if-ne v11, v3, :cond_4f

    move v3, v2

    goto :goto_50

    :cond_4f
    move v3, v10

    :goto_50
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_59

    .line 250
    :cond_54
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setActivated(Z)V

    .line 253
    :goto_59
    iget-object v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v1, v1, v8

    if-eqz v1, :cond_63

    iget v1, v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    :goto_61
    move v13, v1

    goto :goto_65

    :cond_63
    const/4 v1, -0x1

    goto :goto_61

    .line 255
    :goto_65
    invoke-direct {v0, v11, v8}, Lmiuix/preference/PreferenceGroupAdapter;->getPreferenceDescriptor(Landroidx/preference/Preference;I)I

    move-result v14

    .line 256
    iget-boolean v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mIsDisableAllCard:Z

    const/16 v15, 0x1f

    if-nez v1, :cond_9e

    invoke-direct {v0, v14, v11}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedSetOutline(ILandroidx/preference/Preference;)Z

    move-result v1

    if-eqz v1, :cond_9e

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v15, :cond_9e

    .line 257
    iget v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    int-to-float v3, v1

    if-eq v13, v14, :cond_80

    move v4, v2

    goto :goto_81

    :cond_80
    move v4, v10

    .line 258
    :goto_81
    iget-object v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    if-eqz v1, :cond_95

    iget-object v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v1

    :goto_93
    move-wide v5, v1

    goto :goto_98

    :cond_95
    const-wide/16 v1, 0x0

    goto :goto_93

    :goto_98
    move-object/from16 v1, p1

    move v2, v14

    .line 257
    invoke-static/range {v1 .. v6}, Lmiuix/recyclerview/card/base/ViewOutlineHelper;->setItemCardOutline(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFZJ)V

    :cond_9e
    if-nez v11, :cond_a1

    return-void

    .line 263
    :cond_a1
    iget v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    .line 265
    iget-boolean v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-nez v2, :cond_159

    .line 266
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 267
    instance-of v3, v11, Landroidx/preference/PreferenceGroup;

    if-nez v3, :cond_c5

    .line 268
    invoke-virtual {v11}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v3

    instance-of v3, v3, Lmiuix/preference/RadioSetPreferenceCategory;

    if-nez v3, :cond_c5

    .line 269
    invoke-virtual {v11}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v3

    instance-of v3, v3, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-nez v3, :cond_c5

    instance-of v3, v11, Lmiuix/preference/RadioButtonPreference;

    if-eqz v3, :cond_c9

    :cond_c5
    instance-of v3, v11, Landroidx/preference/PreferenceScreen;

    if-eqz v3, :cond_f9

    :cond_c9
    if-eqz v2, :cond_21a

    .line 273
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 274
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 275
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    goto :goto_dd

    :cond_db
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    :goto_dd
    if-eqz v2, :cond_e2

    .line 276
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    goto :goto_e4

    :cond_e2
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    .line 277
    :goto_e4
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    add-int/2addr v6, v1

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    add-int/2addr v10, v1

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v3, v10, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_21a

    .line 281
    :cond_f9
    instance-of v3, v11, Landroidx/preference/PreferenceCategory;

    if-eqz v3, :cond_141

    if-eqz v2, :cond_21a

    .line 283
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_129

    .line 284
    move-object/from16 v16, v2

    check-cast v16, Landroid/graphics/drawable/LayerDrawable;

    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 287
    new-instance v3, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    invoke-direct {v3, v2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 288
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v4, v4, v8

    iget-object v4, v4, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    if-eqz v4, :cond_129

    .line 291
    invoke-virtual {v3, v4}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    .line 294
    :cond_129
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 295
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_21a

    :cond_141
    if-eqz v2, :cond_21a

    .line 302
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 303
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_21a

    .line 308
    :cond_159
    instance-of v2, v11, Landroidx/preference/PreferenceScreen;

    if-eqz v2, :cond_193

    .line 309
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_21a

    .line 311
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 312
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_175

    .line 313
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    goto :goto_177

    :cond_175
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    :goto_177
    if-eqz v2, :cond_17c

    .line 314
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    goto :goto_17e

    :cond_17c
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    .line 315
    :goto_17e
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    add-int/2addr v6, v1

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    add-int/2addr v10, v1

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v3, v10, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_21a

    .line 319
    :cond_193
    instance-of v2, v11, Landroidx/preference/PreferenceCategory;

    if-eqz v2, :cond_1b6

    .line 320
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_21a

    .line 322
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 323
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_21a

    .line 327
    :cond_1b6
    instance-of v2, v11, Lmiuix/preference/PreferenceStyle;

    if-eqz v2, :cond_1f8

    move-object v2, v11

    check-cast v2, Lmiuix/preference/PreferenceStyle;

    invoke-interface {v2}, Lmiuix/preference/PreferenceStyle;->enabledCardStyle()Z

    move-result v2

    if-nez v2, :cond_1f8

    .line 328
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_21a

    .line 330
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 331
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1db

    .line 332
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    goto :goto_1dd

    :cond_1db
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    :goto_1dd
    if-eqz v2, :cond_1e2

    .line 333
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    goto :goto_1e4

    :cond_1e2
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    .line 334
    :goto_1e4
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    add-int/2addr v6, v1

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    add-int/2addr v10, v1

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v3, v10, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_21a

    .line 339
    :cond_1f8
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_21a

    .line 341
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 344
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    if-nez v3, :cond_20f

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-eqz v4, :cond_21a

    .line 345
    :cond_20f
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v3, v5, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 354
    :cond_21a
    :goto_21a
    invoke-virtual {v11}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    instance-of v2, v2, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v2, :cond_25d

    instance-of v2, v11, Lmiuix/preference/RadioButtonPreference;

    if-nez v2, :cond_25d

    .line 356
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_25d

    .line 358
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 359
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_245

    .line 360
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_24e

    .line 362
    :cond_245
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 364
    :goto_24e
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 368
    :cond_25d
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lmiuix/preference/R$id;->arrow_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_274

    .line 370
    invoke-direct {v0, v11}, Lmiuix/preference/PreferenceGroupAdapter;->isArrowRightVisible(Landroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_26f

    const/4 v3, 0x0

    goto :goto_271

    :cond_26f
    const/16 v3, 0x8

    :goto_271
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 372
    :cond_274
    invoke-direct {v0, v11}, Lmiuix/preference/PreferenceGroupAdapter;->ableToUseFolmeAnim(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_39c

    .line 373
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 374
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v4, Lmiuix/preference/R$id;->miuix_preference_navigation:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_341

    .line 375
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2d4

    .line 376
    invoke-virtual {v11}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmiuix/preference/R$attr;->preferenceItemForeground:I

    invoke-static {v3, v4}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 377
    instance-of v4, v3, Lcom/miui/support/drawable/CardStateDrawable;

    if-eqz v4, :cond_2c4

    .line 379
    invoke-direct {v0, v14, v11}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedSetOutline(ILandroidx/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_2b2

    if-gt v2, v15, :cond_2b2

    .line 380
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 381
    move-object v2, v3

    check-cast v2, Lcom/miui/support/drawable/CardStateDrawable;

    iget v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    invoke-virtual {v2, v4, v14}, Lcom/miui/support/drawable/CardStateDrawable;->setRadiusMode(II)V

    const/4 v4, 0x0

    goto :goto_2b9

    .line 383
    :cond_2b2
    move-object v2, v3

    check-cast v2, Lcom/miui/support/drawable/CardStateDrawable;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/miui/support/drawable/CardStateDrawable;->setRadius(I)V

    .line 385
    :goto_2b9
    move-object v2, v3

    check-cast v2, Lcom/miui/support/drawable/CardStateDrawable;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/miui/support/drawable/CardStateDrawable;->setInset(IIII)V

    .line 386
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v4, v2, v11}, Lmiuix/preference/PreferenceGroupAdapter;->setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lcom/miui/support/drawable/CardStateDrawable;Landroidx/preference/Preference;)Z

    .line 388
    :cond_2c4
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-nez v12, :cond_39c

    .line 390
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnDownListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_39c

    .line 394
    :cond_2d4
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 395
    instance-of v4, v3, Lcom/miui/support/drawable/CardStateDrawable;

    if-eqz v4, :cond_2f2

    .line 396
    move-object v4, v3

    check-cast v4, Lcom/miui/support/drawable/CardStateDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/miui/support/drawable/CardStateDrawable;->setInset(IIII)V

    .line 397
    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v5, v4, v11}, Lmiuix/preference/PreferenceGroupAdapter;->setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lcom/miui/support/drawable/CardStateDrawable;Landroidx/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_2f2

    .line 398
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2f2
    if-gt v2, v15, :cond_39c

    .line 404
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 405
    instance-of v3, v2, Lcom/miui/support/drawable/CardStateDrawable;

    if-eqz v3, :cond_39c

    invoke-direct {v0, v14, v11}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedSetOutline(ILandroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_39c

    if-eq v13, v14, :cond_327

    .line 407
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lmiuix/preference/PreferenceGroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, v7, v14}, Lmiuix/preference/PreferenceGroupAdapter$$ExternalSyntheticLambda0;-><init>(Lmiuix/preference/PreferenceGroupAdapter;Landroidx/preference/PreferenceViewHolder;I)V

    .line 413
    iget-object v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    if-eqz v4, :cond_320

    iget-object v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v4

    goto :goto_322

    :cond_320
    const-wide/16 v4, 0x64

    .line 407
    :goto_322
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_39c

    .line 416
    :cond_327
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/miui/support/drawable/CardStateDrawable;

    iget v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    invoke-virtual {v3, v4, v14}, Lcom/miui/support/drawable/CardStateDrawable;->setRadiusMode(II)V

    .line 417
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-nez v12, :cond_39c

    .line 419
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnDownListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_39c

    :cond_341
    const/4 v5, 0x0

    .line 426
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_37e

    .line 428
    invoke-virtual {v11}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/preference/R$attr;->navigationPreferenceItemForeground:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 429
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_36f

    .line 430
    iget-boolean v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-eqz v3, :cond_35f

    move/from16 v19, v5

    goto :goto_361

    :cond_35f
    move/from16 v19, v1

    .line 431
    :goto_361
    move-object v15, v2

    check-cast v15, Landroid/graphics/drawable/LayerDrawable;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    move/from16 v17, v19

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 433
    :cond_36f
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-nez v12, :cond_39c

    .line 435
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnDownListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_39c

    .line 438
    :cond_37e
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_39c

    .line 439
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 440
    iget-boolean v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-eqz v3, :cond_38b

    move/from16 v19, v5

    goto :goto_38d

    :cond_38b
    move/from16 v19, v1

    :goto_38d
    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v16, 0x0

    move-object v15, v2

    move/from16 v17, v19

    .line 441
    invoke-virtual/range {v15 .. v20}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 442
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 450
    :cond_39c
    :goto_39c
    invoke-virtual {v0, v7, v8, v14, v11}, Lmiuix/preference/PreferenceGroupAdapter;->checkHighlight(Landroidx/preference/PreferenceViewHolder;IILandroidx/preference/Preference;)V

    .line 451
    instance-of v2, v11, Lmiuix/preference/PreferenceExtraPadding;

    if-eqz v2, :cond_3a8

    .line 452
    check-cast v11, Lmiuix/preference/PreferenceExtraPadding;

    invoke-interface {v11, v7, v1}, Lmiuix/preference/PreferenceExtraPadding;->onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V

    :cond_3a8
    if-eqz v9, :cond_3bb

    .line 457
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout;->getTemplate()Lmiuix/flexible/template/IHyperCellTemplate;

    move-result-object v1

    .line 458
    instance-of v2, v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    if-eqz v2, :cond_3bb

    .line 459
    check-cast v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    invoke-virtual {v1, v7}, Lmiuix/preference/flexible/AbstractBaseTemplate;->refreshLayoutIfVisibleChanged(Landroidx/preference/PreferenceViewHolder;)V

    :cond_3bb
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 58
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 967
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 968
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 p1, 0x0

    .line 969
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .registers 2

    .line 198
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    .line 199
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .registers 4

    .line 1023
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 1024
    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    .line 1025
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 1026
    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1028
    instance-of v1, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_31

    .line 1029
    instance-of v1, v0, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_29

    .line 1030
    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_38

    .line 1032
    :cond_29
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_38

    .line 1035
    :cond_31
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .registers 3

    .line 1008
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    .line 1010
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_23

    .line 1011
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_10

    goto :goto_23

    .line 1015
    :cond_10
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 1016
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1017
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/preference/PreferenceViewHolder;)V
    .registers 2

    .line 565
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 566
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 58
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->onViewDetachedFromWindow(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/preference/PreferenceViewHolder;)V
    .registers 2

    .line 559
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 560
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 58
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->onViewRecycled(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setClipPaint(Landroid/graphics/Paint;IIIII)V
    .registers 7

    .line 174
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    .line 175
    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    .line 176
    iput p3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    .line 177
    iput p4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    .line 178
    iput p5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    .line 179
    iput p6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    return-void
.end method

.method public setExtraHorizontalPadding(I)Z
    .registers 3

    .line 184
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    if-eq v0, p1, :cond_8

    .line 185
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public setItemSelectable(Z)V
    .registers 2

    .line 203
    iput-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemSelectable:Z

    return-void
.end method

.method public setSelectedPreference(Landroidx/preference/Preference;)V
    .registers 2

    .line 207
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mSelectedPreference:Landroidx/preference/Preference;

    .line 208
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public stopHighlight()V
    .registers 2

    .line 570
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    if-eqz v0, :cond_14

    .line 571
    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    .line 572
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-eqz v0, :cond_e

    .line 573
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    :cond_e
    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    const/4 v0, 0x0

    .line 576
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    :cond_14
    return-void
.end method

.method public stopHighlight(Landroid/view/View;)V
    .registers 5

    .line 644
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->isHighlightRequested()Z

    move-result v0

    if-eqz v0, :cond_47

    if-eqz p1, :cond_47

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_47

    .line 647
    :cond_17
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IBlinkStyle;->stopBlink()V

    .line 648
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_32

    .line 650
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    :cond_32
    const/4 p1, -0x1

    .line 652
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 653
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_47

    .line 654
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 655
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 656
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 657
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    :cond_47
    :goto_47
    return-void
.end method

.method public updateBlinkState(Z)V
    .registers 3

    if-eqz p1, :cond_1c

    .line 979
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1c

    .line 980
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 981
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 982
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 983
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 984
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-eqz p1, :cond_1c

    .line 985
    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    :cond_1c
    return-void
.end method
