.class public abstract Lmiuix/recyclerview/card/base/BaseDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BaseDecoration.java"


# instance fields
.field public mAllRadii:[F

.field public mCardMarginEnd:I

.field public mCardMarginStart:I

.field public final mCardPath:Landroid/graphics/Path;

.field public mCardRadius:I

.field public mEnableHyperMaterial:Z

.field public final mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    .line 21
    iput v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    .line 24
    iput-boolean v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mEnableHyperMaterial:Z

    return-void
.end method


# virtual methods
.method public abstract calculateGroupRectAndDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
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
.end method

.method public clipDrawableRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V
    .registers 10

    const/16 v0, 0xff

    .line 50
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;I)I

    move-result v0

    .line 51
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 52
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p2, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, p2, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, p2, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    invoke-direct {v1, v2, v3, v4, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 54
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public drawCardRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V
    .registers 6

    .line 41
    iget-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 42
    iget-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, p3, p4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 43
    iget-object p2, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    iget-object p3, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public findNearViewY(Landroidx/recyclerview/widget/RecyclerView;IIZ)I
    .registers 5

    if-eqz p4, :cond_2b

    add-int/lit8 p4, p2, 0x1

    if-lt p4, p3, :cond_18

    .line 64
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 66
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_16
    add-int/2addr p2, p1

    return p2

    :cond_18
    :goto_18
    if-ge p4, p3, :cond_53

    .line 71
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_28

    .line 73
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    return p1

    :cond_28
    add-int/lit8 p4, p4, 0x1

    goto :goto_18

    :cond_2b
    add-int/lit8 p4, p2, -0x1

    if-gez p4, :cond_3c

    .line 79
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_3c

    .line 81
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1

    :cond_3c
    :goto_3c
    if-lt p4, p3, :cond_53

    .line 86
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_50

    .line 88
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    goto :goto_16

    :cond_50
    add-int/lit8 p4, p4, -0x1

    goto :goto_3c

    :cond_53
    const/4 p1, -0x1

    return p1
.end method

.method public isLayoutRtl(Landroid/view/View;)Z
    .registers 3

    .line 34
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 28
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 29
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 30
    invoke-virtual {p0, p1, p2, p3, v0}, Lmiuix/recyclerview/card/base/BaseDecoration;->calculateGroupRectAndDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
