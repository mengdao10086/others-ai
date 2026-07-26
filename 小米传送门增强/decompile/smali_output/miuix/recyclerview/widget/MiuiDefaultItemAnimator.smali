.class public Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "MiuiDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;,
        Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;
    }
.end annotation


# static fields
.field static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 42
    new-instance v0, Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    invoke-direct {v0}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;-><init>()V

    const v1, 0x3f666666    # 0.9f

    .line 43
    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDamping(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setResponse(F)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/utils/EaseManager$SpringInterpolator;->setDuration(J)Lmiuix/animation/utils/EaseManager$SpringInterpolator;

    move-result-object v0

    sput-object v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 88
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    const-wide/16 v0, 0x12c

    .line 89
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 90
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 91
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 92
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 399
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_22

    .line 400
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    .line 401
    invoke-direct {p0, v1, p2}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 402
    iget-object v2, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    iget-object v2, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    .line 403
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_22
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;)V
    .registers 3

    .line 410
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_7

    .line 411
    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 413
    :cond_7
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_e

    .line 414
    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_e
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 7

    .line 419
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_a

    .line 420
    iput-object v2, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_11

    .line 421
    :cond_a
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_27

    .line 422
    iput-object v2, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move v3, v1

    .line 427
    :goto_11
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 428
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 429
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 430
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_27
    return v3
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 215
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 216
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 217
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 7

    .line 222
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 226
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$5;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 227
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 16

    if-ne p1, p2, :cond_d

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 319
    invoke-virtual/range {v0 .. v5}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 321
    :cond_d
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    .line 322
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    .line 323
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    .line 324
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v3, p5, p3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    sub-int v4, p6, p4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    float-to-int v4, v4

    .line 328
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 329
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 330
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_54

    .line 333
    invoke-virtual {p0, p2}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 334
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v3

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 335
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v1, v4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 336
    iget-object v0, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 338
    :cond_54
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v8, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method animateChangeImpl(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;)V
    .registers 9

    .line 343
    iget-object v0, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_9

    .line 344
    :cond_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 345
    :goto_9
    iget-object v2, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_f

    .line 346
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_f
    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    .line 348
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 349
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v4

    .line 348
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 350
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v5, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v4, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 352
    iget v4, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->toX:I

    int-to-float v4, v4

    iget v5, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->fromX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 353
    iget v5, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->toY:I

    int-to-float v5, v5

    iget v6, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->fromY:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 354
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 355
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 356
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;

    invoke-direct {v5, p0, p1, v3, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$7;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4e
    if-eqz v1, :cond_82

    .line 375
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 376
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 378
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 379
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$8;

    invoke-direct {v3, p0, p1, v0, v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$8;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 394
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_82
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 14

    .line 251
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int v4, p2, v1

    .line 253
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v5, p3, p2

    .line 254
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v4

    sub-int p3, p5, v5

    if-nez p2, :cond_22

    if-nez p3, :cond_22

    .line 258
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_22
    if-eqz p2, :cond_29

    neg-int p2, p2

    int-to-float p2, p2

    .line 262
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_29
    if-eqz p3, :cond_30

    neg-int p2, p3

    int-to-float p2, p2

    .line 265
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 267
    :cond_30
    iget-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .registers 13

    .line 272
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v3, p4, p2

    sub-int v5, p5, p3

    const/4 p2, 0x0

    if-eqz v3, :cond_10

    .line 276
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_10
    if-eqz v5, :cond_19

    .line 279
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 284
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 285
    iget-object p2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    sget-object p2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 287
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$6;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 185
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 186
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6

    .line 191
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 195
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;

    invoke-direct {v3, p0, p1, v1, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$4;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 678
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result p1

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

.method cancelAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 632
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 633
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method dispatchFinishedWhenDone()V
    .registers 2

    .line 547
    invoke-virtual {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 548
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    :cond_9
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6

    .line 436
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 440
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_2d

    .line 441
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 442
    iget-object v2, v2, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v2, p1, :cond_2a

    .line 443
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->onRemoveFromPendingMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 444
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 445
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 448
    :cond_2d
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 449
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    const/high16 v1, 0x3f800000    # 1.0f

    .line 450
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 451
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 453
    :cond_42
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 454
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->onRemoveFromPendingAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 455
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 458
    :cond_50
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_58
    if-ltz v0, :cond_73

    .line 459
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 460
    invoke-direct {p0, v1, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 461
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 462
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_70
    add-int/lit8 v0, v0, -0x1

    goto :goto_58

    .line 465
    :cond_73
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7b
    if-ltz v0, :cond_b2

    .line 466
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_8b
    if-ltz v2, :cond_af

    .line 468
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 469
    iget-object v3, v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_ac

    .line 470
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->onRemoveFromMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 471
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 472
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 473
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 474
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_af

    :cond_ac
    add-int/lit8 v2, v2, -0x1

    goto :goto_8b

    :cond_af
    :goto_af
    add-int/lit8 v0, v0, -0x1

    goto :goto_7b

    .line 480
    :cond_b2
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_ba
    if-ltz v0, :cond_de

    .line 481
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 482
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 483
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->onRemoveFromAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 484
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 485
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_db

    .line 486
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_db
    add-int/lit8 v0, v0, -0x1

    goto :goto_ba

    .line 493
    :cond_de
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 511
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .registers 6

    .line 554
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_24

    .line 556
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 557
    iget-object v2, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v2}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->onRemoveFromPendingMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 558
    iget-object v1, v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 559
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 561
    :cond_24
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2c
    if-ltz v0, :cond_41

    .line 563
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 564
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 565
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    .line 567
    :cond_41
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_49
    if-ltz v0, :cond_61

    .line 569
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 570
    invoke-virtual {p0, v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->onRemoveFromPendingAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 571
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 572
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_49

    .line 574
    :cond_61
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_69
    if-ltz v0, :cond_79

    .line 576
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_69

    .line 578
    :cond_79
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 579
    invoke-virtual {p0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_85

    return-void

    .line 583
    :cond_85
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8d
    if-ltz v0, :cond_c3

    .line 585
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 586
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9d
    if-ltz v2, :cond_c0

    .line 588
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    .line 589
    iget-object v4, v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v4}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->onRemoveFromMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 590
    iget-object v3, v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 591
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 592
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_bd

    .line 593
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_bd
    add-int/lit8 v2, v2, -0x1

    goto :goto_9d

    :cond_c0
    add-int/lit8 v0, v0, -0x1

    goto :goto_8d

    .line 597
    :cond_c3
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_cb
    if-ltz v0, :cond_fd

    .line 599
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 600
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_db
    if-ltz v2, :cond_fa

    .line 602
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 603
    invoke-virtual {p0, v3}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->onRemoveFromAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 604
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 605
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 606
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 607
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_f7
    add-int/lit8 v2, v2, -0x1

    goto :goto_db

    :cond_fa
    add-int/lit8 v0, v0, -0x1

    goto :goto_cb

    .line 611
    :cond_fd
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_105
    if-ltz v0, :cond_131

    .line 613
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 614
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_115
    if-ltz v2, :cond_12e

    .line 616
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;)V

    .line 617
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12b

    .line 618
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_12b
    add-int/lit8 v2, v2, -0x1

    goto :goto_115

    :cond_12e
    add-int/lit8 v0, v0, -0x1

    goto :goto_105

    .line 623
    :cond_131
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 624
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 625
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 626
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 628
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 528
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 530
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 531
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 532
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 533
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 534
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 535
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 536
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 537
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    :goto_5c
    return v0
.end method

.method onRemoveFromAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 638
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 639
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method onRemoveFromMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 643
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    .line 644
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 645
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method onRemoveFromPendingAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 649
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 650
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method onRemoveFromPendingMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 654
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    .line 655
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 656
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 519
    sget-object v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_f

    .line 520
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 522
    :cond_f
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 523
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public runPendingAnimations()V
    .registers 11

    .line 97
    iget-object v0, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 98
    iget-object v1, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 99
    iget-object v2, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 100
    iget-object v3, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    if-eqz v3, :cond_21

    if-eqz v2, :cond_21

    return-void

    .line 106
    :cond_21
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 107
    invoke-virtual {p0, v5}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_27

    .line 109
    :cond_37
    iget-object v4, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v4, 0x64

    const/4 v6, 0x0

    if-nez v1, :cond_6d

    .line 112
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 116
    new-instance v8, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;

    invoke-direct {v8, p0, v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$1;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_6a

    .line 128
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;

    iget-object v7, v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 129
    invoke-static {v7, v8, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_6d

    .line 131
    :cond_6a
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_6d
    :goto_6d
    if-nez v2, :cond_9b

    .line 136
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v8, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 140
    new-instance v8, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;

    invoke-direct {v8, p0, v7}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$2;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_98

    .line 151
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;

    iget-object v7, v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 152
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v7, v8, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_9b

    .line 154
    :cond_98
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_9b
    :goto_9b
    if-nez v3, :cond_d9

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v7, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v7, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v7, p0, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v7, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$3;

    invoke-direct {v7, p0, v3}, Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator$3;-><init>(Lmiuix/recyclerview/widget/MiuiDefaultItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_c1

    if-eqz v1, :cond_c1

    if-nez v2, :cond_bd

    goto :goto_c1

    .line 178
    :cond_bd
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_d9

    :cond_c1
    :goto_c1
    const-wide/16 v8, 0x0

    if-nez v0, :cond_c6

    goto :goto_c7

    :cond_c6
    move-wide v4, v8

    :goto_c7
    if-eqz v1, :cond_cb

    if-nez v2, :cond_cd

    :cond_cb
    const-wide/16 v8, 0x32

    :cond_cd
    add-long/2addr v4, v8

    .line 175
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 176
    invoke-static {v0, v7, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_d9
    :goto_d9
    return-void
.end method
