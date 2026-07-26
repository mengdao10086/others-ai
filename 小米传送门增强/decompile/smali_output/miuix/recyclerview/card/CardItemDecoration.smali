.class public Lmiuix/recyclerview/card/CardItemDecoration;
.super Lmiuix/recyclerview/card/base/BaseDecoration;
.source "CardItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/recyclerview/card/CardItemDecoration$CardArea;
    }
.end annotation


# instance fields
.field public firstVisiblePosition:I

.field public lastVisiblePosition:I

.field private final mCardAreas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/card/CardItemDecoration$CardArea;",
            ">;"
        }
    .end annotation
.end field

.field private mCardMarginBottom:I

.field private mCardMarginTop:I

.field private mCardPaddingBottom:I

.field private mCardPaddingEnd:I

.field private mCardPaddingStart:I

.field private mCardPaddingTop:I

.field private mGroupDrawable:Landroid/graphics/drawable/Drawable;

.field private mNoneCardMarginBottom:I

.field private mNoneCardMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Lmiuix/recyclerview/card/base/BaseDecoration;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingTop:I

    .line 29
    iput v0, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingBottom:I

    .line 30
    iput v0, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingStart:I

    .line 31
    iput v0, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingEnd:I

    .line 32
    iput v0, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginTop:I

    .line 33
    iput v0, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginBottom:I

    .line 34
    iput v0, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mNoneCardMarginTop:I

    .line 35
    iput v0, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mNoneCardMarginBottom:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardAreas:Ljava/util/ArrayList;

    .line 60
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardItemDecoration;->initCardPaddingAndMargin(Landroid/content/Context;)V

    return-void
.end method

.method private calculateDeltaY(Lmiuix/recyclerview/card/CardItemDecoration$CardArea;Landroidx/recyclerview/widget/RecyclerView;IIZLmiuix/recyclerview/card/CardGroupAdapter;)V
    .registers 10

    .line 114
    invoke-virtual {p6, p3}, Lmiuix/recyclerview/card/CardGroupAdapter;->getItemViewGroup(I)I

    move-result v0

    .line 115
    invoke-virtual {p6}, Lmiuix/recyclerview/card/CardGroupAdapter;->getRemovedGroupId()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    move v0, v2

    :goto_e
    if-nez v0, :cond_11

    return-void

    .line 119
    :cond_11
    invoke-virtual {p0, p2, p3, p4, p5}, Lmiuix/recyclerview/card/base/BaseDecoration;->findNearViewY(Landroidx/recyclerview/widget/RecyclerView;IIZ)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_57

    if-eqz p5, :cond_3b

    add-int/lit8 p5, p3, 0x1

    if-ge p5, p4, :cond_34

    .line 124
    invoke-virtual {p6, p3}, Lmiuix/recyclerview/card/CardGroupAdapter;->getItemViewGroupType(I)I

    move-result p3

    .line 125
    invoke-direct {p0, p3}, Lmiuix/recyclerview/card/CardItemDecoration;->marginRect(I)Landroid/graphics/Rect;

    move-result-object p3

    .line 126
    invoke-virtual {p0, p6, p5}, Lmiuix/recyclerview/card/CardItemDecoration;->offsetsRect(Lmiuix/recyclerview/card/CardGroupAdapter;I)Landroid/graphics/Rect;

    move-result-object p4

    .line 127
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    add-int v2, p3, p4

    .line 129
    :cond_34
    iget-object p1, p1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    int-to-float p3, v2

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_57

    :cond_3b
    add-int/lit8 p4, p3, -0x1

    if-ltz p4, :cond_51

    .line 133
    invoke-virtual {p6, p3}, Lmiuix/recyclerview/card/CardGroupAdapter;->getItemViewGroupType(I)I

    move-result p3

    .line 134
    invoke-direct {p0, p3}, Lmiuix/recyclerview/card/CardItemDecoration;->marginRect(I)Landroid/graphics/Rect;

    move-result-object p3

    .line 135
    invoke-virtual {p0, p6, p4}, Lmiuix/recyclerview/card/CardItemDecoration;->offsetsRect(Lmiuix/recyclerview/card/CardGroupAdapter;I)Landroid/graphics/Rect;

    move-result-object p4

    .line 136
    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    add-int v2, p3, p4

    .line 138
    :cond_51
    iget-object p1, p1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    int-to-float p3, v2

    add-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->top:F

    :cond_57
    :goto_57
    return-void
.end method

.method private calculateVisiblePositionLimit(II)V
    .registers 4

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x0

    .line 318
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->firstVisiblePosition:I

    add-int/lit8 p2, p2, 0x2

    .line 319
    iput p2, p0, Lmiuix/recyclerview/card/CardItemDecoration;->lastVisiblePosition:I

    return-void
.end method

.method private getGroupDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 101
    iget-boolean v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mEnableHyperMaterial:Z

    if-eqz v0, :cond_b

    .line 102
    sget v0, Lmiuix/recyclerview/card/R$attr;->cardHyperMaterialGroupBackground:I

    invoke-static {p1, v0}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_11

    .line 103
    :cond_b
    sget v0, Lmiuix/recyclerview/card/R$attr;->cardGroupBackground:I

    invoke-static {p1, v0}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_11
    iput-object p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mGroupDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private marginRect(I)Landroid/graphics/Rect;
    .registers 4

    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    .line 346
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginTop:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_2b

    :cond_d
    const/4 v1, 0x4

    if-ne p1, v1, :cond_15

    .line 348
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginBottom:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2b

    :cond_15
    const/4 v1, 0x1

    if-ne p1, v1, :cond_21

    .line 350
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginTop:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 351
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginBottom:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2b

    :cond_21
    if-nez p1, :cond_2b

    .line 353
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mNoneCardMarginTop:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 354
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mNoneCardMarginBottom:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2b
    :goto_2b
    return-object v0
.end method


# virtual methods
.method public calculateGroupRectAndDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 26
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

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v0, p4

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v13, 0x1

    .line 178
    instance-of v1, v0, Lmiuix/recyclerview/card/CardGroupAdapter;

    if-eqz v1, :cond_1ca

    .line 179
    iget-object v1, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 180
    move-object v14, v0

    check-cast v14, Lmiuix/recyclerview/card/CardGroupAdapter;

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v15

    if-eqz v15, :cond_1ca

    .line 184
    invoke-virtual {v7, v15}, Lmiuix/recyclerview/card/CardItemDecoration;->isSupportLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 186
    invoke-virtual {v7, v15}, Lmiuix/recyclerview/card/CardItemDecoration;->calculateVisiblePositionLimit(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 187
    iget v0, v7, Lmiuix/recyclerview/card/CardItemDecoration;->firstVisiblePosition:I

    const/4 v6, 0x0

    move v5, v0

    move-object v0, v6

    const/4 v4, 0x0

    :goto_2c
    iget v1, v7, Lmiuix/recyclerview/card/CardItemDecoration;->lastVisiblePosition:I

    if-gt v5, v1, :cond_14c

    .line 188
    invoke-virtual {v9, v5}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    if-nez v1, :cond_3d

    :cond_36
    move/from16 v19, v4

    move/from16 v20, v5

    move-object v12, v6

    goto/16 :goto_144

    .line 192
    :cond_3d
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 193
    invoke-virtual {v9, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 194
    invoke-virtual {v14, v1}, Lmiuix/recyclerview/card/CardGroupAdapter;->getItemViewGroupType(I)I

    move-result v2

    if-eqz v2, :cond_36

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v16

    if-nez v0, :cond_e5

    .line 200
    iget-object v0, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardAreas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_61

    .line 201
    iget-object v0, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardAreas:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;

    :goto_5f
    move-object v1, v0

    goto :goto_6c

    .line 203
    :cond_61
    new-instance v0, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;

    invoke-direct {v0, v6}, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;-><init>(Lmiuix/recyclerview/card/CardItemDecoration$1;)V

    .line 204
    iget-object v1, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardAreas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 206
    :goto_6c
    iget-object v0, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    iget v6, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingTop:I

    int-to-float v6, v6

    sub-float v6, v16, v6

    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 207
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v6, v16, v6

    iget v12, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingBottom:I

    int-to-float v12, v12

    add-float/2addr v6, v12

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 208
    iget-object v0, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7, v9}, Lmiuix/recyclerview/card/base/BaseDecoration;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_8e

    iget v6, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    :goto_8c
    int-to-float v6, v6

    goto :goto_91

    :cond_8e
    iget v6, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    goto :goto_8c

    :goto_91
    iput v6, v0, Landroid/graphics/RectF;->left:F

    .line 209
    iget-object v0, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    invoke-virtual {v7, v9}, Lmiuix/recyclerview/card/base/BaseDecoration;->isLayoutRtl(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_a4

    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget v12, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    :goto_a1
    sub-int/2addr v6, v12

    int-to-float v6, v6

    goto :goto_ab

    :cond_a4
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget v12, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    goto :goto_a1

    :goto_ab
    iput v6, v0, Landroid/graphics/RectF;->right:F

    if-ne v2, v10, :cond_b1

    move v0, v13

    goto :goto_b2

    :cond_b1
    const/4 v0, 0x0

    .line 211
    :goto_b2
    iput-boolean v0, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->drawTopRoundCorner:Z

    if-ne v2, v11, :cond_b8

    move v0, v13

    goto :goto_b9

    :cond_b8
    const/4 v0, 0x0

    .line 212
    :goto_b9
    iput-boolean v0, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->drawBottomRoundCorner:Z

    if-eq v2, v10, :cond_cb

    if-ne v2, v13, :cond_c0

    goto :goto_cb

    :cond_c0
    move-object/from16 v17, v1

    move v10, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    const/4 v12, 0x0

    goto :goto_e2

    :cond_cb
    :goto_cb
    const/4 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move v10, v2

    move-object/from16 v2, p2

    move-object/from16 v18, v3

    move v3, v5

    move/from16 v19, v4

    move v4, v6

    move/from16 v20, v5

    move v5, v12

    const/4 v12, 0x0

    move-object v6, v14

    .line 215
    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/card/CardItemDecoration;->calculateDeltaY(Lmiuix/recyclerview/card/CardItemDecoration$CardArea;Landroidx/recyclerview/widget/RecyclerView;IIZLmiuix/recyclerview/card/CardGroupAdapter;)V

    :goto_e2
    move-object/from16 v1, v17

    goto :goto_104

    :cond_e5
    move v10, v2

    move-object/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    move-object v12, v6

    .line 218
    iget-object v1, v0, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v16, v2

    iget v3, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingBottom:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    if-ne v10, v11, :cond_100

    move v1, v13

    goto :goto_101

    :cond_100
    const/4 v1, 0x0

    .line 220
    :goto_101
    iput-boolean v1, v0, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->drawBottomRoundCorner:Z

    move-object v1, v0

    :goto_104
    if-ne v10, v13, :cond_12e

    .line 224
    iput-boolean v13, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->drawTopRoundCorner:Z

    .line 225
    iput-boolean v13, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->drawBottomRoundCorner:Z

    .line 226
    iget-object v0, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v16, v16, v2

    iget v2, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingBottom:I

    int-to-float v2, v2

    add-float v2, v16, v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 228
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/card/CardItemDecoration;->calculateDeltaY(Lmiuix/recyclerview/card/CardItemDecoration$CardArea;Landroidx/recyclerview/widget/RecyclerView;IIZLmiuix/recyclerview/card/CardGroupAdapter;)V

    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    move-object v1, v12

    :cond_12e
    if-ne v10, v11, :cond_143

    .line 235
    invoke-virtual {v15}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/card/CardItemDecoration;->calculateDeltaY(Lmiuix/recyclerview/card/CardItemDecoration$CardArea;Landroidx/recyclerview/widget/RecyclerView;IIZLmiuix/recyclerview/card/CardGroupAdapter;)V

    add-int/lit8 v4, v19, 0x1

    move-object v0, v12

    goto :goto_146

    :cond_143
    move-object v0, v1

    :goto_144
    move/from16 v4, v19

    :goto_146
    add-int/lit8 v5, v20, 0x1

    move-object v6, v12

    const/4 v10, 0x2

    goto/16 :goto_2c

    :cond_14c
    const/4 v0, 0x0

    .line 246
    :goto_14d
    iget-object v1, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1ca

    .line 247
    iget-object v1, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mCardAreas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;

    .line 248
    iget-object v2, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    const/4 v2, 0x0

    cmpg-float v3, v3, v2

    if-gez v3, :cond_16c

    :cond_169
    const/4 v6, 0x0

    const/4 v9, 0x2

    goto :goto_1c8

    .line 251
    :cond_16c
    iget-object v3, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mGroupDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_169

    .line 252
    iget-boolean v4, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->drawTopRoundCorner:Z

    if-eqz v4, :cond_178

    iget v4, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    int-to-float v4, v4

    goto :goto_179

    :cond_178
    move v4, v2

    .line 253
    :goto_179
    iget-boolean v5, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->drawBottomRoundCorner:Z

    if-eqz v5, :cond_180

    iget v2, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    int-to-float v2, v2

    :cond_180
    const/16 v5, 0x8

    .line 254
    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v4, v5, v6

    aput v4, v5, v13

    const/4 v9, 0x2

    aput v4, v5, v9

    const/4 v10, 0x3

    aput v4, v5, v10

    aput v2, v5, v11

    const/4 v4, 0x5

    aput v2, v5, v4

    const/4 v4, 0x6

    aput v2, v5, v4

    const/4 v4, 0x7

    aput v2, v5, v4

    .line 257
    instance-of v2, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1b1

    .line 258
    iget-object v2, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 259
    iget-object v1, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v1, v5, v2}, Lmiuix/recyclerview/card/base/BaseDecoration;->drawCardRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_1c8

    .line 261
    :cond_1b1
    iget-object v2, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 262
    iget-object v2, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    iget-object v3, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v5, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 263
    iget-object v1, v1, Lmiuix/recyclerview/card/CardItemDecoration$CardArea;->rect:Landroid/graphics/RectF;

    iget-object v2, v7, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    iget-object v3, v7, Lmiuix/recyclerview/card/CardItemDecoration;->mGroupDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8, v1, v2, v3}, Lmiuix/recyclerview/card/base/BaseDecoration;->clipDrawableRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    :goto_1c8
    add-int/2addr v0, v13

    goto :goto_14d

    :cond_1ca
    return-void
.end method

.method protected calculateVisiblePositionLimit(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 4

    .line 290
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    .line 291
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 292
    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    if-ne v0, v1, :cond_62

    .line 294
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 295
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 294
    invoke-direct {p0, v0, p1}, Lmiuix/recyclerview/card/CardItemDecoration;->calculateVisiblePositionLimit(II)V

    goto :goto_62

    .line 297
    :cond_19
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_2b

    .line 298
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 299
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 300
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 299
    invoke-direct {p0, v0, p1}, Lmiuix/recyclerview/card/CardItemDecoration;->calculateVisiblePositionLimit(II)V

    goto :goto_62

    .line 301
    :cond_2b
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_4f

    .line 302
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 303
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    if-ne v0, v1, :cond_62

    const/4 v0, 0x0

    .line 305
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v1

    .line 306
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object p1

    .line 307
    array-length v0, v1

    if-lez v0, :cond_62

    array-length v0, p1

    if-lez v0, :cond_62

    const/4 v0, 0x0

    .line 308
    aget v1, v1, v0

    aget p1, p1, v0

    invoke-direct {p0, v1, p1}, Lmiuix/recyclerview/card/CardItemDecoration;->calculateVisiblePositionLimit(II)V

    goto :goto_62

    :cond_4f
    if-eqz p1, :cond_62

    .line 311
    invoke-virtual {p0}, Lmiuix/recyclerview/card/CardItemDecoration;->isLineLayout()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 312
    invoke-virtual {p0}, Lmiuix/recyclerview/card/CardItemDecoration;->findFirstVisibleItemPosition()I

    move-result p1

    invoke-virtual {p0}, Lmiuix/recyclerview/card/CardItemDecoration;->findLastVisibleItemPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/card/CardItemDecoration;->calculateVisiblePositionLimit(II)V

    :cond_62
    :goto_62
    return-void
.end method

.method public findFirstVisibleItemPosition()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 150
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    invoke-virtual {p0, p4}, Lmiuix/recyclerview/card/CardItemDecoration;->isSupportLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z

    move-result p4

    if-nez p4, :cond_b

    return-void

    .line 153
    :cond_b
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p4

    .line 154
    instance-of v0, p4, Lmiuix/recyclerview/card/CardGroupAdapter;

    if-eqz v0, :cond_4f

    .line 155
    check-cast p4, Lmiuix/recyclerview/card/CardGroupAdapter;

    .line 156
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 157
    invoke-virtual {p0, p4, p2}, Lmiuix/recyclerview/card/CardItemDecoration;->offsetsRect(Lmiuix/recyclerview/card/CardGroupAdapter;I)Landroid/graphics/Rect;

    move-result-object p4

    if-nez p2, :cond_24

    const/4 p2, 0x0

    .line 160
    iput p2, p4, Landroid/graphics/Rect;->top:I

    .line 161
    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    .line 163
    :cond_24
    invoke-virtual {p0, p3}, Lmiuix/recyclerview/card/base/BaseDecoration;->isLayoutRtl(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_39

    .line 164
    iget p2, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    iget p3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingStart:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 165
    iget p2, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    iget p3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingEnd:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_47

    .line 167
    :cond_39
    iget p2, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    iget p3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingStart:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 168
    iget p2, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    iget p3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingEnd:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 170
    :goto_47
    iget p2, p4, Landroid/graphics/Rect;->top:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 171
    iget p2, p4, Landroid/graphics/Rect;->bottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_4f
    return-void
.end method

.method public initCardPaddingAndMargin(Landroid/content/Context;)V
    .registers 13

    const/4 v0, 0x0

    .line 73
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 75
    sget v3, Lmiuix/recyclerview/card/R$attr;->recyclerViewCardStyle:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 76
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_16

    .line 79
    sget v1, Lmiuix/recyclerview/card/R$style;->RecyclerViewCardStyle_DayNight:I

    .line 81
    :cond_16
    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    sget v3, Lmiuix/recyclerview/card/R$attr;->cardGroupPaddingTop:I

    invoke-static {v2, v1, v3}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingTop:I

    .line 85
    sget v3, Lmiuix/recyclerview/card/R$attr;->cardGroupPaddingBottom:I

    invoke-static {v2, v1, v3}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingBottom:I

    .line 86
    sget v3, Lmiuix/recyclerview/card/R$attr;->cardGroupPaddingStart:I

    invoke-static {v2, v1, v3}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingStart:I

    .line 87
    sget v3, Lmiuix/recyclerview/card/R$attr;->cardGroupPaddingEnd:I

    invoke-static {v2, v1, v3}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingEnd:I

    .line 88
    sget v3, Lmiuix/recyclerview/card/R$attr;->cardGroupMarginStart:I

    invoke-static {v2, v1, v3}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    .line 89
    sget v3, Lmiuix/recyclerview/card/R$attr;->cardGroupMarginEnd:I

    invoke-static {v2, v1, v3}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    .line 90
    sget v3, Lmiuix/recyclerview/card/R$attr;->cardGroupMarginTop:I

    invoke-static {v2, v1, v3}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginTop:I

    .line 91
    sget v3, Lmiuix/recyclerview/card/R$attr;->cardGroupMarginBottom:I

    invoke-static {v2, v1, v3}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v3

    iput v3, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginBottom:I

    .line 92
    sget v3, Lmiuix/recyclerview/card/R$attr;->cardGroupRadius:I

    invoke-static {v2, v1, v3}, Lmiuix/recyclerview/card/LiteUtils;->getThemeDimens(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v5, v1

    int-to-float v6, v1

    int-to-float v7, v1

    int-to-float v8, v1

    int-to-float v9, v1

    int-to-float v1, v1

    const/16 v10, 0x8

    .line 93
    new-array v10, v10, [F

    aput v2, v10, v0

    aput v3, v10, v4

    const/4 v0, 0x2

    aput v5, v10, v0

    const/4 v0, 0x3

    aput v6, v10, v0

    const/4 v0, 0x4

    aput v7, v10, v0

    const/4 v0, 0x5

    aput v8, v10, v0

    const/4 v0, 0x6

    aput v9, v10, v0

    const/4 v0, 0x7

    aput v1, v10, v0

    iput-object v10, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mAllRadii:[F

    .line 95
    iget-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 97
    invoke-direct {p0, p1}, Lmiuix/recyclerview/card/CardItemDecoration;->getGroupDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mGroupDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public isLineLayout()Z
    .registers 2

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Z
    .registers 5

    .line 275
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 276
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    if-ne p1, v2, :cond_f

    move v1, v2

    :cond_f
    return v1

    .line 277
    :cond_10
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_1e

    .line 278
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p1

    if-ne p1, v2, :cond_1d

    move v1, v2

    :cond_1d
    return v1

    :cond_1e
    if-eqz p1, :cond_26

    .line 279
    invoke-virtual {p0}, Lmiuix/recyclerview/card/CardItemDecoration;->isLineLayout()Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_26
    instance-of p1, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_2b

    :cond_2a
    return v2

    :cond_2b
    return v1
.end method

.method public offsetsRect(Lmiuix/recyclerview/card/CardGroupAdapter;I)Landroid/graphics/Rect;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/recyclerview/card/CardGroupAdapter<",
            "*>;I)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 360
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-ltz p2, :cond_3d

    .line 362
    invoke-virtual {p1, p2}, Lmiuix/recyclerview/card/CardGroupAdapter;->getItemViewGroupType(I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_16

    .line 364
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginTop:I

    iget p2, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingTop:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3d

    :cond_16
    const/4 p2, 0x4

    if-ne p1, p2, :cond_21

    .line 366
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginBottom:I

    iget p2, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingBottom:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3d

    :cond_21
    const/4 p2, 0x1

    if-ne p1, p2, :cond_33

    .line 368
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginTop:I

    iget p2, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingTop:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 369
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardMarginBottom:I

    iget p2, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mCardPaddingBottom:I

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_3d

    :cond_33
    if-nez p1, :cond_3d

    .line 371
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mNoneCardMarginTop:I

    iput p1, v0, Landroid/graphics/Rect;->top:I

    .line 372
    iget p1, p0, Lmiuix/recyclerview/card/CardItemDecoration;->mNoneCardMarginBottom:I

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_3d
    :goto_3d
    return-object v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 4

    .line 145
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public setCardMarginEnd(I)V
    .registers 2

    .line 433
    iput p1, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    return-void
.end method

.method public setCardMarginStart(I)V
    .registers 2

    .line 425
    iput p1, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    return-void
.end method
