.class public Lmiuix/recyclerview/card/CardDefaultItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "CardDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;,
        Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static sDefaultInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private final mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$STc52OXRbAulncwXGKr9bChga8c(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->lambda$runPendingAnimations$2(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aysMtX9i34bzfN1OdQytDrFS_Nk(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->lambda$runPendingAnimations$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vQG2Dso8rbntS9oOqm8ARqaf67o(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->lambda$runPendingAnimations$0(Ljava/util/ArrayList;)V

    return-void
.end method

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

    sput-object v0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 96
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    const-wide/16 v0, 0x12c

    .line 97
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setAddDuration(J)V

    .line 98
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 99
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 100
    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    return-void
.end method

.method static synthetic access$1000(Lmiuix/recyclerview/card/CardDefaultItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/recyclerview/card/CardDefaultItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lmiuix/recyclerview/card/CardDefaultItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/recyclerview/card/CardDefaultItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 20
    iget-object p0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 394
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_26

    .line 395
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;

    .line 396
    invoke-direct {p0, v1, p2}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 397
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$100(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_23

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$500(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez v2, :cond_23

    .line 398
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_26
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)V
    .registers 3

    .line 404
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$100(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 405
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$100(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 407
    :cond_d
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$500(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 408
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$500(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_1a
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 7

    .line 414
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$500(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_d

    .line 415
    # setter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1, v2}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$502(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_17

    .line 416
    :cond_d
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$100(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-ne v0, p2, :cond_2d

    .line 417
    # setter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1, v2}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$102(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move v3, v1

    .line 422
    :goto_17
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 423
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 424
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 425
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_2d
    return v3
.end method

.method private synthetic lambda$runPendingAnimations$0(Ljava/util/ArrayList;)V
    .registers 10

    .line 125
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;

    .line 126
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$000(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->fromX:I
    invoke-static {v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$1100(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)I

    move-result v4

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->fromY:I
    invoke-static {v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$1200(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)I

    move-result v5

    .line 127
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->toX:I
    invoke-static {v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$1300(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)I

    move-result v6

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->toY:I
    invoke-static {v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$1400(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)I

    move-result v7

    move-object v2, p0

    .line 126
    invoke-virtual/range {v2 .. v7}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_4

    .line 129
    :cond_29
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 130
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$runPendingAnimations$1(Ljava/util/ArrayList;)V
    .registers 4

    .line 146
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;

    .line 147
    invoke-virtual {p0, v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->animateChangeImpl(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)V

    goto :goto_4

    .line 149
    :cond_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 150
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$runPendingAnimations$2(Ljava/util/ArrayList;)V
    .registers 4

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 167
    invoke-virtual {p0, v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_4

    .line 169
    :cond_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 170
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 214
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 215
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 216
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 7

    .line 221
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 222
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v2, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 225
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lmiuix/recyclerview/card/CardDefaultItemAnimator$2;

    invoke-direct {v3, p0, p1, v0, v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$2;-><init>(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    .line 226
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 244
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 15

    if-ne p1, p2, :cond_d

    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move v3, p4

    move v4, p5

    move v5, p6

    .line 317
    invoke-virtual/range {v0 .. v5}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result p1

    return p1

    .line 319
    :cond_d
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getTranslationY()F

    move-result p3

    .line 320
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 321
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v1, p6, p4

    int-to-float v1, v1

    sub-float/2addr v1, p3

    float-to-int v1, v1

    .line 324
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 325
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p2, :cond_3d

    .line 328
    invoke-virtual {p0, p2}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 329
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 330
    iget-object p3, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 332
    :cond_3d
    iget-object p3, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v7, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method animateChangeImpl(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)V
    .registers 9

    .line 337
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$100(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v0, v1

    goto :goto_b

    .line 338
    :cond_9
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 339
    :goto_b
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$500(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 340
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_13
    const/4 v2, 0x0

    if-eqz v0, :cond_5c

    .line 342
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 343
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v4

    .line 342
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 344
    iget-object v4, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$100(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    sget-object v4, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 346
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->toX:I
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$600(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)I

    move-result v4

    int-to-float v4, v4

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->fromX:I
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$700(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 347
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->toY:I
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$800(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)I

    move-result v5

    int-to-float v5, v5

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->fromY:I
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$900(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 348
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    .line 349
    invoke-virtual {v3, v5}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 350
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lmiuix/recyclerview/card/CardDefaultItemAnimator$4;

    invoke-direct {v5, p0, p1, v3, v0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$4;-><init>(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5c
    if-eqz v1, :cond_92

    .line 369
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 370
    iget-object v3, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$500(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v3, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 372
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 373
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lmiuix/recyclerview/card/CardDefaultItemAnimator$5;

    invoke-direct {v3, p0, p1, v0, v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$5;-><init>(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_92
    return-void
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 14

    .line 250
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 251
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    add-int v4, p2, v1

    .line 252
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    add-int v5, p3, p2

    .line 253
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v4

    sub-int p3, p5, v5

    if-nez p2, :cond_22

    if-nez p3, :cond_22

    .line 257
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_22
    if-eqz p2, :cond_29

    neg-int p2, p2

    int-to-float p2, p2

    .line 261
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_29
    if-eqz p3, :cond_30

    neg-int p2, p3

    int-to-float p2, p2

    .line 264
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 266
    :cond_30
    iget-object p2, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p3, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .registers 13

    .line 271
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v3, p4, p2

    sub-int v5, p5, p3

    const/4 p2, 0x0

    if-eqz v3, :cond_10

    .line 275
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_10
    if-eqz v5, :cond_19

    .line 278
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 282
    :cond_19
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 283
    iget-object p2, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    sget-object p2, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 285
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance p3, Lmiuix/recyclerview/card/CardDefaultItemAnimator$3;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$3;-><init>(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 308
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 184
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 185
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6

    .line 190
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 191
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v2, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 194
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lmiuix/recyclerview/card/CardDefaultItemAnimator$1;

    invoke-direct {v3, p0, p1, v1, v0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$1;-><init>(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 209
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

    .line 676
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

    .line 630
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 631
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

    .line 545
    invoke-virtual {p0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 546
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    :cond_9
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6

    .line 431
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 433
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 434
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_2f

    .line 435
    iget-object v2, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;

    .line 436
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v2}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$000(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-ne v2, p1, :cond_2c

    .line 437
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->onRemoveFromPendingMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 438
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 439
    iget-object v2, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 442
    :cond_2f
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 443
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/high16 v1, 0x3f800000    # 1.0f

    .line 444
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 445
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 447
    :cond_44
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 448
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->onRemoveFromPendingAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 449
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 452
    :cond_52
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5a
    if-ltz v0, :cond_75

    .line 453
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 454
    invoke-direct {p0, v1, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 455
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 456
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_72
    add-int/lit8 v0, v0, -0x1

    goto :goto_5a

    .line 459
    :cond_75
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7d
    if-ltz v0, :cond_b6

    .line 460
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 461
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_8d
    if-ltz v2, :cond_b3

    .line 462
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;

    .line 463
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v3}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$000(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-ne v3, p1, :cond_b0

    .line 464
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->onRemoveFromMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 465
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 466
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 467
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b3

    .line 468
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b3

    :cond_b0
    add-int/lit8 v2, v2, -0x1

    goto :goto_8d

    :cond_b3
    :goto_b3
    add-int/lit8 v0, v0, -0x1

    goto :goto_7d

    .line 474
    :cond_b6
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_be
    if-ltz v0, :cond_e2

    .line 475
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 476
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 477
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->onRemoveFromAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 478
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 479
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 480
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_df
    add-int/lit8 v0, v0, -0x1

    goto :goto_be

    .line 487
    :cond_e2
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 493
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    invoke-virtual {p0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .registers 6

    .line 552
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_28

    .line 554
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;

    .line 555
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$000(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->onRemoveFromPendingMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 556
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$000(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 557
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 559
    :cond_28
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_30
    if-ltz v0, :cond_45

    .line 561
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 562
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 563
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 565
    :cond_45
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4d
    if-ltz v0, :cond_65

    .line 567
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 568
    invoke-virtual {p0, v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->onRemoveFromPendingAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 569
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 570
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_4d

    .line 572
    :cond_65
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6d
    if-ltz v0, :cond_7d

    .line 574
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6d

    .line 576
    :cond_7d
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 577
    invoke-virtual {p0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_89

    return-void

    .line 581
    :cond_89
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_91
    if-ltz v0, :cond_cb

    .line 583
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 584
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_a1
    if-ltz v2, :cond_c8

    .line 586
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;

    .line 587
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v3}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$000(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->onRemoveFromMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 588
    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v3}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$000(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 589
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 590
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c5

    .line 591
    iget-object v3, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_c5
    add-int/lit8 v2, v2, -0x1

    goto :goto_a1

    :cond_c8
    add-int/lit8 v0, v0, -0x1

    goto :goto_91

    .line 595
    :cond_cb
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d3
    if-ltz v0, :cond_105

    .line 597
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 598
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e3
    if-ltz v2, :cond_102

    .line 600
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 601
    invoke-virtual {p0, v3}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->onRemoveFromAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 602
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 603
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 604
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_ff

    .line 605
    iget-object v3, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_ff
    add-int/lit8 v2, v2, -0x1

    goto :goto_e3

    :cond_102
    add-int/lit8 v0, v0, -0x1

    goto :goto_d3

    .line 609
    :cond_105
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10d
    if-ltz v0, :cond_139

    .line 611
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 612
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_11d
    if-ltz v2, :cond_136

    .line 614
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->endChangeAnimationIfNecessary(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)V

    .line 615
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_133

    .line 616
    iget-object v3, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_133
    add-int/lit8 v2, v2, -0x1

    goto :goto_11d

    :cond_136
    add-int/lit8 v0, v0, -0x1

    goto :goto_10d

    .line 621
    :cond_139
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 622
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 623
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 624
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 626
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 522
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 523
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 525
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 526
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 527
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 528
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 530
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 531
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 532
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

    .line 636
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 637
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method onRemoveFromMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 641
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    .line 642
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 643
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method onRemoveFromPendingAddition(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 647
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 648
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method onRemoveFromPendingMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 652
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 654
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 513
    sget-object v0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_f

    .line 514
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    sput-object v0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    .line 516
    :cond_f
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->sDefaultInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 517
    invoke-virtual {p0, p1}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public runPendingAnimations()V
    .registers 11

    .line 105
    iget-object v0, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    .line 106
    iget-object v1, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    .line 107
    iget-object v2, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 108
    iget-object v3, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v0, :cond_21

    if-eqz v1, :cond_21

    if-eqz v3, :cond_21

    if-eqz v2, :cond_21

    return-void

    .line 114
    :cond_21
    iget-object v4, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 115
    invoke-virtual {p0, v5}, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_27

    .line 117
    :cond_37
    iget-object v4, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v4, 0x64

    const/4 v6, 0x0

    if-nez v1, :cond_6f

    .line 120
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 121
    iget-object v8, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    iget-object v8, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v8, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 124
    new-instance v8, Lmiuix/recyclerview/card/CardDefaultItemAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0, v7}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$$ExternalSyntheticLambda0;-><init>(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_6c

    .line 133
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v7}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;->access$000(Lmiuix/recyclerview/card/CardDefaultItemAnimator$MoveInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 134
    invoke-static {v7, v8, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_6f

    .line 136
    :cond_6c
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_6f
    :goto_6f
    if-nez v2, :cond_9f

    .line 141
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v8, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v8, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v8, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 145
    new-instance v8, Lmiuix/recyclerview/card/CardDefaultItemAnimator$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0, v7}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$$ExternalSyntheticLambda1;-><init>(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_9c

    .line 153
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;

    # getter for: Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-static {v7}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;->access$100(Lmiuix/recyclerview/card/CardDefaultItemAnimator$ChangeInfo;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 154
    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v7, v8, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_9f

    .line 156
    :cond_9c
    invoke-interface {v8}, Ljava/lang/Runnable;->run()V

    :cond_9f
    :goto_9f
    if-nez v3, :cond_dd

    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 162
    iget-object v7, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 163
    iget-object v7, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v7, p0, Lmiuix/recyclerview/card/CardDefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 165
    new-instance v7, Lmiuix/recyclerview/card/CardDefaultItemAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v7, p0, v3}, Lmiuix/recyclerview/card/CardDefaultItemAnimator$$ExternalSyntheticLambda2;-><init>(Lmiuix/recyclerview/card/CardDefaultItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_c5

    if-eqz v1, :cond_c5

    if-nez v2, :cond_c1

    goto :goto_c5

    .line 177
    :cond_c1
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto :goto_dd

    :cond_c5
    :goto_c5
    const-wide/16 v8, 0x0

    if-nez v0, :cond_ca

    goto :goto_cb

    :cond_ca
    move-wide v4, v8

    :goto_cb
    if-eqz v1, :cond_cf

    if-nez v2, :cond_d1

    :cond_cf
    const-wide/16 v8, 0x32

    :cond_d1
    add-long/2addr v4, v8

    .line 174
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 175
    invoke-static {v0, v7, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_dd
    :goto_dd
    return-void
.end method
