.class public Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "TaplusSegmentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;,
        Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mListener:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mScrolling:Z

.field private mSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedCount:I

.field private mSelectors:Landroid/util/SparseBooleanArray;

.field private mSliding:Z

.field private mStatusSelected:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmClickListener(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;)Landroid/view/View$OnClickListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSegments(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectors(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;)Landroid/util/SparseBooleanArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcheckIfCanSearch(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;Z)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->checkIfCanSearch(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mselectedWithAnimator(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;Landroid/view/View;Z)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->selectedWithAnimator(Landroid/view/View;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    .line 46
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectedCount:I

    .line 48
    iput v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mStatusSelected:I

    .line 57
    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mListener:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;

    return-void
.end method

.method private checkIfCanSearch(Z)V
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_9

    .line 181
    iget p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectedCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectedCount:I

    goto :goto_e

    .line 183
    :cond_9
    iget p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectedCount:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectedCount:I

    .line 185
    :goto_e
    iget-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mListener:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;

    iget v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectedCount:I

    const/4 v2, 0x0

    if-lez v1, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    invoke-interface {p1, v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;->onSearchChanged(Z)V

    .line 186
    iget-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mListener:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;

    iget v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectedCount:I

    invoke-virtual {p0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getItemCount()I

    move-result v3

    if-ne v1, v3, :cond_26

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    invoke-interface {p1, v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;->onSelectedStateChanged(Z)V

    return-void
.end method

.method private isMatchCharAndNum(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 218
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 219
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 220
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private resetState()V
    .registers 3

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mStatusSelected:I

    .line 80
    iput v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectedCount:I

    .line 81
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mListener:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;

    if-eqz v1, :cond_11

    .line 82
    invoke-interface {v1, v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;->onSelectedStateChanged(Z)V

    .line 83
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mListener:Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;

    invoke-interface {v1, v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$OnSearchableChangedListener;->onSearchChanged(Z)V

    :cond_11
    return-void
.end method

.method private selectedWithAnimator(Landroid/view/View;Z)V
    .registers 8

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const v1, 0x7f0605b1

    const v2, 0x7f0605b2

    const v3, 0x7f0605b3

    .line 153
    const-string v4, "Taplus.SegmentAdapter"

    if-eqz p2, :cond_54

    .line 154
    const-string p2, "selectedWithAnimator: selected"

    invoke-static {v4, p2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v3, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 155
    invoke-static {p2, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->animator:Landroid/animation/ValueAnimator;

    .line 157
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_94

    .line 159
    :cond_54
    const-string p2, "selectedWithAnimator: not selected"

    invoke-static {v4, p2}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance p2, Landroid/animation/ArgbEvaluator;

    invoke-direct {p2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 160
    invoke-static {p2, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->animator:Landroid/animation/ValueAnimator;

    .line 162
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    :goto_94
    iget-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    iget-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->animator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$2;

    invoke-direct {p2, p0, v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$2;-><init>(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 171
    iget-object p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public doCancelAll()V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 265
    :goto_2
    iget-object v2, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 266
    iget-object v2, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 267
    iget-object v2, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 268
    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->checkIfCanSearch(Z)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    const/4 v0, -0x1

    .line 271
    iput v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mStatusSelected:I

    .line 272
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public doSelect(I)V
    .registers 4

    if-ltz p1, :cond_20

    .line 276
    invoke-virtual {p0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getItemCount()I

    move-result v0

    if-le p1, v0, :cond_9

    goto :goto_20

    .line 280
    :cond_9
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    .line 281
    iput v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mStatusSelected:I

    .line 282
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 283
    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->checkIfCanSearch(Z)V

    .line 284
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void

    .line 277
    :cond_20
    :goto_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSelect: invalid position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Taplus.SegmentAdapter"

    invoke-static {v0, p1}, Lcom/miui/contentextension/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doSelectAll()V
    .registers 4

    const/4 v0, 0x0

    .line 254
    :goto_1
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1d

    .line 255
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 256
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 257
    invoke-direct {p0, v2}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->checkIfCanSearch(Z)V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 260
    :cond_1d
    iput v2, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mStatusSelected:I

    .line 261
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public doSelectRangeChanged(II)V
    .registers 5

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doSelectRangeChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Taplus.SegmentAdapter"

    invoke-static {v1, v0}, Lcom/miui/contentextension/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_42

    .line 289
    invoke-virtual {p0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getItemCount()I

    move-result v0

    if-lt p2, v0, :cond_27

    goto :goto_42

    :cond_27
    const/4 v0, 0x0

    .line 292
    iput v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mStatusSelected:I

    :goto_2a
    if-gt p1, p2, :cond_3f

    .line 294
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 295
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 296
    invoke-direct {p0, v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->checkIfCanSearch(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    .line 298
    :cond_3f
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_42
    :goto_42
    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedCount()I
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 245
    :goto_2
    iget-object v2, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 246
    iget-object v2, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    return v1
.end method

.method public getSelectedWords()Ljava/lang/String;
    .registers 9

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {p0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 198
    :goto_d
    iget-object v6, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_57

    .line 199
    iget-object v6, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 200
    iget-object v6, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/contentextension/data/recognition/WordBean;

    invoke-virtual {v6}, Lcom/miui/contentextension/data/recognition/WordBean;->getWord()Ljava/lang/String;

    move-result-object v6

    .line 201
    const-string v7, "^[a-zA-Z0-9]"

    invoke-direct {p0, v7, v6}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->isMatchCharAndNum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v3, :cond_33

    if-nez v7, :cond_35

    :cond_33
    if-eqz v5, :cond_3a

    .line 203
    :cond_35
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_3a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string v3, "[a-zA-Z0-9]$"

    invoke-direct {p0, v3, v6}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->isMatchCharAndNum(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 207
    iget-object v5, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/contentextension/data/recognition/WordBean;

    invoke-virtual {v5}, Lcom/miui/contentextension/data/recognition/WordBean;->isNeedBlank()Z

    move-result v5

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v1, :cond_54

    goto :goto_57

    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 214
    :cond_57
    :goto_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedWordsWithSplit()Ljava/lang/String;
    .registers 2

    .line 224
    const-string v0, "||"

    invoke-virtual {p0, v0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedWordsWithSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedWordsWithSplit(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-virtual {p0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 231
    :goto_b
    iget-object v4, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_35

    .line 232
    iget-object v4, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 233
    iget-object v4, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/contentextension/data/recognition/WordBean;

    invoke-virtual {v4}, Lcom/miui/contentextension/data/recognition/WordBean;->getWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_2f

    goto :goto_35

    .line 237
    :cond_2f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 240
    :cond_35
    :goto_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSegmentsEmpty()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 36
    check-cast p1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->onBindViewHolder(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;I)V
    .registers 8

    .line 112
    iget-object v0, p1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 113
    invoke-virtual {p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->bindViewHolder(I)V

    .line 114
    iget v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mStatusSelected:I

    const v2, 0x7f0605b3

    const v3, 0x7f0605b1

    const-string v4, "Taplus.SegmentAdapter"

    if-eqz v1, :cond_57

    .line 115
    iget-boolean v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mScrolling:Z

    if-nez v1, :cond_31

    iget-boolean v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSliding:Z

    if-eqz v1, :cond_20

    goto :goto_31

    .line 121
    :cond_20
    const-string v0, "onBindViewHolder: animate"

    invoke-static {v4, v0}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->selectedWithAnimator(Landroid/view/View;Z)V

    goto :goto_7c

    .line 116
    :cond_31
    :goto_31
    const-string v1, "onBindViewHolder: scroll or slide "

    invoke-static {v4, v1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 118
    iget-object v1, p1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_53

    .line 119
    :cond_49
    iget-object v1, p1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 117
    :goto_53
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_7c

    .line 125
    :cond_57
    const-string v1, "onBindViewHolder: normal state "

    invoke-static {v4, v1}, Lcom/miui/contentextension/utils/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 127
    iget-object v1, p1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_79

    .line 128
    :cond_6f
    iget-object v1, p1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 126
    :goto_79
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 130
    :goto_7c
    iget-object v0, p1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    new-instance v1, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$1;-><init>(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;ILcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;
    .registers 5

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0035

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 104
    new-instance p2, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;-><init>(Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;Landroid/widget/TextView;)V

    .line 105
    iget-object p1, p2, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    iget-object p1, p2, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter$SegmentViewHolder;->mSegmentText:Landroid/widget/TextView;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/miui/contentextension/utils/FolmeUtil;->doScaleOnTouch([Landroid/view/View;)V

    return-object p2
.end method

.method public setScrollState(Z)V
    .registers 2

    .line 88
    iput-boolean p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mScrolling:Z

    return-void
.end method

.method public setSlideState(Z)V
    .registers 2

    .line 92
    iput-boolean p1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSliding:Z

    return-void
.end method

.method public updateSegments(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/contentextension/data/recognition/WordBean;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    iget-object v0, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    move v0, p1

    .line 71
    :goto_c
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 72
    iget-object v1, p0, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->mSelectors:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 74
    :cond_1c
    invoke-direct {p0}, Lcom/miui/contentextension/text/adapter/TaplusSegmentAdapter;->resetState()V

    .line 75
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
