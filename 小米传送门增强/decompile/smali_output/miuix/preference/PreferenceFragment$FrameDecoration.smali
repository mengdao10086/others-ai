.class Lmiuix/preference/PreferenceFragment$FrameDecoration;
.super Lmiuix/recyclerview/card/base/BaseDecoration;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameDecoration"
.end annotation


# instance fields
.field private isAnimatorRunning:Z

.field private mCardGroupBackground:Landroid/graphics/drawable/Drawable;

.field private mCardGroupMarginBottom:I

.field private final mCardGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckableFilterColorChecked:I

.field private mCheckableFilterColorNormal:I

.field private mGroupBgPaint:Landroid/graphics/Paint;

.field private mGroupUnCheckedBgColor:I

.field private mHeightPixels:I

.field private mIsLayoutRtl:Z

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

.field final synthetic this$0:Lmiuix/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V
    .registers 6

    .line 1059
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Lmiuix/recyclerview/card/base/BaseDecoration;-><init>()V

    const/4 p1, 0x0

    .line 1042
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    .line 1051
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    .line 1060
    iget-object p1, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1061
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateClipPaintColor()V

    .line 1062
    invoke-virtual {p0, p2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->initMaskPadding(Landroid/content/Context;)V

    .line 1063
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    .line 1064
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1065
    sget p1, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p2, p1}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupUnCheckedBgColor:I

    .line 1066
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1067
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$1;)V
    .registers 4

    .line 1035
    invoke-direct {p0, p1, p2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .registers 1

    .line 1035
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    return p0
.end method

.method static synthetic access$1200(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .registers 1

    .line 1035
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    return p0
.end method

.method static synthetic access$1300(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .registers 1

    .line 1035
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    return p0
.end method

.method static synthetic access$1400(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .registers 1

    .line 1035
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    return p0
.end method

.method private calculateGroupBottom(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V
    .registers 13

    .line 1320
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_60

    if-eqz p3, :cond_60

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1322
    invoke-direct/range {v1 .. v6}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    move-result v0

    int-to-float v0, v0

    .line 1323
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/preference/PreferenceGroupAdapter;->getAnimatorPreferenceGroups()Ljava/util/List;

    move-result-object v1

    .line 1325
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_50

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_3f

    .line 1326
    invoke-direct {p0, p1, p4, p5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->getNextPreference(Landroidx/recyclerview/widget/RecyclerView;II)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_34

    goto :goto_3f

    .line 1329
    :cond_34
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupMarginBottom:I

    int-to-float p2, p2

    sub-float/2addr v0, p2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_60

    .line 1327
    :cond_3f
    :goto_3f
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_60

    .line 1332
    :cond_50
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :cond_60
    :goto_60
    return-void
.end method

.method private calculateGroupRect(Landroidx/preference/Preference;IILandroidx/recyclerview/widget/RecyclerView;IILandroid/view/View;)Z
    .registers 23

    move-object v6, p0

    .line 1433
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    const/4 v7, 0x1

    if-eqz v0, :cond_1a

    invoke-static/range {p1 .. p1}, Lmiuix/preference/utils/PreferenceLayoutUtils;->isDynamicGroupItem(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1434
    move-object/from16 v0, p1

    check-cast v0, Lmiuix/preference/PreferencedynamicGroupController;

    invoke-interface {v0}, Lmiuix/preference/PreferencedynamicGroupController;->getGroupItemType()I

    move-result v0

    move v8, v0

    goto :goto_26

    .line 1437
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_24

    move v8, v7

    goto :goto_26

    :cond_24
    move/from16 v8, p2

    :goto_26
    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eq v8, v7, :cond_b0

    const/4 v11, 0x2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    if-ne v8, v11, :cond_3b

    .line 1444
    invoke-direct {p0, v13, v12, v14}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->checkNextIsAtomicPreference(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v0

    if-nez v0, :cond_3b

    goto/16 :goto_b6

    :cond_3b
    if-ne v8, v11, :cond_52

    .line 1461
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v7

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p6

    move/from16 v5, p3

    .line 1463
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupTop(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    :cond_52
    if-eq v8, v10, :cond_57

    const/4 v0, 0x3

    if-ne v8, v0, :cond_80

    .line 1467
    :cond_57
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v11

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 1468
    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_80

    .line 1469
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1473
    :cond_80
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-eqz v0, :cond_ae

    if-ne v8, v10, :cond_ae

    .line 1474
    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v10

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p3

    move/from16 v5, p5

    .line 1476
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupBottom(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    .line 1478
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_ab

    .line 1479
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1481
    :cond_ab
    iput-object v9, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    return v7

    :cond_ae
    const/4 v0, 0x0

    return v0

    :cond_b0
    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    .line 1445
    :goto_b6
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v7

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p6

    move/from16 v5, p3

    .line 1447
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupTop(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    if-ne v8, v7, :cond_d4

    .line 1450
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v10

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    :cond_d4
    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p3

    move/from16 v5, p5

    .line 1453
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupBottom(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    .line 1455
    iput-object v9, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    return v7
.end method

.method private calculateGroupTop(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V
    .registers 12

    .line 1340
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_9d

    .line 1341
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/preference/PreferenceGroupAdapter;->getAnimatorPreferenceGroups()Ljava/util/List;

    move-result-object v0

    .line 1342
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 1344
    invoke-direct {p0, p4}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->checkPreIsAtomicPreference(I)Z

    move-result p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    .line 1346
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    move-result p4

    int-to-float p4, p4

    .line 1348
    invoke-direct {p0, p1, p5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->getPrePreference(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_3a

    .line 1349
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_78

    :cond_3a
    const/high16 p1, -0x40800000    # -1.0f

    if-eqz p2, :cond_58

    cmpl-float p1, p4, p1

    if-nez p1, :cond_4d

    .line 1353
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_78

    .line 1355
    :cond_4d
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupMarginBottom:I

    int-to-float p2, p2

    add-float/2addr p4, p2

    iput p4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_78

    :cond_58
    cmpl-float p1, p4, p1

    if-nez p1, :cond_67

    .line 1359
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_78

    .line 1361
    :cond_67
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iput p4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_78

    .line 1367
    :cond_6e
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 1371
    :goto_78
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p2, p4

    cmpg-float p1, p1, p2

    if-gez p1, :cond_a7

    .line 1372
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_a7

    .line 1376
    :cond_9d
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    :cond_a7
    :goto_a7
    return-void
.end method

.method private calculateItemOffsets(Landroid/graphics/Rect;ILandroidx/preference/Preference;)V
    .registers 6

    .line 1532
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getPositionType(I)I

    move-result p2

    .line 1533
    invoke-virtual {p3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    const/4 v1, 0x1

    if-eqz v0, :cond_1a

    invoke-static {p3}, Lmiuix/preference/utils/PreferenceLayoutUtils;->isDynamicGroupItem(Landroidx/preference/Preference;)Z

    move-result p3

    if-nez p3, :cond_1a

    move p2, v1

    :cond_1a
    if-eq p2, v1, :cond_1f

    const/4 p3, 0x4

    if-ne p2, p3, :cond_26

    .line 1538
    :cond_1f
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupMarginBottom:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_26
    return-void
.end method

.method private checkEndRadioButtonPreferenceCategory(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .registers 6

    const/4 v0, 0x1

    add-int/2addr p2, v0

    const/4 v1, 0x0

    if-ge p2, p3, :cond_1d

    .line 1147
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1148
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 1149
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p1

    .line 1150
    instance-of p1, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz p1, :cond_1c

    return v1

    :cond_1c
    return v0

    :cond_1d
    return v1
.end method

.method private checkNextIsAtomicPreference(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .registers 4

    .line 1492
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->getNextPreference(Landroidx/recyclerview/widget/RecyclerView;II)Landroidx/preference/Preference;

    move-result-object p1

    instance-of p1, p1, Landroidx/preference/PreferenceGroup;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private checkPreIsAtomicPreference(I)Z
    .registers 3

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1d

    .line 1510
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 1511
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p1

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    .line 1512
    :goto_18
    instance-of p1, p1, Landroidx/preference/PreferenceGroup;

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1d
    const/4 p1, 0x0

    return p1
.end method

.method private findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I
    .registers 7

    const/4 v0, -0x1

    if-eqz p5, :cond_20

    if-eqz p2, :cond_1f

    .line 1123
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget p5, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mHeightPixels:I

    if-lt p2, p5, :cond_e

    goto :goto_1f

    :cond_e
    :goto_e
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_38

    .line 1127
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 1129
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    return p1

    :cond_1e
    goto :goto_e

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    add-int/lit8 p3, p3, -0x1

    :goto_22
    if-lt p3, p4, :cond_38

    .line 1135
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_35

    .line 1137
    invoke-virtual {p2}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    return p1

    :cond_35
    add-int/lit8 p3, p3, -0x1

    goto :goto_22

    :cond_38
    return v0
.end method

.method private getNextPreference(Landroidx/recyclerview/widget/RecyclerView;II)Landroidx/preference/Preference;
    .registers 5

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-ge p2, p3, :cond_1f

    .line 1497
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1498
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 1499
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p2

    if-eqz p2, :cond_1f

    .line 1500
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method private getPrePreference(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/preference/Preference;
    .registers 4

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    if-ltz p2, :cond_1f

    .line 1519
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1520
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 1521
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p2

    if-eqz p2, :cond_1f

    .line 1522
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    :cond_1f
    return-object v0
.end method

.method private isPreferenceCardStyleEnabled(Landroidx/preference/Preference;)Z
    .registers 4

    .line 1543
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1500(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1546
    :cond_a
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_f

    return v1

    .line 1549
    :cond_f
    instance-of v0, p1, Lmiuix/preference/PreferenceStyle;

    if-eqz v0, :cond_1a

    .line 1550
    check-cast p1, Lmiuix/preference/PreferenceStyle;

    invoke-interface {p1}, Lmiuix/preference/PreferenceStyle;->enabledCardStyle()Z

    move-result p1

    return p1

    :cond_1a
    const/4 p1, 0x1

    return p1
.end method

.method private setCardDrawable()V
    .registers 3

    .line 1105
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1107
    iget-boolean v1, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mEnableHyperMaterial:Z

    if-eqz v1, :cond_13

    .line 1108
    sget v1, Lmiuix/preference/R$attr;->preferenceHyperMaterialCardGroupBackground:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_19

    .line 1109
    :cond_13
    sget v1, Lmiuix/preference/R$attr;->preferenceCardGroupBackground:I

    invoke-static {v0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_19
    iput-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupBackground:Landroid/graphics/drawable/Drawable;

    .line 1110
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2a

    .line 1111
    iget-object v1, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2a
    return-void
.end method

.method private setItemOffsets(Landroid/graphics/Rect;Landroidx/preference/Preference;ILandroidx/recyclerview/widget/RecyclerView;)V
    .registers 7

    .line 1410
    invoke-static {p4}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 1411
    iget v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    :goto_b
    if-eqz p4, :cond_10

    .line 1412
    iget p4, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    goto :goto_12

    :cond_10
    iget p4, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    .line 1413
    :goto_12
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I
    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$1800(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1414
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1800(Lmiuix/preference/PreferenceFragment;)I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 1415
    invoke-direct {p0, p1, p3, p2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateItemOffsets(Landroid/graphics/Rect;ILandroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public calculateGroupRectAndDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const/4 v15, 0x1

    .line 1161
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1600(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-nez v0, :cond_2dd

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # invokes: Lmiuix/preference/PreferenceFragment;->isDisableAllCardStyle()Z
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1700(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto/16 :goto_2dd

    .line 1164
    :cond_19
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1165
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    .line 1166
    invoke-static/range {p2 .. p2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    if-eqz v0, :cond_44

    .line 1170
    iget v0, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    iget-object v1, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I
    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$1800(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1171
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    sub-int/2addr v1, v2

    iget-object v2, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I
    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$1800(Lmiuix/preference/PreferenceFragment;)I

    move-result v2

    :goto_40
    sub-int/2addr v1, v2

    move v6, v0

    move v5, v1

    goto :goto_5b

    .line 1173
    :cond_44
    iget v0, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    iget-object v1, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I
    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$1800(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1174
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    sub-int/2addr v1, v2

    iget-object v2, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mExtraHorizontalPadding:I
    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$1800(Lmiuix/preference/PreferenceFragment;)I

    move-result v2

    goto :goto_40

    :goto_5b
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_5d
    if-ge v4, v7, :cond_1fd

    .line 1178
    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1179
    invoke-virtual {v10, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 1180
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_7b

    :cond_73
    move/from16 v18, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    goto/16 :goto_f0

    .line 1184
    :cond_7b
    iget-object v13, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {v13}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v13

    invoke-virtual {v13, v1}, Lmiuix/preference/PreferenceGroupAdapter;->getPositionType(I)I

    move-result v13

    .line 1186
    iget-object v11, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v14, 0x0

    if-ge v3, v11, :cond_9d

    .line 1187
    iget-object v11, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-nez v11, :cond_ab

    .line 1188
    iget-object v11, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iput-object v11, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    goto :goto_ab

    .line 1191
    :cond_9d
    new-instance v11, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v12, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {v11, v12, v14}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;-><init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$1;)V

    iput-object v11, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 1192
    iget-object v12, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    :cond_ab
    :goto_ab
    instance-of v11, v0, Lmiuix/preference/RadioButtonPreference;

    if-nez v11, :cond_b7

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v12

    instance-of v12, v12, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v12, :cond_c4

    :cond_b7
    move-object v12, v0

    move/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v22, v7

    move v7, v6

    move/from16 v6, v22

    goto :goto_f7

    .line 1256
    :cond_c4
    invoke-direct {v8, v0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isPreferenceCardStyleEnabled(Landroidx/preference/Preference;)Z

    move-result v11

    if-eqz v11, :cond_73

    move-object v12, v0

    move-object/from16 v0, p0

    move/from16 v16, v1

    move-object v1, v12

    move-object/from16 v17, v2

    move v2, v13

    move/from16 v18, v3

    move v3, v4

    move v11, v4

    move-object/from16 v4, p2

    move v12, v5

    move v5, v7

    move v13, v6

    move/from16 v6, v16

    move v14, v7

    move-object/from16 v7, v17

    .line 1257
    invoke-direct/range {v0 .. v7}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupRect(Landroidx/preference/Preference;IILandroidx/recyclerview/widget/RecyclerView;IILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_f0

    add-int/lit8 v3, v18, 0x1

    move/from16 v21, v12

    move v7, v13

    move v6, v14

    :goto_ed
    move v13, v11

    goto/16 :goto_1f2

    :cond_f0
    :goto_f0
    move/from16 v21, v12

    move v7, v13

    move v6, v14

    move/from16 v3, v18

    goto :goto_ed

    .line 1197
    :goto_f7
    invoke-virtual {v12}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_108

    .line 1198
    invoke-virtual {v12}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioSetPreferenceCategory;

    move-object/from16 v19, v0

    goto :goto_10a

    :cond_108
    move-object/from16 v19, v14

    :goto_10a
    if-eq v13, v15, :cond_116

    const/4 v0, 0x2

    if-ne v13, v0, :cond_110

    goto :goto_116

    :cond_110
    move/from16 v20, v4

    move/from16 v21, v5

    :goto_114
    const/4 v0, 0x4

    goto :goto_13b

    .line 1203
    :cond_116
    :goto_116
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v15

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 1204
    iput-boolean v15, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->startRadioButtonCategory:Z

    .line 1205
    # setter for: Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButton:Z
    invoke-static {v0, v15}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$2002(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    .line 1207
    invoke-virtual {v12}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_110

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, v17

    move/from16 v20, v4

    move/from16 v4, v16

    move/from16 v21, v5

    move/from16 v5, v20

    .line 1209
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupTop(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    goto :goto_114

    :goto_13b
    if-eq v13, v0, :cond_140

    const/4 v0, 0x3

    if-ne v13, v0, :cond_16f

    .line 1215
    :cond_140
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    # setter for: Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButton:Z
    invoke-static {v0, v15}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$2002(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    .line 1216
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    const/4 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 1218
    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16f

    .line 1219
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_16f
    if-eqz v19, :cond_180

    .line 1222
    invoke-virtual/range {v19 .. v19}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    if-ne v0, v12, :cond_180

    .line 1223
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-eqz v0, :cond_180

    move/from16 v5, v20

    .line 1224
    iput v5, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->primeIndex:I

    goto :goto_182

    :cond_180
    move/from16 v5, v20

    .line 1228
    :goto_182
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-eqz v0, :cond_1c7

    .line 1229
    invoke-virtual {v12}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_1b9

    .line 1230
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    const/4 v1, 0x0

    # setter for: Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButtonChecked:Z
    invoke-static {v0, v1}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$2102(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    .line 1231
    invoke-virtual {v12}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 1232
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_19f
    if-ge v2, v1, :cond_1c7

    .line 1234
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    .line 1235
    instance-of v4, v3, Lmiuix/preference/RadioButtonPreference;

    if-eqz v4, :cond_1b7

    .line 1236
    check-cast v3, Lmiuix/preference/RadioButtonPreference;

    .line 1237
    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1b7

    .line 1238
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    # setter for: Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButtonChecked:Z
    invoke-static {v0, v15}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$2102(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    goto :goto_1c7

    :cond_1b7
    add-int/2addr v2, v15

    goto :goto_19f

    :cond_1b9
    if-eqz v11, :cond_1c7

    .line 1244
    move-object v0, v12

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 1245
    iget-object v1, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    # setter for: Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButtonChecked:Z
    invoke-static {v1, v0}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$2102(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    :cond_1c7
    :goto_1c7
    if-eq v13, v15, :cond_1d1

    const/4 v0, 0x4

    if-ne v13, v0, :cond_1cd

    goto :goto_1d1

    :cond_1cd
    move v13, v5

    move/from16 v3, v18

    goto :goto_1f2

    :cond_1d1
    :goto_1d1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object/from16 v3, v17

    move v4, v5

    move v13, v5

    move v5, v6

    .line 1250
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupBottom(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    .line 1251
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    invoke-direct {v8, v10, v13, v6}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->checkEndRadioButtonPreferenceCategory(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 1252
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    const/4 v2, 0x4

    or-int/2addr v1, v2

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 1253
    iput-object v14, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    add-int/lit8 v3, v18, 0x1

    :goto_1f2
    add-int/lit8 v4, v13, 0x1

    move/from16 v5, v21

    move/from16 v22, v7

    move v7, v6

    move/from16 v6, v22

    goto/16 :goto_5d

    :cond_1fd
    move/from16 v21, v5

    move v7, v6

    const/4 v1, 0x0

    .line 1267
    :goto_201
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2bd

    .line 1268
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 1269
    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    .line 1270
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 1273
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    int-to-float v5, v7

    move/from16 v6, v21

    int-to-float v11, v6

    .line 1274
    invoke-virtual {v4, v5, v3, v11, v2}, Landroid/graphics/RectF;->set(FFFF)V

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_22e

    const/4 v5, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_2b8

    .line 1279
    :cond_22e
    iget v2, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_237

    move v5, v15

    :goto_235
    const/4 v11, 0x4

    goto :goto_239

    :cond_237
    const/4 v5, 0x0

    goto :goto_235

    :goto_239
    and-int/2addr v2, v11

    if-eqz v2, :cond_23e

    move v2, v15

    goto :goto_23f

    :cond_23e
    const/4 v2, 0x0

    :goto_23f
    if-eqz v5, :cond_245

    .line 1281
    iget v5, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    int-to-float v5, v5

    goto :goto_246

    :cond_245
    move v5, v3

    :goto_246
    if-eqz v2, :cond_24b

    .line 1282
    iget v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    int-to-float v3, v2

    :cond_24b
    const/16 v2, 0x8

    .line 1283
    new-array v2, v2, [F

    const/4 v11, 0x0

    aput v5, v2, v11

    aput v5, v2, v15

    const/4 v11, 0x2

    aput v5, v2, v11

    const/4 v12, 0x3

    aput v5, v2, v12

    const/4 v5, 0x4

    aput v3, v2, v5

    const/4 v13, 0x5

    aput v3, v2, v13

    const/4 v13, 0x6

    aput v3, v2, v13

    const/4 v13, 0x7

    aput v3, v2, v13

    .line 1287
    iget-object v3, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1288
    iget-object v3, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v2, v13}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1290
    # getter for: Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButton:Z
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$2000(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)Z

    move-result v2

    if-eqz v2, :cond_298

    iget-object v2, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z
    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$1500(Lmiuix/preference/PreferenceFragment;)Z

    move-result v2

    if-nez v2, :cond_298

    .line 1291
    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    # getter for: Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->isRadioButtonChecked:Z
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$2100(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)Z

    move-result v0

    if-eqz v0, :cond_28b

    .line 1292
    iget v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCheckableFilterColorChecked:I

    goto :goto_28d

    :cond_28b
    iget v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCheckableFilterColorNormal:I

    .line 1291
    :goto_28d
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1293
    iget-object v0, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2b8

    .line 1294
    :cond_298
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2b8

    .line 1295
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2b3

    .line 1296
    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1297
    iget-object v0, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2b8

    .line 1299
    :cond_2b3
    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v8, v9, v4, v2, v0}, Lmiuix/recyclerview/card/base/BaseDecoration;->clipDrawableRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    :cond_2b8
    :goto_2b8
    add-int/2addr v1, v15

    move/from16 v21, v6

    goto/16 :goto_201

    .line 1305
    :cond_2bd
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_2c4

    return-void

    .line 1309
    :cond_2c4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 1310
    iput-boolean v15, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isAnimatorRunning:Z

    goto :goto_2dd

    .line 1312
    :cond_2cd
    iget-boolean v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isAnimatorRunning:Z

    if-eqz v0, :cond_2da

    .line 1313
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/preference/PreferenceGroupAdapter;->clearPreferenceGroups()V

    :cond_2da
    const/4 v0, 0x0

    .line 1315
    iput-boolean v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isAnimatorRunning:Z

    :cond_2dd
    :goto_2dd
    return-void
.end method

.method public enableHyperMaterial(Z)V
    .registers 2

    .line 1100
    iput-boolean p1, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mEnableHyperMaterial:Z

    .line 1101
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->setCardDrawable()V

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 1383
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z
    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$1600(Lmiuix/preference/PreferenceFragment;)Z

    move-result p4

    if-nez p4, :cond_5d

    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # invokes: Lmiuix/preference/PreferenceFragment;->isDisableAllCardStyle()Z
    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$1700(Lmiuix/preference/PreferenceFragment;)Z

    move-result p4

    if-eqz p4, :cond_11

    goto :goto_5d

    .line 1386
    :cond_11
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 1387
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;
    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p4

    if-nez p4, :cond_22

    return-void

    .line 1391
    :cond_22
    invoke-virtual {p4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-nez v0, :cond_5a

    instance-of v0, p4, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_36

    .line 1393
    invoke-virtual {p4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-nez v0, :cond_5a

    :cond_36
    instance-of v0, p4, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_3b

    goto :goto_5a

    .line 1398
    :cond_3b
    invoke-direct {p0, p4}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isPreferenceCardStyleEnabled(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1399
    invoke-direct {p0, p1, p4, p2, p3}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->setItemOffsets(Landroid/graphics/Rect;Landroidx/preference/Preference;ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 1402
    :cond_44
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    if-eqz p4, :cond_59

    .line 1403
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    add-int/lit8 p2, p2, 0x1

    if-ne p3, p2, :cond_59

    const/4 p2, 0x0

    .line 1404
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_59
    return-void

    .line 1395
    :cond_5a
    :goto_5a
    invoke-direct {p0, p1, p4, p2, p3}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->setItemOffsets(Landroid/graphics/Rect;Landroidx/preference/Preference;ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public initMaskPadding(Landroid/content/Context;)V
    .registers 4

    .line 1071
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    .line 1073
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    .line 1075
    sget v0, Lmiuix/preference/R$attr;->preferenceCheckableItemMaskPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    .line 1076
    sget v0, Lmiuix/preference/R$attr;->preferenceCheckableItemSetMaskPaddingEnd:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    .line 1077
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_theme_radius_common:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    .line 1079
    sget v0, Lmiuix/preference/R$attr;->preferenceCardGroupMarginStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    .line 1080
    sget v0, Lmiuix/preference/R$attr;->preferenceCardGroupMarginEnd:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    .line 1083
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterChecked:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCheckableFilterColorChecked:I

    .line 1084
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCheckableFilterColorNormal:I

    .line 1085
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lmiuix/preference/R$dimen;->miuix_preference_card_group_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupMarginBottom:I

    .line 1089
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    # getter for: Lmiuix/preference/PreferenceFragment;->mIsEnableCardStyle:Z
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment;->access$1500(Lmiuix/preference/PreferenceFragment;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 1090
    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->setCardDrawable()V

    :cond_6b
    return-void
.end method

.method public updateClipPaintColor()V
    .registers 4

    .line 1419
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1421
    iget-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiuix/preference/R$attr;->preferenceNormalCheckableMaskColor:I

    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3b

    .line 1423
    :cond_2a
    iget-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lmiuix/preference/R$attr;->preferenceCheckableMaskColor:I

    invoke-static {v1, v2}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_3b
    return-void
.end method

.method public updateContainerHeight(I)V
    .registers 2

    .line 1117
    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mHeightPixels:I

    return-void
.end method
